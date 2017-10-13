

class Kreis {
   
   float x, y;       // Mittelpunkt des Kreises
   float richtung;
   int r;            // sein Radius
   color c;          // seine Farbe
   float tempo;      // easing-Variable


   Kreis(int radius) {            // das ist der Konstruktor
      ellipseMode(RADIUS);
      colorMode(HSB,360,100,100);
      x = random(width);
      y = random(height);
      //c = color(random(255),100,100);
      c = color(60,100,100);
      tempo = random(0.01,0.1);
      r = radius;
      richtung = 270;
   } 
 
   void paint() {
      // noStroke();   
      fill(c);
      ellipse(x,y,r,r);
      line(x,y,x+cos(radians(richtung))*20,y+sin(radians(richtung))*20) ;
      
   }
 
   void update() {
      float dx = mouseX-x;
      float dy = mouseY-y;
      x += tempo*dx;
      y += tempo*dy; 
     richtung = richtung +1;  
 }
}  