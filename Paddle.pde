class Paddle
{
  float y = displayHeight/2;
  float x = displayWidth/8;

  void show() 
  {
    rect(x, y, 10, 10);
  }

  void collision() 
  {
    if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos && ballyPos <= rectOneyPos + 60 && ballxPos >= rectOnexPos + 15) 
    {
      ballxSpeed = ballxSpeed * -1;
    }
    if (ballxPos >= rectTwoxPos && ballyPos >= enemyOneyPos && ballyPos <= enemyOneyPos + 60 && ballxPos <= rectTwoxPos + 5) 
    {
      ballxSpeed = ballxSpeed * -1;
    }
  }

  void randomness() 
  {
    if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 50 && ballyPos <= rectOneyPos + 60 && ballxPos >= rectOnexPos) 
    {
      enemyChance = random(-15, 15);
      randomness = 3;
    }
    if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 40 && ballyPos <= rectOneyPos + 50 && ballxPos >= rectOnexPos) 
    {
      enemyChance = random(0, 60);
      randomness = 2;
    }
    if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 30 && ballyPos <= rectOneyPos + 40 && ballxPos >= rectOnexPos) 
    {
      enemyChance = random(0, 60);
      randomness = 1;
    }
    if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 25 && ballyPos <= rectOneyPos + 30 && ballxPos >= rectOnexPos) 
    {
      enemyChance = random(0, 60);
      randomness = 0;
    }
    if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 20 && ballyPos <= rectOneyPos + 30 && ballxPos >= rectOnexPos) 
    {
      enemyChance = random(0, 60);
      randomness = -1;
    }
    if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 10 && ballyPos <= rectOneyPos + 20 && ballxPos >= rectOnexPos) 
    {
      enemyChance = random(0, 60);
      randomness = -2;
    }
    if (ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos + 0 && ballyPos <= rectOneyPos + 10 && ballxPos >= rectOnexPos) 
    {
      randomness = -3;
      enemyChance = random(0, 60);
    }
    if (ballxPos >= rectTwoxPos - 20 && ballyPos >= rectTwoyPos + 50 && ballyPos <= rectTwoyPos + 60 && ballxPos <= rectTwoxPos) 
    {
      randomness = 3;
    }
    if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 40 && ballyPos <= rectTwoyPos + 50 && ballxPos <= rectTwoxPos) 
    {
      randomness = 2;
    }
    if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 30 && ballyPos <= rectTwoyPos + 40 && ballxPos <= rectTwoxPos) 
    {
      randomness = 1;
    }
    if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 25 && ballyPos <= rectTwoyPos + 30 && ballxPos <= rectTwoxPos) 
    {
      randomness = 0;
    }
    if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 20 && ballyPos <= rectTwoyPos + 30 && ballxPos <= rectTwoxPos) 
    {
      randomness = -1;
    }
    if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 10 && ballyPos <= rectTwoyPos + 20 && ballxPos <= rectTwoxPos) 
    {
      randomness = -2;
    }
    if (ballxPos >= rectTwoxPos && ballyPos >= rectTwoyPos + 0 && ballyPos <= rectTwoyPos + 10 && ballxPos <= rectTwoxPos) 
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