// import minim library to open and play audio files
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Minim minim;

AudioPlayer player;

void setup(){
  minim = new Minim(this);
//loading and playing the required file from the data folder
  player=minim.loadFile("interstellarpiano.mp3");
  size(1000,1000);
  player.play();
}


void draw(){
//varying the color of the background randomly   
  int colorBG=int(random(1,4));
  if (colorBG==1){
    background (0);}
  if (colorBG==2){
    background (25);}
  if (colorBG==3){
    background (50);}
  stroke(255);
//varying strokeWeight randomly between 1,2,3 and 4
  strokeWeight(int(random(1,5)));
  fill(255);  
  vlineMaker(0); 
  hlineMaker(0);
}


void vlineMaker(int x) { 
//varying strokeColor for vertical lines randomly (4 choices)
  int colorX = int(random(1,5));
  if (colorX==1){
    stroke(255);}
  if (colorX==2){
    stroke(255,255,0);}
  if (colorX==3){
    stroke(255);}
  if (colorX==4){
    stroke(120,110,110);}
   
//drawing the vertical lines
  while (x<width){ 
    line(x, 0, x, height); 
//changing the gap between the vertical lines based on the music volume
    x=x+50-int(player.left.get(1)*800);}
}


void hlineMaker(int y) { 
//varying strokeColor for horizontal lines randomly (4 choices)
  int colorY = int(random(1,5));
  if (colorY==1){
    stroke(255);}
  if (colorY==2){
    stroke(200,180,120);}
  if (colorY==3){
    stroke(255,255,0);}
  if (colorY==4){
    stroke(255);}
    
//drawing the horizontal lines
  while (y<height) { 
    line(0, y, width, y); 
//changing the gap between the horizontal lines based on the music volume
    y=y+50-int(player.left.get(1)*800);
  }
}


//stopping and closing the minim audio player 
void stop(){
  player.close();
  minim.stop();
  super.stop();
}
