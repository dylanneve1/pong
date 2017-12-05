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
  
  void offSet() 
  {
    if(enemyChance >= 1 && enemyChance <= 7) 
    {
      enemyOneyPos = enemyOneyPos + 70;
    }
    if(enemyChance >= 10.1 && enemyChance <= 20) 
    {
      enemyOneyPos = enemyOneyPos + 20;
    }
    if(enemyChance >= 20.1 && enemyChance <= 25) 
    {
      enemyOneyPos = enemyOneyPos + 10;
    }
    if(enemyChance >= 35 && enemyChance <= 40) 
    {
      enemyOneyPos = enemyOneyPos - 10;
    }
    if(enemyChance >= 40.1 && enemyChance <= 50) 
    {
      enemyOneyPos = enemyOneyPos - 20;
    }
    if(enemyChance >= 55 && enemyChance <= 60) 
    {
      enemyOneyPos = enemyOneyPos - 70;
    }
  } 
}