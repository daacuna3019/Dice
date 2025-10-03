       void setup()
  {
    size(4000, 2200);
      noLoop();
  }
  void draw()
  {
      int sum = 0;
      background(67);
      for(int y = 0; y < 2000; y+=50){
        for(int x = 0; x < 4000; x += 50){
          Die bob = new Die(x, y);
          bob.show();
          bob.roll();
          sum += bob.myRoll;
        }
      }
      textSize(100);
      fill(255);
      text("Total " + sum, 2200, 2100);
      fill(67);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX;
      int myY;
      int myRoll;
      
      Die(int x, int y) //constructor
      {
        myX = x;
        myY = y;
        myRoll = (int) (Math.random()*6) + 1;
      }
       void roll()
  {
    myRoll = (int) ((Math.random() * 6) + 1);
    noFill();
    if (myRoll == 1){
      fill (255, 0, 0);
      ellipse (myX + 24, myY + 21, 5, 5);
    }
    if (myRoll == 2){
      fill (0, 255, 0);
      ellipse (myX + 17, myY + 35, 5, 5);
      ellipse (myX + 37, myY + 15, 5, 5);
    }
    if (myRoll == 3){
      fill (0, 0, 255);
      ellipse (myX + 15, myY + 35, 5, 5);
      ellipse (myX + 35, myY + 15, 5, 5);
      ellipse (myX + 25, myY + 25, 5, 5);
    }
    if (myRoll == 4){
      fill (255, 0, 255);
      ellipse (myX + 15, myY + 15, 5, 5);
      ellipse (myX + 15, myY + 40, 5, 5);
      ellipse (myX + 35, myY + 15, 5, 5);
      ellipse (myX + 35, myY + 40, 5, 5);
    }
    if (myRoll == 5){
      fill (255, 255, 0);
      ellipse (myX + 15, myY + 15, 5, 5);
      ellipse (myX + 15, myY + 40, 5, 5);
      ellipse (myX + 35, myY + 15, 5, 5);
      ellipse (myX + 35, myY + 40, 5, 5);
      ellipse (myX + 25, myY + 27, 5, 5);
    }
    if (myRoll == 6){
      fill (0, 255, 255);
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
        fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
        rect(myX, myY, 50, 50, 5);
      }
  }
