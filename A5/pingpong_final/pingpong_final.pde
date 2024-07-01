ball Ball;
paddle paddle;
prompt prompt;
score Score;
gameOver game;

Background[] rain;

// MESSAGES THAT APPEAR AFTER THE GAME STARTS
String message = "Don't let the ball reach the bottom edge!";
String message2 = "Paddle glitches are common, ball may go through it. Be careful!";

int r = 200;                 // NUMBER OF STARS IN THE SKY
int startTime = 0;           // TIME BEFORE THE MESSAGES APPEAR
int displayDuration = 5000;  // HOW LONG THE MESSAGES ARE VISIBLE FOR

boolean gameStart = false;
boolean gameOver = false;

void setup() {
  size(1280, 720);
  rectMode(CENTER);
  textAlign(CENTER);
  frameRate(75);
  smooth();

  // DECLARING VALUES FOR TIME PROMPT DISPLAY TIME
  startTime = millis();

  rain = new Background[r];
  for (int i = 0; i < rain.length; i++) {
    rain[i] = new Background(random(width), -10, random(5));
  }

  Ball = new ball(width/2, height/2);
  paddle = new paddle();
  prompt = new prompt(width/2, height/2);
  Score  = new score(1000, 100);
  game   = new gameOver(width/2, height - 520);
}

void draw() {
  background(0);
  for (int i = 0; i < rain.length; i++) {
    rain[i].update();
    rain[i].show();
  }

  // PROMPT WILL BE AVAILABLE FOR THE GIVEN DISPLAY DURATION ^^
  textFont(prompt.digital);
  int elapsedTime = millis() - startTime;
  if (gameStart == true && !gameOver) {
    startTime = 0;
    if (elapsedTime < displayDuration) {
      fill(255);
      text(message, prompt.x, prompt.y - 200 + sin(frameCount * 0.03) * 10);
      textSize(30);
      text(message2, prompt.x, prompt.y - 145 + sin(frameCount * 0.05) * 5);
    }
  }

  // DRAW THE BALL AND MOVE IT WHEN GAME STARTS
  Ball.display();
  if (gameStart) {
    Ball.move();
    // IF BALL GOES OFF THE EDGE, IT'S GAME OVER.
    if (Ball.y > height + 10) {
      game.over();
    }
  }

  // DISPLAY GAME TITLE + STARTER PROMPT
  prompt.display();
  paddle.display();
  paddle.move();
  
  // DISPLAY THE SCORE
  Score.display();
  Score.update();
}

// WHEN M1 IS PRESSED, GAME WILL BEGIN
void mouseClicked() {
  if (mouseButton == LEFT) {
    gameStart = true;
    Score.running = true;
  }
}
