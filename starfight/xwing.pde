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
       if (wasHit == false ) { fill(color(30,60,100)); } else {fill(color(170,10,10)); }
       
       translate(x,y);
       rotate(richtung);
       
       // rect(0,0,4,20) ;
       
       rect(-10,-10,20,3);
       
       popMatrix();
     }
     
     void update() {
      if (wasHit == false) {
        x = x + speed * cos(richtung);
        y = y + speed * sin(richtung);
        richtung = richtung  + random(radians(-10),radians(10));
        counti = 0;       
        
      }
      if ( dist(x,y,schuss.x,schuss.y) < 20 ) {
        wasHit = true;
      }
     
      if ( (y > width +5) | (y < 0) | (x < 0 ) | (x > width)  )   {
        y = 0;
        x = random( 10, width -10);
        richtung = radians(90);  
    }
      
      if (wasHit == true ) {
       counti = counti +1;
       if (counti > 10 ) {  
         wasHit = false;
         x = random(10,width -10);
         y = 5;
       }
       
        
      }
      
  }
     
}