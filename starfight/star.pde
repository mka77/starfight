class Star {
  
  float x;
  float y;
  
  Star(float posX, float posY) {
    x = posX;
    y = posY;
  }
  
 void update() {
   x = x+1;
 }
  
 void paint() {
   stroke(100,100,100);
   line(x,y,x,y);
 }
 
}