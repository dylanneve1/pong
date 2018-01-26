// Copyright (C) 2017 Dylan Neve <dylanneve1@gmail.com>

import garciadelcastillo.dashedlines.*;

DashedLines dash;
Enemy enemy;
Paddle paddle;
Menus menus;
Ball ball;

void setup()
{
  paddle = new Paddle();
  enemy = new Enemy();
  menus = new Menus();
  ball = new Ball();
  dash = new DashedLines(this);
  dash.pattern(10, 5);
  size(500, 500);
}

void draw()
{
  menus.caller();
}