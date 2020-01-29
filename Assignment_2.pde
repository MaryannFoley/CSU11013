Player thePlayer;
Player theComputer;
int playerScore;
int computerScore;
boolean gameOver;

Ball theBall;
void settings(){
size(SCREENX, SCREENY);
playerScore=0;
computerScore=0;
gameOver=false;
loadFont("Century-48.vlw");
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
if (!gameOver){
thePlayer.move(mouseX);
theBall.move();
theBall.collide(thePlayer);
theBall.collide(theComputer);
theComputer.moveComputer();
theBall.collideWall();
thePlayer.draw();
theComputer.draw();
theBall.draw();
if (theBall.offScreen() == 1){
  reset();
  computerScore +=1;
}
else if (theBall.offScreen() == 2){
  reset();
  playerScore +=1;
}}
else{
  if (playerScore>=2){
     displayMessage("win.");
   }
   else if (computerScore>=2){
     displayMessage("lose.");
   }
}}


void mousePressed(){
reset();
}
 void reset(){
   if (playerScore>=2 || computerScore>=2){
     gameOver=true;
   }
   else{
 setup();
 draw();
   }
 }
 
void displayMessage(String message){
  loadFont("Century-48.vlw");
  text("Game over. You "+message,SCREENX/4, SCREENY/2);
  
}
