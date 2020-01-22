color square1;
int square1x;
int square1y;
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
  square2 = color(6, 74, 40);
  square2x = 70;
  square2y = 70;  
  squaredim = 20;
}

void draw(){
  clear();
  fill(square1);
  rect(square1x,square1y,squaredim,squaredim);
  
  square1x+=1;
  if (square1x >= (windowdim-squaredim)){
    if (square1x> windowdim){
      square1x = 0;
    }
    else{
      rect(0,square1y,squaredim-(windowdim-square1x),squaredim);
    }
  }
  fill(square2);
  rect(square2x,square2y,squaredim,squaredim);
  
  square2x-=1;
  if (square2x <=0){
    square2x= windowdim;
  }  
  if (square2x >= (windowdim-squaredim)){
     rect(0,square2y,squaredim-(windowdim-square2x),squaredim);
  }
}
