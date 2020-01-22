color square1;
color square2;
color square3;

int square1x;
int square2x;
int square3y;

int square1y;
int square2y;
int square3x;

void setup(){
  size(100,100);
  square1 = color(252, 186, 3);
  square2 = color(177, 3, 252);
  square3 = color(28, 128, 55);
  
  square1x = 40;
  square2x = 50;
  square3y = 50;
  
  square1y = 30;
  square2y = 40;
  square3x = 60;
}

void draw(){
  clear();
  fill(square1);
  rect(square1x,square1y,20,20);
  fill(square2);
  rect(square2x,square2y,20,20);
  fill(square3);
  rect(square3x,square3y,20,20);
  
  square1x+=1;
  square2x-=1;
  square3y+=1;
}
