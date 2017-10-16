

class Tiefighter {
   
   float x, y;       // Mittelpunkt des Fighters
   float richtung;  //in radians
   int r;            // sein Radius
   color c;          // seine Farbe
   float tempo;      // easing-Variable


   Tiefighter(int radius) {            // das ist der Konstruktor
      ellipseMode(RADIUS);
      // colorMode(HSB,360,100,100);
      x = (width/2);
      y = (height*0.9);
      //c = color(random(255),100,100);
      c = color(60,100,100);
      tempo = random(0.01,0.1);
      r = radius;
      richtung = radians(270);
   } 
 
   void paint() {
     
    pushMatrix();  
     noStroke();   
//      fill(c);
     translate(x,y);

      fill(color(60,100,100));

    // rotate(-atan2(x-mouseX, y-mouseY)-HALF_PI);
    rotate(richtung);
    //Koerper
     ellipse(0,0,r,r);
     // stroke(204, 102, 0);
    
     // Flügelverbindung
     rect(-70,5,140,3) ;
   // Flügel
    rect(-75,-60,10,120) ;
    rect(65,-60,10,120) ;
    // Kanonen
  fill(color(30,100,100));
     rect(-30,-40,3,50) ;
     rect(27,-40,3,50) ;
     
     // ellipse(x,y,r,r);
     // line(x,y,x+cos(radians(richtung))*20,y+sin(radians(richtung))*20) ;
    popMatrix();  
   }
 
   void update() {
     richtung = -0.6*atan2(x-mouseX, y-mouseY); 
     
     /* float dx = mouseX-x;
      float dy = mouseY-y;
      x += tempo*dx;
      y += tempo*dy; */ 
     // richtung = richtung +1;  
 }
}  