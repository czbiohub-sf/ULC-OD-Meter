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
volatile bool lcd_changed_dark = false;
bool lcd_changed_ref = false;
volatile int dark_counts = 0;
volatile bool dark_captured = false;
volatile int ref_counts = 0;
volatile bool ref_captured = false;
volatile unsigned long t_last = 0;
int t_debounce_ms = 100;
int t_expire_ms = 1000;
volatile bool reset_to_raw = false;

//Initialize LCD and function prototype
LiquidCrystal lcd(rs, rw, en, d4, d5, d6, d7);
void printCounts(int);
void referenceISR(void);

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

  //Reset display
  lcd.clear();
  lcd.print("Raw intensity:");

  attachInterrupt(digitalPinToInterrupt(button_input), darkISR, LOW);

}

void loop() {
  //Add reads until 20 counts have been summed
  new_read = analogRead(output_photodiode);
  sum_of_reads = sum_of_reads + new_read;
  sample_counts = sample_counts + 1;

  if (dark_captured == true && lcd_changed_dark == false)
  {
    detachInterrupt(digitalPinToInterrupt(button_input));
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
    lcd.print("Raw intensity:");
  
    lcd_changed_dark=true;
    attachInterrupt(digitalPinToInterrupt(button_input), referenceISR, LOW);
  }

  if (ref_captured == true && lcd_changed_ref == false)
  {
    lcd_changed_ref = true;
    lcd.clear();
    lcd.print("Measured OD:");
  }

  //Print to display when threhs_counts reached and reset vars
  if (sample_counts == thresh_counts && ref_captured == false)
  {
    value = (sum_of_reads / thresh_counts) - dark_counts;
    printNumber(value);
    sample_counts = 0;
    sum_of_reads = 0;
  }
  else if (sample_counts == thresh_counts && ref_captured == true)
  {
    printNumber(log10( float(value) / float((sum_of_reads/thresh_counts) - dark_counts) ));
    sample_counts = 0;
    sum_of_reads = 0;
  }

  delay(15);
}

//Print number to LCD
void printNumber(float number){
  lcd.setCursor(6, 1);
  lcd.print("    ");
  lcd.setCursor(6, 1);
  lcd.print(number);
  Serial.println(number);
}

//Button callbacks
void darkISR(void){
  dark_counts = value;
  dark_captured = true;
}

void referenceISR(void){
  unsigned long t_now = millis();
  if (!reset_to_raw){
    ref_counts = value;
    ref_captured = true;
    t_last = t_now;
    reset_to_raw = true;
  }
  else{
    if ((t_now - t_last) > t_debounce_ms && (t_now - t_last) < t_expire_ms){
      ref_captured = false;
      lcd_changed_dark = false;
      reset_to_raw = false;
    }
  }
}
