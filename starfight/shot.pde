
class Shot {
   
   float x, y;       // ort
   float richtung;   //in radians
   float speed;           
   
    Shot(float startx, float starty, float startrichtung, float startspeed) {            // das ist der Konstruktor
      x = startx;
      y = starty;
      richtung = startrichtung;
      speed = startspeed; 
   } 
   
     void paint() {
       pushMatrix(); 
       noStroke();  
       fill(color(200,20,10));
       
       translate(x,y);
       rotate(richtung);
       rect(0,0,10,3) ;
       popMatrix();
     }
     
     void update() {
      
      x = x + speed * cos(richtung);
      y = y + speed * sin(richtung);
      speed = speed *1.05;
     
 }
     
}