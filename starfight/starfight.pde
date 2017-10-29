

Tiefighter fighter;            
Shot schuss;
Xwing enemy;
Star stars[] = new Star[20];
   
void setup() {
   size(600,600);
   fighter = new Tiefighter(40);
   schuss = new Shot(0,0,radians(300),3);
   enemy = new Xwing(width/3,10,radians(40),3);
   //stars[1] = new Star(20,10);
   // stars[0] = new Star(30,10);
   for (int i=0; i < stars.length; i++) {
    stars[i] = new Star(random(0,width), random(0,height));
  }
   
   
   // stars[1] = new Star(width*3/4,10);
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
   
   schuss.update();
   schuss.paint();
   
   enemy.update();
   enemy.paint();
   
   
   
}  