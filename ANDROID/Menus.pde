// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Menus
{

  boolean playing = true;
  boolean menu = false;
  boolean dead = false;
  boolean won = false;

  void caller()
  {
    menu();
    play();
    dead();
    won();
  }

  void play()
  {
    if (playing == true)
    {
      background(#263238);
      //background(0);
      paddle.caller();
      enemy.caller();
      ball.caller();
      textAlign(CENTER);
      fill(255);
      textSize(displayWidth * 0.04);
      text("Score", displayWidth * 0.1, displayWidth * 0.06);
      text(ball.playerScore, displayWidth * 0.1, displayWidth * 0.12);
      text("Score", displayWidth * 0.9, displayWidth * 0.06);
      text(ball.enemyScore, displayWidth * 0.9, displayWidth * 0.12);
    }
  }

  void dead()
  {
    if (dead == true)
    {
      background(#BF360C);
    }
  }

  void won()
  {
    if (won == true)
    {
      background(#01579B);
    }
  }

  void menu()
  {
    if (menu == true)
    {

      background(#263238);
      fill(255);
      textSize(40);
      textAlign(CENTER);
      text("Press r to begin", 250, 250);

      if (keyPressed == true)
      {
        if (key == 'r')
        {
          playing = true;
          menu = false;
        }
      }
    }
  }
}