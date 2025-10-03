Die bob;
Die bobby;
Die die3;
Die die4;
Die die5;
Die die6;
Die die7;
Die die8;
Die die9;

void setup()
{
  noLoop();
  size (400,400);
  bob = new Die(50, 50);
  bobby = new Die(150, 50);
  die3 = new Die(250, 50);
  die4 = new Die(50, 150);
  die5 = new Die(150, 150);
  die6 = new Die(250, 150);
  die7 = new Die(50, 250);
  die8 = new Die(150, 250);
  die9 = new Die(250, 250);
}

void draw()
{
  background (100);
  bob.show();
  bobby.show();
  die3.show();
  die4.show();
  die5.show();
  die6.show();
  die7.show();
  die8.show();
  die9.show();
  bob.roll();
  bobby.roll();
  die3.roll();
  die4.roll();
  die5.roll();
  die6.roll();
  die7.roll();
  die8.roll();
  die9.roll();

  // compute total of current rolls
  int total = bob.myRoll + bobby.myRoll + die3.myRoll + die4.myRoll +
              die5.myRoll + die6.myRoll + die7.myRoll + die8.myRoll + die9.myRoll;
  fill(255);
  textSize(20);
  text("Total: " + total, 50, 350);
}
void mousePressed()
{
  redraw();
  noLoop();
}

class Die
{
  int myX;
  int myY;
  int myRoll;

  Die(int x, int y) 
  {
    myX = x;
    myY = y;
  }

  void roll()
  {
    myRoll = (int) ((Math.random() * 6) + 1);
    if (myRoll == 1){
      fill (0);
      ellipse (myX + 24, myY + 21, 5, 5);
    }
    if (myRoll == 2){
      fill (0);
      ellipse (myX + 17, myY + 35, 5, 5);
      ellipse (myX + 37, myY + 15, 5, 5);
    }
    if (myRoll == 3){
      fill (0);
      ellipse (myX + 15, myY + 35, 5, 5);
      ellipse (myX + 35, myY + 15, 5, 5);
      ellipse (myX + 25, myY + 25, 5, 5);
    }
    if (myRoll == 4){
      fill (0);
      ellipse (myX + 15, myY + 15, 5, 5);
      ellipse (myX + 15, myY + 40, 5, 5);
      ellipse (myX + 35, myY + 15, 5, 5);
      ellipse (myX + 35, myY + 40, 5, 5);
    }
    if (myRoll == 5){
      fill (0);
      ellipse (myX + 15, myY + 15, 5, 5);
      ellipse (myX + 15, myY + 40, 5, 5);
      ellipse (myX + 35, myY + 15, 5, 5);
      ellipse (myX + 35, myY + 40, 5, 5);
      ellipse (myX + 25, myY + 27, 5, 5);
    }
    if (myRoll == 6){
      fill (0);
      ellipse (myX + 15, myY + 15, 5, 5);
      ellipse (myX + 15, myY + 40, 5, 5);
      ellipse (myX + 35, myY + 15, 5, 5);
      ellipse (myX + 35, myY + 40, 5, 5);
      ellipse (myX + 15, myY + 27, 5, 5);
      ellipse (myX + 35, myY + 27, 5, 5);
    }
  }

  void show()
  {
    fill (255);
    rect (myX, myY, 50, 50, 5);
  }
}
