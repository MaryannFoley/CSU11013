Player thePlayer;
Player theComputer;

Ball theBall;
void settings(){
size(SCREENX, SCREENY);
}
void setup(){
thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
theComputer = new Player(MARGIN);
theBall = new Ball();
ellipseMode(RADIUS);
frameRate(180);
}
void draw() {
background(0);
thePlayer.move(mouseX);
theBall.move();
theBall.collide(thePlayer);
theBall.collide(theComputer);
theComputer.moveComputer();
theBall.collideWall();
thePlayer.draw();
theBall.draw();
theComputer.draw();
}

void mousePressed(){
reset();
}
 void reset(){
 draw();
 setup();
 }
