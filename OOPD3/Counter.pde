class Counter {
  final color RED = #FF0000;
  final color BLACK = #000000;

  int maximum;
  int amount = 0;
  int doubleDigits = 10;
  float x, y, rectWidth, rectHeight;

  Counter(int maximum, float x, float y, float rectWidth, float rectHeight) {
    this.maximum = maximum;
    this.x = x;
    this.y = y;
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
  }

  void tik() {
    amount = (amount + 1) % maximum;
  }

  void drawCounter() {
    rectMode(CENTER);
    noStroke();
    fill(BLACK);
    rect(x, y, rectWidth, rectHeight);

    fill(RED);
    textSize(rectHeight);
    textAlign(CENTER, CENTER);

    String timeFormat = (amount < doubleDigits) ? "0" + str(amount) : str(amount);
    text(timeFormat, x, y);
  }
}
