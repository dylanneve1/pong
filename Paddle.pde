class Paddle
{
  int playerOnexPos = 30;
  int playerOneyPos = 250;
  int playerTwoxPos = 450;
  int playerTwoyPos = 250;
  int rectTwoxPos = 450;
  int rectTwoyPos = 250;
  float enemyOneyPos;
  float randomness = 0;

  void collision() 
  {
    if (ball.x <= playerOnexPos + 20 && ball.y >= playerOneyPos && ball.y <= playerOneyPos + 60 && ball.x >= playerOnexPos + 15) 
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
    if (ball.x <= playerOnexPos + 20 && ball.y >= playerOneyPos + 50 && ball.y <= playerOneyPos + 60 && ball.x >= playerOnexPos) 
    {
      ball.enemyChance = random(-15, 15);
      randomness = 3;
    }
    if (ball.x <= playerOnexPos + 20 && ball.y >= playerOneyPos + 40 && ball.y <= playerOneyPos + 50 && ball.x >= playerOnexPos) 
    {
      ball.enemyChance = random(0, 60);
      randomness = 2;
    }
    if (ball.x <= playerOnexPos + 20 && ball.y >= playerOneyPos + 30 && ball.y <= playerOneyPos + 40 && ball.x >= playerOnexPos) 
    {
      ball.enemyChance = random(0, 60);
      randomness = 1;
    }
    if (ball.x <= playerOnexPos + 20 && ball.y >= playerOneyPos + 25 && ball.y <= playerOneyPos + 30 && ball.x >= playerOnexPos) 
    {
      ball.enemyChance = random(0, 60);
      randomness = 0;
    }
    if (ball.x <= playerOnexPos + 20 && ball.y >= playerOneyPos + 20 && ball.y <= playerOneyPos + 30 && ball.x >= playerOnexPos) 
    {
      ball.enemyChance = random(0, 60);
      randomness = -1;
    }
    if (ball.x <= playerOnexPos + 20 && ball.y >= playerOneyPos + 10 && ball.y <= playerOneyPos + 20 && ball.x >= playerOnexPos) 
    {
      ball.enemyChance = random(0, 60);
      randomness = -2;
    }
    if (ball.x <= playerOnexPos + 20 && ball.y >= playerOneyPos + 0 && ball.y <= playerOneyPos + 10 && ball.x >= playerOnexPos) 
    {
      randomness = -3;
      ball.enemyChance = random(0, 60);
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
    if (ball.enemyChance >= 1 && ball.enemyChance <= 7) 
    {
      enemyOneyPos = enemyOneyPos + 70;
    }
    if (ball.enemyChance >= 10.1 && ball.enemyChance <= 20) 
    {
      enemyOneyPos = enemyOneyPos + 20;
    }
    if (ball.enemyChance >= 20.1 && ball.enemyChance <= 25) 
    {
      enemyOneyPos = enemyOneyPos + 10;
    }
    if (ball.enemyChance >= 35 && ball.enemyChance <= 40) 
    {
      enemyOneyPos = enemyOneyPos - 10;
    }
    if (ball.enemyChance >= 40.1 && ball.enemyChance <= 50) 
    {
      enemyOneyPos = enemyOneyPos - 20;
    }
    if (ball.enemyChance >= 55 && ball.enemyChance <= 60) 
    {
      enemyOneyPos = enemyOneyPos - 70;
    }
  }
}