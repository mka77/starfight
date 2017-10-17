
class Shot {
   
   float x, y;       // ort
   float richtung;   //in radians
   float speed;           
   boolean onItsWay;
   
    Shot(float startx, float starty, float startrichtung, float startspeed) {            // das ist der Konstruktor
      x = startx;
      y = starty;
      richtung = startrichtung;
      speed = startspeed;
      onItsWay = false;
   } 
   
     void paint() {
       pushMatrix(); 
       noStroke();  
       fill(color(90,20,100));
       
       translate(x,y);
       rotate(richtung);
       rect(0,0,50,3) ;
       popMatrix();
     }
     
     void update() {
      
      x = x + speed * cos(richtung);
      y = y + speed * sin(richtung);
      speed = speed *1.05;
      if  ( (mousePressed == true) & ( onItsWay == false) ) {
        onItsWay = true;
        x = fighter.x;
        y= fighter.y;
        richtung = fighter.richtung - radians(90); 
        speed = 3;
      }
     if ( (x < 0) | (x > height ) )  {
       onItsWay = false;
     }
 }
     
}