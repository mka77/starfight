

Tiefighter fighter;            
Shot schuss;
Xwing enemy;
Star stars;
 
void setup() {
   size(600,600);
   fighter = new Tiefighter(40);
   schuss = new Shot(200,200,radians(300),3);
   enemy = new Xwing(width/3,10,radians(40),1);
   stars = new Star(20,10);
   // stars[1] = new Star(width*3/4,10);
} 
 
void draw() {
   background(10);
   
  /*  for(Star s : stars) {
      s.update();
      s.paint();
    } 
  */
   stars.update();
   stars.paint();
       
   fighter.update();
   fighter.paint();
   
   schuss.update();
   schuss.paint();
   
   enemy.update();
   enemy.paint();
   
   
   
}  