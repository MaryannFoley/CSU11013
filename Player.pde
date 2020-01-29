class Player {
float xpos; int ypos;
color paddlecolor = color(50);
Player(int screen_y)
{
xpos=SCREENX/2;
ypos=screen_y;
}
void move(int x){
if(x>SCREENX-PADDLEWIDTH) xpos = SCREENX-PADDLEWIDTH;
else xpos=x;
}
void draw()
{
fill(paddlecolor);
rect(xpos, ypos, PADDLEWIDTH, PADDLEHEIGHT);
}

void moveComputer(){
  if (theBall.x < xpos + 125)
  {
    if (!(xpos <= 0)) {  
    xpos -= 1.25;
    }
  }
  if (theBall.x > xpos + 125)
  {
     if (!(xpos + 250 >= SCREENX)) {
    xpos += 1.25;
     }
  }
}
}
