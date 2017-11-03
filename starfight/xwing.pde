class Xwing {
   
   float x, y;       // ort
   float richtung;
   boolean wasHit;           
   float speed;
   int movementType;
   int counti;
   
    Xwing(float startx, float starty, float startrichtung, float startspeed) {            // das ist der Konstruktor
      x = startx;
      y = starty;
      richtung = startrichtung;
      speed = startspeed;
    } 
   
     void paint() {
       pushMatrix();
       noStroke();  
       translate(x,y);
       rotate(richtung);
       
       if (wasHit == false ) { 
         fill(color(30,60,100)); 
             //Flügel
       quad(0,-5, -5,-15, 5,-15, 0,0);
       quad(0, 5, -5, 15, 5, 15, 0,0);
       // Rumpf
       quad(-6,-2, 25,-1, 25,1, -6,2);
       
     
       } 
         else {
         fill(color(170,10,10)); 
         ellipse(0,0,10,10);
         fill(color(170,30,30));
         ellipse(0,0,5,5);
     }
       
       
       
       popMatrix();
     }
     
     void update() {
       int aenderung= 5;
      if (wasHit == false) {
        x = x + speed * cos(richtung);
        y = y + speed * sin(richtung);
        richtung = richtung  + random(radians(-aenderung),radians(aenderung));
        counti = 0;       
        
      }
      
      for (int i=0; i < schuss.length; i++) {
        if ( dist(x,y,schuss[i].x,schuss[i].y) < 30 ) {
          wasHit = true;
          hitcounter = hitcounter +1;
          schuss[i].x = -100;
          schuss[i].y = -100;
        }
      }
      
     
      if ( (y > width +5) | (y < 0) | (x < 0 ) | (x > width)  )   {
        y = 0;
        x = random( 10, width -10);
        richtung = radians(90);  
    }
      
      if (wasHit == true ) {
       counti = counti +1;
       if (counti > 50 ) {  
         wasHit = false;
         x = random(10,width -10);
         y = 5;
       }
       
        
      }
      
  }
     
}