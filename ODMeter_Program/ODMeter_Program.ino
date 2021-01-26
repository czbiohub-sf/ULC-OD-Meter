#include <LiquidCrystal.h>
#include <math.h>

//Arduino pins
const int output_photodiode = A0;
const int button_input = 3;
const int lcd_contrast = 5;
const int rs = 6, rw = 7, en = 8, d4 = 9, d5 = 10, d6 = 11, d7 = 12;

//Program variables
int new_read = 0;
int sum_of_reads = 0;
int sample_counts = 0;
int thresh_counts = 20;
int value = 0;
volatile unsigned long t_now = 0;
volatile unsigned long t_last = 0;


volatile int dark_counts = 0;
volatile int ref_counts = 0;
volatile bool ref_captured = false;
int t_debounce_ms = 200;
int t_expire_ms = 1000;
volatile bool reset_to_raw = false;
volatile int state = 0;

//Initialize LCD and function prototype
LiquidCrystal lcd(rs, rw, en, d4, d5, d6, d7);

void setup() {
  //Pin setup
  analogReference(EXTERNAL);
  analogRead(output_photodiode);
  analogWrite(lcd_contrast, 40);
  pinMode(button_input, INPUT_PULLUP);

  //Set welcome screen
  lcd.begin(16, 2);
  lcd.print("  CZ Biohub");
  lcd.setCursor(0,1);
  lcd.print("Turbidity Meter");
  delay(2000);

  //Show raw intensity at startup
  state = 0;
  lcd.clear();
  lcd.print("Raw intensity:");
  attachInterrupt(digitalPinToInterrupt(button_input), askDarkISR, LOW);

}

void loop() {
  //Add reads until thresh_counts counts have been summed
  new_read = analogRead(output_photodiode);
  sum_of_reads = sum_of_reads + new_read;
  sample_counts = sample_counts + 1;
//  Serial.println(String(state));
  
  switch (state) {
    case 0: // raw reading
       // average the readings once the sample count threshhold is met
      if (sample_counts == thresh_counts) {
        value = (sum_of_reads / thresh_counts);
        printNumber(value);
        sample_counts = 0;
        sum_of_reads = 0;
      }
      break;

    case 1: // asking for dark ref
      Serial.println("asking for dark ref");
      lcd.clear();
      lcd.print("Insert dark ref");
      lcd.setCursor(0, 1);
      lcd.print("press REF button");
      delay(2000);
    
      lcd.clear();
      lcd.print("press REF button");
      lcd.setCursor(0,1);
      lcd.print("when ready.");
      delay(1500);
      
      lcd.clear();
      lcd.print("Dark intensity:");

      attachInterrupt(digitalPinToInterrupt(button_input), captureDarkISR, LOW);
        
      state = 0;
      break;

    case 2: //asking for media ref
      Serial.println("asking for media ref");
      lcd.clear();
      lcd.print("Insert media ref");
      lcd.setCursor(0, 1);
      lcd.print("press REF button");
      delay(2000);
    
      lcd.clear();
      lcd.print("press REF button");
      lcd.setCursor(0,1);
      lcd.print("when ready.");
      delay(1500);
    
      lcd.clear();
      lcd.print("Media intensity:");

      attachInterrupt(digitalPinToInterrupt(button_input), captureMediakISR, LOW);
      
      state = 0;
      break;
          
    
    case 3: // OD reading
      if (sample_counts == thresh_counts) {
        value = (sum_of_reads / thresh_counts);
        printNumber(log10(float(value-dark_counts) / float(ref_counts-dark_counts)));
        sample_counts = 0;
        sum_of_reads = 0;
      }
      
      break;
  }
  delay(15);
}

//Print number to LCD
void printNumber(float number){
  lcd.setCursor(6, 1);
  lcd.print("    ");
  lcd.setCursor(6, 1);
  lcd.print(number);
//  Serial.println(number);
}

//Button callbacks
void askDarkISR(void){
  t_now = millis();
  if ((t_now - t_last) > t_debounce_ms){
    Serial.println("askDarkISR TRIGGERED");
    detachInterrupt(digitalPinToInterrupt(button_input));
    state = 1;
  }
  t_last = t_now;
}

void captureDarkISR(void){
  t_now = millis();
  if ((t_now - t_last) > t_debounce_ms){
    Serial.println("captureDarkISR TRIGGERED");
    detachInterrupt(digitalPinToInterrupt(button_input));
    dark_counts = value;
    state = 2;
  }
  t_last = t_now;
}

void captureMediakISR(void){
  t_now = millis();
  if ((t_now - t_last) > t_debounce_ms){
    Serial.println("captureMediakISR TRIGGERED");
    detachInterrupt(digitalPinToInterrupt(button_input));
    ref_counts = value;
    lcd.clear();
    lcd.print("Measured OD:");
    attachInterrupt(digitalPinToInterrupt(button_input), multiISR, LOW);
    state = 3;
  }
  t_last = t_now;
}

void multiISR(void){ //multi function ISR
  t_now = millis();
  
  if ((t_now - t_last) > t_debounce_ms){
    Serial.println("resetMediaISR TRIGGERED");
    detachInterrupt(digitalPinToInterrupt(button_input));
    state = 2;
  } 
  t_last = t_now;
}
