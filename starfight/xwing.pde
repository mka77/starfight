class Xwing {
   
   float x, y;       // ort
   float richtung;
   boolean wasHit;           
   float speed;
   int movementType;
   
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
       rect(-10,-10,20,20) ;
       popMatrix();
     }
     
     void update() {
      if (wasHit == false) {
        x = x + speed * cos(richtung);
        y = y + speed * sin(richtung);
      }
      if ( dist(x,y,schuss.x,schuss.y) < 20 ) {
        wasHit = true;
      }
      
      
  }
     
}