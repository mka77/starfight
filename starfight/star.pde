class Star {
  
  float x;
  float y;
  
  Star(float posX, float posY) {
    x = posX;
    y = posY;
  }
  
 void update() {
   y = y+2;
   if ( y > height ) {
     y = 0;
     x = random(0,width);
   }
   
 }
  
 void paint() {
   pushMatrix();

   color(100,100,100,100);
   fill(0);
   stroke(100,100,100);
   // line(x,y,x+5,y+5);
   
   ellipse(x,y,2,2);
   
   
      popMatrix();
 }
 
}