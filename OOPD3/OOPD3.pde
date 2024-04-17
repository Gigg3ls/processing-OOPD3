Clock clock;
final color WHITE = #ffffff;

int clockX = 150;
int clockY = 100;
int clockSize = 200;
int hours = 23;
int minutes = 58;
int clockSpeed = 1;

void setup() {
  size(400, 300);
  background(WHITE);
  clock = new Clock(clockX, clockY, clockSize);
  clock.setTime(hours, minutes);
  frameRate(clockSpeed);
}

void draw() {
  background(WHITE);
  clock.tik();
  clock.drawClock();
}
