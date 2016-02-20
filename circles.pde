final int G_SIZE = 10;
final float G_PADDING = 50;

void setup() {
 size(500, 500);
 mouseY = mouseX = 250;
}

float gridToCoordinates(int input) {
 return G_PADDING+input*(500 - 2*G_PADDING)/(G_SIZE-1);
}

void draw() {
 background(0);

 noStroke();
 fill(255);
 
 for (int i = 0; i < G_SIZE; ++i) {
   for (int j = 0; j < G_SIZE; ++j) {
     float distance = sqrt(pow(mouseX-gridToCoordinates(i), 2) + pow(mouseY-gridToCoordinates(j), 2));
     float ellipseSize = min(70, 1000.0/distance);
     ellipse(gridToCoordinates(i), gridToCoordinates(j), ellipseSize, ellipseSize);
   }
 }
}
