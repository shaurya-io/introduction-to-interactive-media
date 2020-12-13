import java.io.IOException;
import processing.serial.*; 
import java.awt.event.KeyEvent; 
int r;
int dist;
String rawinput="";
String noObject;
int commaLocator;
Serial p; 

void setup() {
  
 fullScreen();
 smooth();
 p = new Serial(this,Serial.list()[3], 9600); 
 p.bufferUntil('.'); 

}
void lines() {
  pushMatrix();
  strokeWeight(8);
  stroke(0,255,0);
  translate(800,1000); 
  line(0,0,800*cos(radians(r)),-800*sin(radians(r))); 
  popMatrix();
}

void pickupObstacle() {
  pushMatrix();
  translate(800,1000); 
  strokeWeight(12);
  stroke(255,0,0);

  if(dist<30){
  line(dist*25*cos(radians(r)),-dist*25*sin(radians(r)),800*cos(radians(r)),-800*sin(radians(r)));}
  popMatrix();
}

void arcs() {
  pushMatrix();
  translate(800,1000);
  noFill();
  strokeWeight(2);
  stroke(0,255,0);

  arc(0,0,2000,2000,PI,TWO_PI);
  arc(0,0,1600,1600,PI,TWO_PI);
  arc(0,0,1200,1200,PI,TWO_PI);
  arc(0,0,800,800,PI,TWO_PI);
  arc(0,0,400,400,PI,TWO_PI);

  line(-800,0,800,0);
  line(0,0,-800*cos(radians(30)),-800*sin(radians(30)));
  line(0,0,-800*cos(radians(60)),-800*sin(radians(60)));
  line(0,0,-800*cos(radians(90)),-800*sin(radians(90)));
  line(0,0,-800*cos(radians(120)),-800*sin(radians(120)));
  line(0,0,-800*cos(radians(150)),-800*sin(radians(150)));
  line(-800*cos(radians(30)),0,800,0);
  popMatrix();
}

void serialEvent (Serial p) { 

  rawinput = p.readStringUntil('.');
  rawinput = rawinput.substring(0,rawinput.length()-1);
  
  commaLocator = rawinput.indexOf(","); 
  r= int(rawinput.substring(0, commaLocator)); 
  dist= int(rawinput.substring(commaLocator+1, rawinput.length())); 
} 

void draw() {

  noStroke();
  fill(0); 
  rect(0, 0, width, 1010); 
  
  fill(0,255,0); 

  arcs(); 
  pickupObstacle();
  lines();
}
