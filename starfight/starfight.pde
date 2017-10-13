

Kreis scheibe;            // das Objekt soll scheibe heißen
 
void setup() {
   size(600,600);
   scheibe = new Kreis(40);
} 
 
void draw() {
   background(0);
   scheibe.update();
   scheibe.paint();
}  