class Clock {
  Counter hourCounter;
  Counter minuteCounter;
  Counter secondsCounter;

  boolean hourCounterIncremented = false;
  float x, y, rectWidth, rectHeight;
  int hourMax = 24;
  int minuteMax = 60;
  int secondMax = 60;
  float heightOffset = 0.25;

  Clock(float x, float y, float rectWidth) {
    this.x = x;
    this.y = y;
    this.rectWidth = rectWidth;
    this.rectHeight = rectWidth * heightOffset;

    float counterWidth = rectWidth / 3;

    hourCounter = new Counter(hourMax, x, y, counterWidth, rectHeight);
    minuteCounter = new Counter(minuteMax, x + counterWidth,
                                y, counterWidth, rectHeight);
    secondsCounter =  new Counter(secondMax, x + 2 * counterWidth,
                                  y, counterWidth, rectHeight);
  }

  void tik() {
    secondsCounter.tik();
    if (secondsCounter.amount == 00) {
      minuteCounter.tik();
    }
    if (minuteCounter.amount == 00) {
      if (!hourCounterIncremented) {
        hourCounter.tik();
        hourCounterIncremented = true;
      }
    } else {
      hourCounterIncremented = false;
    }
  }

  void setTime(int hours, int minutes) {
    hourCounter.amount = hours;
    minuteCounter.amount = minutes;
  }

  void drawClock() {
    hourCounter.drawCounter();
    minuteCounter.drawCounter();
    secondsCounter.drawCounter();
  }
}
