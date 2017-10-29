

Tiefighter fighter;            
Shot schuss[] = new Shot[10] ;
Xwing enemy;
Star stars[] = new Star[20];
int shotsonway;
   
void setup() {
   size(600,600);
   fighter = new Tiefighter(40);
   
   shotsonway = 0;
   
   for (int i=0; i < schuss.length; i++) {
     boolean isleft;
     if ( (i % 2) == 0) { isleft = true;} else {isleft = false; }
          
     schuss[i] = new Shot(-10,0,radians(270),3,isleft);
     
   }
   
   enemy = new Xwing(width/2,10,radians(40),3);
   
   for (int i=0; i < stars.length; i++) {
    stars[i] = new Star(random(0,width), random(0,height));
  }
   
} 
 
void draw() {
   background(10);
   
  /*  for(Star s : stars) {
      s.update();
      s.paint();
    } 
  */
  for (int i=0; i < stars.length; i++) {
   stars[i].update();
   stars[i].paint();
  }
  
   fighter.update();
   fighter.paint();
  for (int i=0; i < schuss.length; i++) {
     schuss[i].update();
     schuss[i].paint();
  }
   
  
   enemy.update();
   enemy.paint();
   
   
   
}  