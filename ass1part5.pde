color square1;
int square1x;
int square1y;
float square1ysin;
color square2;
int square2x;
int square2y;
int squaredim;
int windowdim;

void setup(){
  windowdim = 100;
  size(100,100);
  square1 = color(252, 186, 3);
  square1x = 20;
  square1y = 30;
  square1ysin = .1;
  square2 = color(6, 74, 40);
  square2x = 70;
  square2y = 70;  
  squaredim = 20;
}

void draw(){
  clear();
  
  square1x+=1;
  if (square1x >= (windowdim-squaredim)){
    if (square1x> windowdim){
      square1x = 0;
    }
    else{
      fill(square1);
      rect(0,(20*sin(square1ysin)+square1y),squaredim-(windowdim-square1x),squaredim);
    }
  }
  square1ysin +=.1;
  
  square2x-=1;
  if (square2x <=0){
    square2x= windowdim;
  }  
  if (square2x >= (windowdim-squaredim)){
    fill(square2);
     rect(0,square2y,squaredim-(windowdim-square2x),squaredim);
  }
  
  fill(square1);
  rect(square1x,(50*sin(square1ysin)+square1y),squaredim,squaredim);
  
  fill(square2);
  rect(square2x,square2y,squaredim,squaredim);
}
