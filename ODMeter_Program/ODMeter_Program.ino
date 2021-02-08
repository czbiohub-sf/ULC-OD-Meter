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
int t_debounce_ms = 100;
volatile bool reset_to_raw = false;
volatile int state = 0;
volatile int stored_next_state = 0;

int b;

//Initialize LCD and function prototype
LiquidCrystal lcd(rs, rw, en, d4, d5, d6, d7);

void setup() {
  //Pin setup
  Serial.begin(9600);
  Serial.println("Starting");
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
  Serial.println(state);
  switch (state) {
    case 0: // raw reading
       // average the readings once the sample count threshold is met
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

      if (digitalRead(button_input) == LOW) {
        // Check if the button is being pressed at the moment --
        // if it is, then attach a temporary interrupt that waits for the button
        // to change state to high. When it does, it attaches the correct ISR,
        // based on the stored_next_state variable.
        attachInterrupt(digitalPinToInterrupt(button_input), tempISR, HIGH);
        stored_next_state = 1;
      } else {
        attachInterrupt(digitalPinToInterrupt(button_input), captureDarkISR, LOW);
      }
        
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
      
      if (digitalRead(button_input) == LOW) {
         // Check if the button is being pressed at the moment --
        // if it is, then attach a temporary interrupt that waits for the button
        // to change state to high. When it does, it attaches the correct ISR,
        // based on the stored_next_state variable.
        attachInterrupt(digitalPinToInterrupt(button_input), tempISR, HIGH);
        stored_next_state = 2;
      } else {
        attachInterrupt(digitalPinToInterrupt(button_input), captureMediaISR, LOW);
      }
      state = 0;
      break;
          
    
    case 3: // OD reading
      b = checkButton();
      if (b == 2) {
        attachInterrupt(digitalPinToInterrupt(button_input), askDarkISR, LOW);
        state=1;
        
      }
      if (sample_counts == thresh_counts) {
      value = (sum_of_reads / thresh_counts);
//      lcd.clear();
//      lcd.print(value);
      printNumber(-1.0 * log10(float(value-dark_counts) / float(ref_counts-dark_counts))); // OD Meter reading
      sample_counts = 0;
      sum_of_reads = 0;
      }
      
      break;
     
  }
  delay(10);
}

//Print number to LCD
void printNumber(float number){
  lcd.setCursor(6, 1);
  lcd.print("    ");
  lcd.setCursor(6, 1);
  lcd.print(number,3);
}

//Button callbacks
void tempISR(void) {
  t_now = millis();
  if ((t_now - t_last) > t_debounce_ms) {
//    Serial.println("tempISR TRIGGERED");
    detachInterrupt(digitalPinToInterrupt(button_input));
    if (stored_next_state == 1) {
      attachInterrupt(digitalPinToInterrupt(button_input), captureDarkISR, LOW);
    } else {
      // it equals 2
      attachInterrupt(digitalPinToInterrupt(button_input), captureMediaISR, LOW);
    }
  }
}


void askDarkISR(void){
  t_now = millis();
  if ((t_now - t_last) > t_debounce_ms){
//    Serial.println("askDarkISR TRIGGERED");
    detachInterrupt(digitalPinToInterrupt(button_input));
    state = 1;
  }
  t_last = t_now;
}

void captureDarkISR(void){
  t_now = millis();
  if ((t_now - t_last) > t_debounce_ms){
//    Serial.println("captureDarkISR TRIGGERED");
    detachInterrupt(digitalPinToInterrupt(button_input));
    dark_counts = value;
    state = 2;
  }
  t_last = t_now;
}

void askMediaISR(void){
  t_now = millis();
  if ((t_now - t_last) > t_debounce_ms){
//    Serial.println("askMediaISR TRIGGERED");
    detachInterrupt(digitalPinToInterrupt(button_input));
    state = 2;
  }
  t_last = t_now;
}

void captureMediaISR(void){
  t_now = millis();
  if ((t_now - t_last) > t_debounce_ms){
//    Serial.println("captureMediaISR TRIGGERED");
    detachInterrupt(digitalPinToInterrupt(button_input));
    ref_counts = value;
    lcd.clear();
    lcd.print("Measured OD:");
//    attachInterrupt(digitalPinToInterrupt(button_input), multiISR, LOW);
    state = 3;
  }
  t_last = t_now;
}
//=================================================
//  MULTI-CLICK:  One Button, Multiple Events

// Button timing variables
int debounce = 100;          // ms debounce period to prevent flickering when pressing or releasing the button
int DCgap = 280;            // max ms between clicks for a double click event
int holdTime = 1000;        // ms hold period: how long to wait for press+hold event

// Button variables
boolean buttonVal = HIGH;   // value read from button
boolean buttonLast = HIGH;  // buffered value of the button's previous state
boolean DCwaiting = false;  // whether we're waiting for a double click (down)
boolean DConUp = false;     // whether to register a double click on next release, or whether to wait and click
boolean singleOK = true;    // whether it's OK to do a single click
long downTime = -1;         // time the button was pressed down
long upTime = -1;           // time the button was released
boolean ignoreUp = false;   // whether to ignore the button release because the click+hold was triggered
boolean waitForUp = false;        // when held, whether to wait for the up event
boolean holdEventPast = false;    // whether or not the hold event happened already

int checkButton() {   
   int event = 0;
   buttonVal = digitalRead(button_input);
   // Button pressed down
   if (buttonVal == LOW && buttonLast == HIGH && (millis() - upTime) > debounce)
   {
       downTime = millis();
       ignoreUp = false;
       waitForUp = false;
       singleOK = true;
       holdEventPast = false;
       if ((millis()-upTime) < DCgap && DConUp == false && DCwaiting == true)  DConUp = true;
       else  DConUp = false;
       DCwaiting = false;
   }
   // Button released
   else if (buttonVal == HIGH && buttonLast == LOW && (millis() - downTime) > debounce)
   {       
       if (not ignoreUp)
       {
           upTime = millis();
           if (DConUp == false) DCwaiting = true;
       }
   }
   // Test for normal click event: DCgap expired
   if ( buttonVal == HIGH && (millis()-upTime) >= DCgap && DCwaiting == true && DConUp == false && singleOK == true && event != 2)
   {
       event = 1;
       DCwaiting = false;
   }
   // Test for hold
   if (buttonVal == LOW && (millis() - downTime) >= holdTime) {
       // Trigger "normal" hold
       if (not holdEventPast)
       {
           event = 2;
           waitForUp = true;
           ignoreUp = true;
           DConUp = false;
           DCwaiting = false;
           holdEventPast = true;
       }
 
   }
   buttonLast = buttonVal;
   return event;
} // End of checkButton()
