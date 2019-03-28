// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class Enemy
{
  boolean moveDiff = true;
  
  String whatIsChance = "Hit";
  
  float x = 470;
  float y;
  float diff = 0;

  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;

  float w = 20;
  float h = 60;

  void caller()
  {
    y = ball.y + diff;
    show();
    edgeDetect();
    diffCalculator();
  }

  void show()
  {
    noStroke();
    rectMode(CENTER);
    fill(#CFD8DC);
    rect(x, y, w, h);
  }

  void edgeDetect()
  {
    leftEdge = x - 10;
    rightEdge = x + 10;
    topEdge = y - 30;
    bottomEdge = y + 30;
  }
  
  void diffCalculator() {
    if(ball.chance > 8 && moveDiff == true) {
      diff += 1;
      whatIsChance = "Miss";
      if(diff >= 50) {
        moveDiff = false;
      }
    }
    if(ball.chance < 8 && moveDiff == true) {
      diff -= 2;
      whatIsChance = "Hit";
      if(diff <= 0) {
        if(ball.chance < 4 && ball.chance > 0) {
          diff = random(0, 20);
        }
        if(ball.chance < 8 && ball.chance > 4) {
          diff = random(0, -20);
        }
        moveDiff = false;
      }
    }
  }
}
