void deathScreen() 
{
  if (deathScreen == 2) 
  {
    background(255, 0, 0);
    score = 0;
    textSize(60);
    text("Game Over", 80, 250);
    textSize(20);
    text("Press M to go to the main menu", 90, 300);
    if (keyPressed == true) 
    {
      if (key == 'm') {
        deathScreen = 1;
        menu = 1;
      }
    }
  }
}

void menu() 
{
  if (menu == 1) 
  {
    lifes = 5;
    background(0);
    textSize(40);
    text("Press R to begin", 90, 250);
  }
}