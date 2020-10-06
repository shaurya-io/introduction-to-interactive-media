/* This project was made as a part of the Introduction to Interactive Media course at NYU Abu Dhabi,
taken in Fall 2020. 

Class baumgartner refers to the falling balls; Class felix refers to the blackhole simulation;

Felix Baumgartner is an Australian daredevil who holds the world record for the highest skydive ever, from 128,000 feet.
His record inspired this project.

Shaurya Singh

*/

String data[]; //temporary array to store values from main csv file for the baumgartner class 
String bdata[];//temporary array to store values from main csv file for the felix class 
String globalm[];
void setup(){
  size(2400,1000);
  
String multiplier[] = loadStrings("gravityMultiplier.csv");
globalm=multiplier;} //ensuring values from multiplier are accessible globally 
  

float initialy = (250/3)+10;//initial point where the balls spawn
float scaleFactor = 500;// this is to simulate a 100m fall on Earth in 4 seconds 
float HoleSlowDown = 10000; //slowdown for blackhole simulation so it's visible 


class baumgartner{
  
  float xpos, ypos, index, count, g, r;
  baumgartner(float csvIndex){ //all relevant values for objects of this class can be calculated using the planet's rank in the .csv
  xpos = (csvIndex+1.5)*200;
  ypos = initialy;
  index = csvIndex;
  count = 1;
  g = 9.806/scaleFactor;
  r = 0;}//not used - i wanted to create a volume representation but the sun is >100 larger than the Earth, rendering all scales useless

  void Circle(){
    data = split(globalm[int(index)],','); //store values from csv file 
    ypos+=count*(Float.parseFloat(data[1])*g); //gravity simulation 
    count+=1;
    if (ypos>=((250/3)+10) && ypos<=(2750/3)){
      fill(255);
      circle(xpos, ypos, 10);}
    if(ypos>((2750/3)-10)){ // by including the commented line 49 in the executable code ,  
        ypos=((2750/3)-10);//you can enable an oscillating gravitational field for artistic purposes
        count=1;}
        //g=-g;}
    if(ypos<((250/3)+10)){
      ypos=((250/3)+10);
      count=1;
      g=-g;}}
} 
float bscaleFactor = scaleFactor*HoleSlowDown;

class felix{ //class felix is an almost replica of class baumgartner, and refers to the blackhole object.
  
  float xpos, ypos, index, count, g;
  felix(float csvIndex){
  xpos = 200;
  ypos = 70;
  index = csvIndex;
  count = 1;
  g = 9.806/bscaleFactor;}

  void Circle(){
    bdata = split(globalm[int(index)],',');
    xpos+=count*(Float.parseFloat(bdata[1])*g);
    count+=1;
    if (xpos>=200 && xpos<=2200){
      fill(255);
      circle(xpos, ypos, 10);}
    if(xpos>2200){
        xpos=2200;
        count=1;} //similar to class baumgartner, include commented line 77 in the executable code to enable an oscillatory gravity sim
        //g=-g;}
    if(xpos<200){
      xpos=200;
      count=1;
      g=-g;}}
}      
  
  
baumgartner sun = new baumgartner(0);
baumgartner mercury = new baumgartner(1);
baumgartner venus = new baumgartner(2);
baumgartner earth = new baumgartner(3);
baumgartner moon = new baumgartner(4);
baumgartner mars = new baumgartner(5);  //creating all our objects 
baumgartner jupiter = new baumgartner(6);
baumgartner saturn = new baumgartner(7);
baumgartner uranus = new baumgartner(8);
baumgartner neptune = new baumgartner(9);
felix blackHole = new felix (10);





void draw(){

stroke(255);
background(0);
line(width/12, height/12,11*width/12, height/12);
line(width/12, 11*height/12, 11*width/12, 11*height/12);

textAlign(CENTER);
fill(255);
text("Sun",300,940);
text("Mercury",500,940);
text("Venus",700,940);
text("Earth",900,940);
text("Moon",1100,940);   //misc. text for labelling purposes 
text("Mars",1300,940);
text("Jupiter",1500,940);
text("Saturn",1700,940);
text("Uranus",1900,940);
text("Neptune",2100,940);
text("Black Hole simulation slowed down by "+str(HoleSlowDown)+" times.", 360, 50);
text("Fall Height: 100 metres.", 100, height/2);
  

sun.Circle();
mercury.Circle();
venus.Circle();
earth.Circle();
moon.Circle(); //calling the functions 
mars.Circle();
jupiter.Circle();
saturn.Circle();
uranus.Circle();
neptune.Circle();
blackHole.Circle();}
