
class Shot {
   
   float x, y;       // ort
   float richtung;   //in radians
   float speed;            // sein Radius
   
    Shot(float startx, float starty, float startrichtung, float startspeed) {            // das ist der Konstruktor
      x = startx;
      y = starty;
      richtung = startrichtung;
      speed = startspeed;
   } 
   
     void paint() {
       noStroke();  
       fill(color(60,60,100));
       
       translate(x,y);
       rotate(richtung);
       rect(0,0,50,5) ;
     }
     
     void update() {
      
      x = x + speed * cos(richtung);
      y = y + speed * sin(richtung);
      
      if (mousePressed == true) {
        x = fighter.x;
        y= fighter.y;
        richtung = fighter.richtung - radians(90); 
      }
 }
     
}