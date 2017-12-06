class Paddle
{

  void collision() 
  {
    if (ball.x <= rectOnexPos + 20 && ball.y >= rectOneyPos && ball.y <= rectOneyPos + 60 && ball.x >= rectOnexPos + 15) 
    {
      ball.xSpeed = ball.xSpeed * -1;
    }
    if (ball.x >= rectTwoxPos && ball.y >= enemyOneyPos && ball.y <= enemyOneyPos + 60 && ball.x <= rectTwoxPos + 5) 
    {
      ball.xSpeed = ball.xSpeed * -1;
    }
  }

  void randomness() 
  {
    if (ball.x <= rectOnexPos + 20 && ball.y >= rectOneyPos + 50 && ball.y <= rectOneyPos + 60 && ball.x >= rectOnexPos) 
    {
      enemyChance = random(-15, 15);
      randomness = 3;
    }
    if (ball.x <= rectOnexPos + 20 && ball.y >= rectOneyPos + 40 && ball.y <= rectOneyPos + 50 && ball.x >= rectOnexPos) 
    {
      enemyChance = random(0, 60);
      randomness = 2;
    }
    if (ball.x <= rectOnexPos + 20 && ball.y >= rectOneyPos + 30 && ball.y <= rectOneyPos + 40 && ball.x >= rectOnexPos) 
    {
      enemyChance = random(0, 60);
      randomness = 1;
    }
    if (ball.x <= rectOnexPos + 20 && ball.y >= rectOneyPos + 25 && ball.y <= rectOneyPos + 30 && ball.x >= rectOnexPos) 
    {
      enemyChance = random(0, 60);
      randomness = 0;
    }
    if (ball.x <= rectOnexPos + 20 && ball.y >= rectOneyPos + 20 && ball.y <= rectOneyPos + 30 && ball.x >= rectOnexPos) 
    {
      enemyChance = random(0, 60);
      randomness = -1;
    }
    if (ball.x <= rectOnexPos + 20 && ball.y >= rectOneyPos + 10 && ball.y <= rectOneyPos + 20 && ball.x >= rectOnexPos) 
    {
      enemyChance = random(0, 60);
      randomness = -2;
    }
    if (ball.x <= rectOnexPos + 20 && ball.y >= rectOneyPos + 0 && ball.y <= rectOneyPos + 10 && ball.x >= rectOnexPos) 
    {
      randomness = -3;
      enemyChance = random(0, 60);
    }
    if (ball.x >= rectTwoxPos - 20 && ball.y >= rectTwoyPos + 50 && ball.y <= rectTwoyPos + 60 && ball.x <= rectTwoxPos) 
    {
      randomness = 3;
    }
    if (ball.x >= rectTwoxPos && ball.y >= rectTwoyPos + 40 && ball.y <= rectTwoyPos + 50 && ball.x <= rectTwoxPos) 
    {
      randomness = 2;
    }
    if (ball.x >= rectTwoxPos && ball.y >= rectTwoyPos + 30 && ball.y <= rectTwoyPos + 40 && ball.x <= rectTwoxPos) 
    {
      randomness = 1;
    }
    if (ball.x >= rectTwoxPos && ball.y >= rectTwoyPos + 25 && ball.y <= rectTwoyPos + 30 && ball.x <= rectTwoxPos) 
    {
      randomness = 0;
    }
    if (ball.x >= rectTwoxPos && ball.y >= rectTwoyPos + 20 && ball.y <= rectTwoyPos + 30 && ball.x <= rectTwoxPos) 
    {
      randomness = -1;
    }
    if (ball.x >= rectTwoxPos && ball.y >= rectTwoyPos + 10 && ball.y <= rectTwoyPos + 20 && ball.x <= rectTwoxPos) 
    {
      randomness = -2;
    }
    if (ball.x >= rectTwoxPos && ball.y >= rectTwoyPos + 0 && ball.y <= rectTwoyPos + 10 && ball.x <= rectTwoxPos) 
    {
      randomness = -3;
    }
  }

  void offSet() 
  {
    if (enemyChance >= 1 && enemyChance <= 7) 
    {
      enemyOneyPos = enemyOneyPos + 70;
    }
    if (enemyChance >= 10.1 && enemyChance <= 20) 
    {
      enemyOneyPos = enemyOneyPos + 20;
    }
    if (enemyChance >= 20.1 && enemyChance <= 25) 
    {
      enemyOneyPos = enemyOneyPos + 10;
    }
    if (enemyChance >= 35 && enemyChance <= 40) 
    {
      enemyOneyPos = enemyOneyPos - 10;
    }
    if (enemyChance >= 40.1 && enemyChance <= 50) 
    {
      enemyOneyPos = enemyOneyPos - 20;
    }
    if (enemyChance >= 55 && enemyChance <= 60) 
    {
      enemyOneyPos = enemyOneyPos - 70;
    }
  }
}