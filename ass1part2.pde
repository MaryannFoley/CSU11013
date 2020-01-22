color square1;
int square1x;
int square1y;
int squaredim;

void setup(){
  size(100,100);
  square1 = color(252, 186, 3);
  square1x = 40;
  square1y = 30;
  squaredim = 20;
}

void draw(){
  clear();
  fill(square1);
  rect(square1x,square1y,squaredim,squaredim);
  
  square1x+=1;
  if (square1x >= (100-squaredim)){
    square1x = 40;
  }
}
