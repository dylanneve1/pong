float ballxPos = 225;
float ballyPos = 225;
float ballxSpeed = 4;
float ballySpeed = 1.5;

int menu = 1;

int rectOnexPos = 30;
int rectOneyPos = 250;
int rectTwoxPos = 450;
int rectTwoyPos = 250;

int score = 0;
int highScore = 0;

void setup() {
  size(500, 500);
}

void draw() {
  menu();
  if(keyPressed == true) { 
    if(key == 'r') {
      menu = 2;
    }
  }
  if(menu == 2) {
    background(0);
    textSize(20);
    text("Score", 230, 20);
    text(score, 250, 45);
    text("High score", 300, 20);
    text(highScore, 344, 45);
    collision();
    gravity();
    move();
    bounce();
    display();
    rect(rectOnexPos, rectOneyPos, 20, 60);
    //rect(rectTwoxPos, rectTwoyPos, 20, 60);
    if(keyPressed == true) {
      if(key == 'w') {
        rectOneyPos = rectOneyPos - 4;
      }
      if(key == 's') {
        rectOneyPos = rectOneyPos + 4;
      }
      //if(key == 'i') {
        //rectTwoyPos = rectTwoyPos - 4;
      //}
      //if(key == 'k') {
        //rectTwoyPos = rectTwoyPos + 4;
      //}
    }
  }
}
  
void menu() {
  if(menu == 1) {
    background(0);
    textSize(40);
    text("Press R to begin", 90, 250);
  }
}
    
void display() {
  ellipse(ballxPos, ballyPos, 20, 20);
}

void move() {
  ballxPos = ballxPos + ballxSpeed;
  ballyPos = ballyPos + ballySpeed;
}

void bounce() {
  if (ballxPos >= 500) {
    ballxSpeed = ballxSpeed*-1;
  }
  if (ballxPos <= 0) {
    if(score >= highScore) {
      highScore = score;
    }
    ballxPos = 450;
    delay(3000);
    score = 0;
  }
}

void gravity() {

  if (ballyPos >= 500) {
    ballySpeed = ballySpeed*-1;
  }
  if (ballyPos <= 1) {
    ballySpeed = ballySpeed*-1;
  }
}

void collision() {
  if(ballxPos <= rectOnexPos + 20 && ballyPos >= rectOneyPos && ballyPos <= rectOneyPos + 60 && ballxPos >= rectOnexPos) {
    ballxSpeed = ballxSpeed * -1;
    score = score + 1;
  }
}