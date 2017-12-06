class Ball
{

  float x = 225;
  float y = 225;
  float xSpeed = 4;
  float ySpeed = 1.5;

  void life() 
  {
    if (lifes == -1) 
    {
      if (score >= highScore) 
      {
        highScore = score;
      }
      deathScreen = 2;
      menu = 3;
    }
  }

  void show() 
  {
    ellipse(x, y, 20, 20);
  }

  void move() 
  {
    x = x + xSpeed;
    y = y + randomness;
  }

  void bounce() 
  {
    if (x >= 500) 
    {
      score = score + 1;
      x = 70;
      y = 250;
      delay(3000);
      enemyChance = 0;
    }
    if (x <= 0) 
    {
      x = 430;
      y = 250;
      delay(3000);
      lifes = lifes - 1;
    }
  }

  void gravity() 
  {
    if (y >= 500) 
    {
      randomness = randomness*-1;
    }
    if (y <= 1) 
    {
      randomness = randomness*-1;
    }
  }
}