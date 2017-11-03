
PFont monoFont;
Tiefighter fighter;            
Shot schuss[] = new Shot[20] ;
Xwing enemy[] = new Xwing[4];
Star stars[] = new Star[20];
int shotcounter;
int hitcounter;
   
void setup() {
   size(1000,800);
   
   monoFont = loadFont("Monospaced.plain-24.vlw");
   textFont(monoFont);
   
   fighter = new Tiefighter(40);
   
   shotcounter = 0;
   hitcounter = 0;
   
   for (int i=0; i < schuss.length; i++) {
     schuss[i] = new Shot(-100,-200,radians(270),3);
   }
   
   for (int i=0; i < enemy.length; i++) {
     enemy[i] = new Xwing(i*width/2,10,radians(90),3);
   }
   
   for (int i=0; i < stars.length; i++) {
    stars[i] = new Star(random(0,width), random(0,height));
    }
} 
 
void draw() {
   background(10);
   
  
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
   
  for (int i=0; i < enemy.length; i++) {
    enemy[i].update();
    enemy[i].paint();
  }
     
   text(hitcounter,10,40);
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
     xoffset = - 30 * sin(fighter.richtung - radians(90) ) ;
     yoffset =   30 * cos(fighter.richtung - radians(90) );
  }
       
       schuss[shotcounter].x = fighter.x + xoffset;
       schuss[shotcounter].y = fighter.y + yoffset;
       schuss[shotcounter].speed = 3;
       schuss[shotcounter].richtung = fighter.richtung - radians(90);
       
   
      
}