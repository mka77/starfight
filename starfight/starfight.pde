

Tiefighter fighter;            // das Objekt soll scheibe heißen
Shot schuss;
Xwing enemy;
 
void setup() {
   size(600,600);
   fighter = new Tiefighter(40);
   schuss = new Shot(200,200,radians(300));
   enemy = new Xwing(50,10,radians(180),1);
} 
 
void draw() {
   background(10);
   fighter.update();
   fighter.paint();
   
   schuss.update();
   schuss.paint();
   
   enemy.update();
   enemy.paint();
}  