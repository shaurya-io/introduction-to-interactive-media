/*This code was written by Shaurya Singh, NYUAD Class of 2023 as part of the Introduction to Interactive Media Course 
 * at NYU Abu Dhabi in Fall 2020.
 */


int sensorValue;
int modeValue; 
const int ldrPin = A2;
const int ledOnePin = 13;
const int ledTwoPin = 12;
const int pmPin = A5;

void setup() {
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  pinMode(ledOnePin, OUTPUT);
  pinMode(ledTwoPin, OUTPUT);
  pinMode(ldrPin, INPUT);
  pinMode(pmPin, INPUT);
}

void lightChecker(){ //this function determines when the LEDs will be ON/OFF
  if (modeValue == 1){
    digitalWrite(ledOnePin, LOW); //mode 1 refers to ALWAYS OFF 
    digitalWrite(ledTwoPin, LOW);}
  if (modeValue == 2){
    int sensorValue = analogRead(ldrPin);
    if (sensorValue <= 300){ 
      digitalWrite(ledOnePin, HIGH); // mode 2 refers to ON based on darkness 
      digitalWrite(ledTwoPin, HIGH);}
    else{
      digitalWrite(ledOnePin, LOW);
      digitalWrite(ledTwoPin, LOW);}
      }
   if (modeValue ==3){
      digitalWrite(ledOnePin, HIGH); //mode 3 refers to ALWAYS ON
      digitalWrite(ledTwoPin, HIGH);}
}


void mode(){ //the mode function converts the analog values from the potentiometer into 3 modes - 1, 2, and 3
  int k = analogRead(A5);
  if (k<=330){
    modeValue = 1;}
  else if (k>330) if (k<=660){
    modeValue = 2;}
  else if (k>660){
    modeValue = 3;}
}


// the loop routine runs over and over again forever:
void loop() {
  mode();
  lightChecker();  
  delay(1);        // delay in between reads for stability
}
