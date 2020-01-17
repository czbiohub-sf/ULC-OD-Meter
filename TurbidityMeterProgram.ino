#include <LiquidCrystal.h>
#include <math.h>

//Arduino pins
const int output_photodiode = A0;
const int button_input = 4
const int lcd_contrast = 5;
const int rs = 6, rw = 7, en = 8, d4 = 9, d5 = 10, d6 = 11, d7 = 12;

//Program variables
int new_read = 0;
int sum_of_reads = 0;
int sample_counts = 0;
int thresh_counts = 20;
volatile int ref_counts = 0;
volatile bool ref_captured = false;

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
  attachInterrupt(digitalPinToInterrupt(button_input), referenceISR, RISING);

  //Set welcome screen
  lcd.begin(16, 2);
  lcd.print("CZ Biohub");
  lcd.setCursor(0,1);
  lcd.print("Turbidity Meter");
  delay(2000);

  lcd.clear();
  lcd.print("Insert blank and");
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
}

void loop() {
  //Add reads until 20 counts have been summed
  new_read = analogRead(output_photodiode);
  sum_of_reads = sum_of_reads + new_read;
  sample_counts = sample_counts + 1;

  //Print to display when threhs_counts reached and reset vars
  if (sample_counts == thresh_counts && ref_captured == false)
  {
    printNumber(sum_of_reads / thresh_counts);
    sample_counts = 0;
    sum_of_reads = 0;
  }
  else if (sample_counts == thresh_counts && ref_captured == true)
  {
    printNumber(log10( ref_captured / (sum_of_reads/thresh_counts) ));
    sample_counts = 0;
    sum_of_reads = 0;
  }

  delay(15);
}

//Print number to LCD
void printNumber(int number){
  lcd.setCursor(6, 1);
  lcd.print("    ");
  lcd.setCursor(6, 1);
  lcd.print(number);
}

//Button callback
void referenceISR(void){
  ref_counts = analogRead(output_photodiode);
  ref_captured = true;
}
