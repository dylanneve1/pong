// Copyright (C) 2018 Dylan Neve <dylanneve1@gmail.com>
// Android version

Enemy enemy;
Paddle paddle;
Menus menus;
Ball ball;

void setup()
{
  // Force landscape on Android
  frameRate(60);
  orientation(LANDSCAPE);
  paddle = new Paddle();
  enemy = new Enemy();
  menus = new Menus();
  ball = new Ball();
  // Base size on display
  size(displayWidth, displayHeight);
}

void draw()
{
  // Calls all menus.
  menus.caller();
}