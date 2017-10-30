

Tiefighter fighter;            
Shot schuss[] = new Shot[10] ;
Xwing enemy;
Star stars[] = new Star[20];
int shotcounter;
   
void setup() {
   size(600,600);
   fighter = new Tiefighter(40);
   
   shotcounter = 0;
   
   for (int i=0; i < schuss.length; i++) {
    
          
     schuss[i] = new Shot(-10,0,radians(270),3);
     
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

void mouseClicked() {
  // Shot Management
  float xoffset, yoffset;
  shotcounter = shotcounter + 1;
  if ( shotcounter > ( schuss.length - 1) ) { shotcounter = 0; }

  if ( (shotcounter % 2) == 0) {
     xoffset = 30 * sin(fighter.richtung - radians(90) ) ;
     yoffset = - 30 * cos(fighter.richtung - radians(90) );
  } else {
     xoffset = +30;
     yoffset = 0;
  }
       
       schuss[shotcounter].x = fighter.x + xoffset;
       schuss[shotcounter].y = fighter.y + yoffset;
       schuss[shotcounter].speed = 3;
       schuss[shotcounter].richtung = fighter.richtung - radians(90);
       
   
      
}