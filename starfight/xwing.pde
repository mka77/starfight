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
       noStroke();  
       fill(color(30,60,100));
       
       translate(x,y);
       rotate(richtung);
       rect(0,0,50,50) ;
     }
     
     void update() {
      
      x = x + speed * cos(richtung);
      y = y + speed * sin(richtung);
  }
     
}