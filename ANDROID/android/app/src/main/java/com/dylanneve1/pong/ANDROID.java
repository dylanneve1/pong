package com.dylanneve1.pong;

import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ANDROID extends PApplet {

// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

Enemy enemy;
Paddle paddle;
Menus menus;
Ball ball;

public void setup()
{
  // Force landscape on Android
  //fullScreen();
  frameRate(60);
  orientation(LANDSCAPE);
  paddle = new Paddle();
  enemy = new Enemy();
  menus = new Menus();
  ball = new Ball();
  // Base size on display
  
}

public void draw()
{
  menus.caller();
}
// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Ball
{

  float x = displayWidth/2;
  float y = displayHeight/2;

  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;

  float xSpeed = displayWidth * 0.01f;
  float ySpeed;

  float r = displayWidth * 0.02f;

  int playerScore = 0;
  int enemyScore = 0;

  public void caller()
  {
    show();
    move();
    edgeDetect();
    sidesCollision();
    leftPaddleCollision();
    rightPaddleCollision();
    lifeDetect();
  }

  public void show()
  {
    fill(0xffECEFF1);
    ellipse(x, y, r*2, r*2);
  }

  public void move()
  {
    x = x + xSpeed;
    y = y + ySpeed;
  }

  public void edgeDetect()
  {
    rightEdge = x + r;
    leftEdge = x - r;
    topEdge = y - r;
    bottomEdge = y + r;
  }

  public void sidesCollision()
  {
    if (topEdge <= 0)
    {
      ySpeed *= -1;
    }
    if (bottomEdge >= displayHeight)
    {
      ySpeed *= -1;
    }
  }

  public void leftPaddleCollision()
  {
    if (leftEdge <= paddle.rightEdge && y <= paddle.bottomEdge && y >= paddle.topEdge && leftEdge <= paddle.rightEdge -2)
    {
      float diff = y - (paddle.y - paddle.h/2);
      float rad = radians(45);
      float angle = map(diff, 0, paddle.h, -rad, rad);
      xSpeed = (displayWidth * 20/2560) * cos(angle);
      ySpeed = (displayWidth * 20/2560) * sin(angle);
      x = paddle.x + paddle.w/2 + r;
    }
  }

  public void rightPaddleCollision()
  {
    if (rightEdge >= enemy.leftEdge && y <= enemy.bottomEdge && y >= enemy.topEdge && rightEdge >= enemy.leftEdge + 2)
    {
      float diff = y - (enemy.y - enemy.h/2);
      float angle = map(diff, 0, enemy.h, radians(225), radians(135));
      xSpeed = (displayWidth * 20/2560) * cos(angle);
      ySpeed = (displayWidth * 20/2560) * sin(angle);
      x = enemy.x - enemy.w/2 - r;
    }
  }

  public void lifeDetect()
  {
    if (leftEdge <= 0)
    {
      delay(1000);
      enemyScore += 1;
      xSpeed *= -1;
      x = displayWidth * 0.3f;
    }
    if (rightEdge >= displayWidth)
    {
      delay(1000);
      playerScore += 1;
      xSpeed *= -1;
      x = displayWidth * 0.7f;
    }

    if (enemyScore == 10)
    {
      menus.playing = false;
      menus.dead = true;
    }
    if (playerScore == 10)
    {
      menus.playing = false;
      menus.won = true;
    }
  }
}
// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Enemy
{

  float x = displayWidth * 0.94f;
  float y;

  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;

  float w = displayWidth * 0.04f;
  float h = displayWidth * 0.12f;

  public void caller()
  {
    show();
    edgeDetect();
  }

  public void show()
  {
    y = ball.y;

    noStroke();
    rectMode(CENTER);

    fill(0xffCFD8DC);
    rect(x, y, w, h);
  }

  public void edgeDetect()
  {
    leftEdge = x - w/2;
    rightEdge = x + w/2;
    topEdge = y - h/2;
    bottomEdge = y + h/2;
  }
}
// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Menus
{

  boolean playing = true;
  boolean menu = false;
  boolean dead = false;
  boolean won = false;

  public void caller()
  {
    menu();
    play();
    dead();
    won();
  }

  public void play()
  {
    if (playing == true)
    {
      background(0xff263238);
      //background(0);
      paddle.caller();
      enemy.caller();
      ball.caller();
      textAlign(CENTER);
      fill(255);
      textSize(displayWidth * 0.04f);
      text("Score", displayWidth * 0.1f, displayWidth * 0.06f);
      text(ball.playerScore, displayWidth * 0.1f, displayWidth * 0.12f);
      text("Score", displayWidth * 0.9f, displayWidth * 0.06f);
      text(ball.enemyScore, displayWidth * 0.9f, displayWidth * 0.12f);
    }
  }

  public void dead()
  {
    if (dead == true)
    {
      background(0xffBF360C);
    }
  }

  public void won()
  {
    if (won == true)
    {
      background(0xff01579B);
    }
  }

  public void menu()
  {
    if (menu == true)
    {

      background(0xff263238);
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
// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

class Paddle
{

  float x = displayWidth * 0.06f;
  float y = displayHeight/2;

  float w = displayWidth * 0.04f;
  float h = displayWidth * 0.12f;

  float leftEdge;
  float rightEdge;
  float topEdge;
  float bottomEdge;

  public void caller()
  {
    show();
    move();
    edgeDetect();
  }

  public void show()
  {
    noStroke();
    rectMode(CENTER);

    fill(0xffCFD8DC);
    rect(x, y, w, h);
  }

  public void move()
  {
    y = mouseY;
  }

  public void edgeDetect()
  {
    leftEdge = x - w/2;
    rightEdge = x + w/2;
    topEdge = y - h/2;
    bottomEdge = y + h/2;
  }
}
  public void settings() {  size(displayWidth, displayHeight); }
}
