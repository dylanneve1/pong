// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Ball
{

  float x = displayWidth/2;
  float y = displayHeight/2;

  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;

  float xSpeed = displayWidth * 0.01;
  float ySpeed;

  float r = displayWidth * 0.02;

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
    rightEdge = x + r;
    leftEdge = x - r;
    topEdge = y - r;
    bottomEdge = y + r;
  }

  void sidesCollision()
  {
    if (topEdge <= 0)
    {
      ySpeed *= -1;
    }
    if (bottomEdge >= displayHeight)
    {
      ySpeed *= -1;
    }
  }

  void leftPaddleCollision()
  {
    if (leftEdge <= paddle.rightEdge && y <= paddle.bottomEdge && y >= paddle.topEdge && leftEdge <= paddle.rightEdge -2)
    {
      float diff = y - (paddle.y - paddle.h/2);
      float rad = radians(45);
      float angle = map(diff, 0, paddle.h, -rad, rad);
      xSpeed = (displayWidth * 20/2560) * cos(angle);
      ySpeed = (displayWidth * 20/2560) * sin(angle);
      x = paddle.x + paddle.w/2 + r;
    }
  }

  void rightPaddleCollision()
  {
    if (rightEdge >= enemy.leftEdge && y <= enemy.bottomEdge && y >= enemy.topEdge && rightEdge >= enemy.leftEdge + 2)
    {
      float diff = y - (enemy.y - enemy.h/2);
      float angle = map(diff, 0, enemy.h, radians(225), radians(135));
      xSpeed = (displayWidth * 20/2560) * cos(angle);
      ySpeed = (displayWidth * 20/2560) * sin(angle);
      x = enemy.x - enemy.w/2 - r;
    }
  }

  void lifeDetect()
  {
    if (leftEdge <= 0)
    {
      delay(1000);
      enemyScore += 1;
      xSpeed *= -1;
      x = displayWidth * 0.3;
    }
    if (rightEdge >= displayWidth)
    {
      delay(1000);
      playerScore += 1;
      xSpeed *= -1;
      x = displayWidth * 0.7;
    }

    if (enemyScore == 10)
    {
      menus.playing = false;
      menus.dead = true;
    }
    if (playerScore == 10)
    {
      menus.playing = false;
      menus.won = true;
    }
  }
}