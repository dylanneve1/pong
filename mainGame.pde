Paddle paddle;
Ball ball;
gameScreens screens;

int score = 0;
int highScore = 0;

void setup() 
{
  paddle = new Paddle();
  ball = new Ball();
  screens = new gameScreens();
  size(500, 500);
  frameRate(60);
}

void draw() 
{
  paddle.enemyOneyPos = ball.y - 30;
  screens.menu();
  screens.deathScreen();
  if (keyPressed == true) 
  { 
    if (key == 'r') 
    {
      screens.menu = 2;
    }
  }
  if (screens.menu == 2) 
  {
    screens.gameMainSing();
  }
}