
class Shot {
   
   float x, y;       // ort
   float richtung;
   int l;            // sein Radius
   
    Shot(float startx, float starty, float startrichtung) {            // das ist der Konstruktor
      x = startx;
      y = starty;
      richtung = startrichtung;
      // c = color(60,100,100);
   } 
   
     void paint() {
       noStroke();  
       fill(color(60,60,100));
       
       translate(x,y);
       rotate(richtung);
       rect(0,0,50,5) ;
     }
     
     void update() {
      
      float speed;
      speed = 3;
      x = x + speed * cos(richtung);
      y = y + speed * sin(richtung);
       /* float dx = mouseX-x;
      float dy = mouseY-y;
      x += tempo*dx;
      y += tempo*dy; */ 
     //  richtung = richtung +1;  
     if (mousePressed == true) {
      x = 50;
      y= 500;
      richtung = 270; }
 }
     
}