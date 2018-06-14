float yoff = 0.0;

void setup() {
  size (400, 400);
}

void draw() {
  background(0);

  translate(width/2, height/2);

  float radius = 150;
fill(mouseX, mouseY, 255);
noStroke();
  beginShape();
  float xoff = 0;

  for (float a= 0; a< TWO_PI; a+=0.1) {
    float offset = map(noise(xoff, yoff), 0, 1, -25, 25);
    float r = radius + offset;
    float x = r * cos(mouseX);
    float y = r * sin(a);
    vertex(x, y);
    xoff += 0.1;
  }
  endShape();
  yoff +=0.1;
}
