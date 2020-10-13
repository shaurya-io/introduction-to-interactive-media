/* This project was made as a part of the Introduction to Interactive Media course at NYU Abu Dhabi,
taken in Fall 2020. 

It makes use of the PeasyCam library to enable 3D rotation with mouse drags, and zoom in/out using the mouse wheel.
This project uses the pixels of a given image to construct a 3D model where the line height is derived from the R, G, and B values of each pixel respectively.
Shaurya Singh

*/

import peasy.*;
PeasyCam cam;

PImage mainPhoto;

void setup(){
  size(2000,1000,P3D);
  cam = new PeasyCam(this,1000); //creating the cam object 

  mainPhoto = loadImage("imagecolor1.jpg");
  mainPhoto.loadPixels(); //loading the pixels[] array 
}

void draw(){
  background(0);
  fill(255);
  for(int x=0; x<300; x++){ //this for loop draws the 3D for each pixel - mimicking color and representing R, G, B values using line height.
    for(int y=0; y<200; y++){ 
      int c = mainPhoto.pixels[x+y*300];
      strokeWeight(1);
      int r = (c >> 16) & 0xff; //converting decimal color values to RGB 
      int g = (c >> 8)  & 0xff;
      int b = c & 0xff;
      stroke(c);
      line(x-1.5*mainPhoto.width,y-mainPhoto.height/2,0,x-1.5*mainPhoto.width,y-mainPhoto.height/2,-r); //drawing the 3D lines 
      line(x-mainPhoto.width/2,y-mainPhoto.height/2,0,x-mainPhoto.width/2,y-mainPhoto.height/2,-g);
      line(x+mainPhoto.width/2,y-mainPhoto.height/2,0,x+mainPhoto.width/2,y-mainPhoto.height/2,-b);    
    }
  }
}   
      
