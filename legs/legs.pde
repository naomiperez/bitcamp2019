float x = 0, dx;
int legXpos;
float octoW = 395.5, octoH = 248, legW = 17, legH = 250;
float amp = 75.0, theta = 0.0, period = 70;
PImage img, rFoot, lFoot, keyboard, logo;

void setup(){
  size(500, 600);
  background(204, 102, 0);
  frameRate(60);
  img = loadImage("https://raw.githubusercontent.com/naomiperez/legendary-broccoli/master/Octocat.png");
  rFoot = loadImage("https://raw.githubusercontent.com/naomiperez/legendary-broccoli/master/lightishfeet.png");
  lFoot = loadImage("https://raw.githubusercontent.com/naomiperez/legendary-broccoli/master/leftlighter.png");
  keyboard = loadImage("https://raw.githubusercontent.com/naomiperez/legendary-broccoli/master/keeboard.png");
  logo = loadImage("https://raw.githubusercontent.com/naomiperez/legendary-broccoli/master/bitcamp-logo.png");
  
  legXpos = width/2 + 1;
}


void draw(){
  background(196,212,214);
  
  dx = (TWO_PI/period) * 16;
  x = theta;
  theta += 0.12;
  float offset = (sin(x/2)*amp)/5;
  
  // row 1
  image(logo, -50 + offset, 10, 140, 110);
  image(logo, 100 + offset, 10, 140, 110);
  image(logo, 250 + offset, 10, 140, 110);
  image(logo, 400 + offset, 10, 140, 110);
  //row 2
  image(logo, -50 - offset, 180, 140, 110);
  image(logo, 100 - offset, 180, 140, 110);
  image(logo, 250 - offset, 180, 140, 110);
  image(logo, 400 - offset, 180, 140, 110);
  //row 3
  image(logo, -50 + offset, 350, 140, 110);
  image(logo, 100 + offset, 350, 140, 110);
  image(logo, 250 + offset, 350, 140, 110);
  image(logo, 400 + offset, 350, 140, 110);
  //row 4
  image(logo, -50 - offset, 520, 140, 110);
  image(logo, 100 - offset, 520, 140, 110);
  image(logo, 250 - offset, 520, 140, 110);
  image(logo, 400 - offset, 520, 140, 110);
  
  image(keyboard, width/2 - (265/2), 490, 265, 176.5);
  image(img, width/2 - octoW/2, height/2 - octoH/2 -160, octoW, octoH);
 
  //LEGS
  float height1 =  (height/2 -80) + sin(x + dx)*amp;
  float height2 = (height/2 -80) + sin(x + (2*dx))*amp;
  float height3 = (height/2 - 80) + sin(x + (3*dx))*amp;
  float height4 = (height/2 - 80) + sin(x + (4*dx))*amp;
  
  image(rFoot, 270, 244 + height4, 36, 43);
  image(rFoot, 246, 244 + height3, 38, 43);
  image(lFoot, 213, 244 + height2, 38, 43);
  image(lFoot, 188, 244 + height1, 38, 43);
  
  stroke(30);
  fill(30);
  rect(legXpos - 48, legH, legW, height1);
  rect(legXpos - 24, legH, legW+1, height2);
  rect(legXpos, legH, legW+1, height3);
  rect(legXpos + 24, legH, legW, height4);
  
  //EYES
  float eyeHeight = (sin(x/2.75) * amp) / 1.25;
  
  if (eyeHeight < 0) {
    eyeHeight = 0;
  }
  
  noStroke();
  fill(244, 202, 177);
  rect(185, 117, 40, eyeHeight);
  rect(275, 117, 40, eyeHeight);

}
