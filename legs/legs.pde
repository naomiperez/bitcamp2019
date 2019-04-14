
float x = 0, dx;
int buttonX, buttonY, buttonW = 50, buttonH = 70;
int legXpos;
float octoW = 395.5, octoH = 248, legW = 17, legH = 250;

float amp = 75.0, theta = 0.0, period = 70;
PImage img, rFoot, lFoot, keyboard, fire1, fire2, fire3, 
fire4, fire5, fire6, fire7, log, logo;

void setup(){
  size(500, 600);
  background(204, 102, 0);
  stroke(30);
  img = loadImage("https://raw.githubusercontent.com/naomiperez/legendary-broccoli/master/Octocat.png");
  rFoot = loadImage("https://raw.githubusercontent.com/naomiperez/legendary-broccoli/master/lightishfeet.png");
  lFoot = loadImage("https://raw.githubusercontent.com/naomiperez/legendary-broccoli/master/leftlighter.png");
  keyboard = loadImage("https://raw.githubusercontent.com/naomiperez/legendary-broccoli/master/keeboard.png");
  logo = loadImage("https://raw.githubusercontent.com/naomiperez/legendary-broccoli/master/bitcamp-logo.png");
  
  

  fill(30);
  //rect(buttonX, buttonY, buttonH, buttonW, 7);
  legXpos = width/2 + 1;
  
  
  

}


void draw(){
  background(196,212,214);
  
  // row 1
  image(logo, -50, 10, 140, 110);
  image(logo, 100, 10, 140, 110);
  image(logo, 250, 10, 140, 110);
  image(logo, 400, 10, 140, 110);
  //row 2
  image(logo, -50, 180, 140, 110);
  image(logo, 100, 180, 140, 110);
  image(logo, 250, 180, 140, 110);
  image(logo, 400, 180, 140, 110);
  
  image(logo, -50, 350, 140, 110);
  image(logo, 100, 350, 140, 110);
  image(logo, 250, 350, 140, 110);
  image(logo, 400, 350, 140, 110);
  
  image(logo, -50, 520, 140, 110);
  image(logo, 100, 520, 140, 110);
  image(logo, 250, 520, 140, 110);
  image(logo, 400, 520, 140, 110);
  
  image(keyboard, width/2 - (265/2), 490, 265, 176.5);
  image(img, width/2 - octoW/2, height/2 - octoH/2 -160, octoW, octoH);
 
  dx = (TWO_PI/period) * 16;
  
  x = theta;
  theta += 0.12;

  float height1 =  (height/2 -80) + sin(x + dx)*amp;
  float height2 = (height/2 -80) + sin(x + (2*dx))*amp;
  float height3 = (height/2 - 80) + sin(x + (3*dx))*amp;
  float height4 = (height/2 - 80) + sin(x + (4*dx))*amp;
  
 
  image(rFoot, 270, 244 + height4, 36, 43);
  image(rFoot, 246, 244 + height3, 38, 43);
  image(lFoot, 213, 244 + height2, 38, 43);
  image(lFoot, 188, 244 + height1, 38, 43);
 
  rect(legXpos - 48, legH, legW, height1);
  rect(legXpos - 24, legH, legW+1, height2);
  rect(legXpos, legH, legW+1, height3);
  rect(legXpos + 24, legH, legW, height4);
  

  
}
