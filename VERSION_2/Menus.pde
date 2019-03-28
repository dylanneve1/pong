// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>

class Menus
{

  boolean playing = false;
  boolean menu = true;
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
      fill(255);
      textSize(20);
      text("Score", 50, 30);
      text(ball.playerScore, 50, 60);
      text("Score", 450, 30);
      text(ball.enemyScore, 450, 60);
      //text(enemy.whatIsChance, 250, 100);
      //text(ball.chance, 250, 40);
      //text(enemy.diff, 250, 160);
    }
  }

  void dead()
  {
    if (dead == true)
    {
      textAlign(CENTER);
      textSize(50);
      background(#BF360C);
      fill(255);
      text("You lost", 250, 250);
    }
  }

  void won()
  {
    if (won == true)
    {
      textAlign(CENTER);
      background(#01579B);
      textSize(50);
      text("You won", 250, 250);
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
      text("PONG", 250, 200);
      textSize(20);
      text("Press Up Key to Begin", 250, 300);
      text("First to 5 Wins", 250, 250);

      if (keyPressed == true)
      {
        if (key == CODED)
          if (keyCode == UP) {
            {
              playing = true;
              menu = false;
            }
          }
      }
    }
  }
}
