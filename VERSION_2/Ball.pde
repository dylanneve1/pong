// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class Ball
{

  float chance = 0;
  
  float x = 250;
  float y = 250;

  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;

  float xSpeed = 5;
  float ySpeed;

  float r = 10;

  //int playerLives = 5;
  //int enemyLives = 5;
  int playerScore = 0;
  int enemyScore = 0;

  void caller()
  {
    show();
    move();
    edgeDetect();
    sidesCollision();
    leftPaddleCollision();
    rightPaddleCollision();
    lifeDetect();
  }

  void show()
  {
    fill(#ECEFF1);
    ellipse(x, y, r*2, r*2);
  }

  void move()
  {
    x = x + xSpeed;
    y = y + ySpeed;
  }

  void edgeDetect()
  {
    rightEdge = x + 10;
    leftEdge = x - 10;
    topEdge = y - 10;
    bottomEdge = y + 10;
  }

  void sidesCollision()
  {
    if (topEdge <= 0)
    {
      ySpeed *= -1;
    }
    if (bottomEdge >= 500)
    {
      ySpeed *= -1;
    }
  }

  void leftPaddleCollision()
  {
    if (leftEdge <= paddle.rightEdge && y <= paddle.bottomEdge && y >= paddle.topEdge)
    {
      float diff = y - (paddle.y - paddle.h/2);
      float rad = radians(45);
      float angle = map(diff, 0, paddle.h, -rad, rad);
      xSpeed = 5 * cos(angle);
      ySpeed = 5 * sin(angle);
      x = paddle.x + paddle.w/2 + r;
      chance = random(0,10);
      enemy.moveDiff = true;
    }
  }

  void rightPaddleCollision()
  {
    if (rightEdge >= enemy.leftEdge && y <= enemy.bottomEdge && y >= enemy.topEdge)
    {
      float diff = y - (enemy.y - enemy.h/2);
      float angle = map(diff, 0, enemy.h, radians(225), radians(135));
      xSpeed = 5 * cos(angle);
      ySpeed = 5 * sin(angle);
      x = enemy.x - enemy.w/2 - r;
    }
  }

  void lifeDetect()
  {
    if (leftEdge <= 0)
    {
      delay(500);
      enemyScore += 1;
      xSpeed *= -1;
      x = 150;
      enemy.diff = 0;
    }
    if (rightEdge >= 500)
    {
      delay(500);
      playerScore += 1;
      xSpeed *= -1;
      x = 350;
      enemy.diff = 0;
    }

    if (enemyScore == 5)
    {
      menus.playing = false;
      menus.dead = true;
    }
    if (playerScore == 5)
    {
      menus.playing = false;
      menus.won = true;
    }
  }
}
