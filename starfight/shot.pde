
class Shot {
   
   float x, y;       // ort
   float richtung;   //in radians
   float speed;           
   boolean onItsWay;
  boolean isleftcannon;
   
    Shot(float startx, float starty, float startrichtung, float startspeed, boolean leftcannon) {            // das ist der Konstruktor
      x = startx;
      y = starty;
      richtung = startrichtung;
      speed = startspeed;
      onItsWay = false;
      isleftcannon = leftcannon;
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
     
     // if  ( (mousePressed == true) & ( onItsWay == false) ) {
     //   onItsWay = true;
    if  ( (mousePressed == true) & ( shotsonway < 10) ) {
      shotsonway = shotsonway + 1;
        
        if (isleftcannon) { 
          x = fighter.x - sin(fighter.richtung) * 30  ;
          y = fighter.y + cos(fighter.richtung) * 30 ;

        } else { 
          x = fighter.x +30 ; 
          y= fighter.y + cos(fighter.richtung) * 30 ;
  
      } 
        
        richtung = fighter.richtung - radians(90); 
        speed = 3;
      }
 
     if ( (x < 0) | (x > height ) | ( y < 0 ) )  {
       // onItsWay = false;
       shotsonway = shotsonway - 1; 
     }
 }
     
}