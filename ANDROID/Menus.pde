// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

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
      delay(5000);
      dead = false;
      menu = true;
    }
  }

  void won()
  {
    if (won == true)
    {
      background(#01579B);
      delay(5000);
      won = false;
      menu = true;
    }
  }

  void menu()
  {
    if (menu == true)
    {
      background(#263238);
      textSize(displayWidth * 0.04);
      textAlign(CENTER);
      rectMode(CENTER);
      //fill(0);
      //rect(displayWidth/2, displayHeight/2, displayWidth * 0.3, displayHeight * 0.3);
      fill(255);
      text("Tap to play", displayWidth/2, displayHeight/2);

      if (mousePressed == true)
      {
        delay(500);
        menu = false;
        playing = true;
      }
    }
  }
}