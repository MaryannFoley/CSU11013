ArrayList widgetList;
PFont stdFont;
final int EVENT_BUTTON_RED=1;
final int EVENT_BUTTON_GREEN=2; 
final int EVENT_BUTTON_BLUE=3; 
final int EVENT_NULL=0; 
color squareColor = color(250);
int mouseOver = -1;

void setup(){
Widget widget1, widget2, widget3;
size(400, 400);
stdFont=loadFont("BodoniSvtyTwoSCITCTT-Book-36.vlw"); 
textFont(stdFont); 
widget1=new Widget(100, 100, 100, 40,
"red", color(250,0,0), stdFont,
EVENT_BUTTON_RED);
widget2=new Widget(100, 200, 100, 40,
"green", color(0,250,0), stdFont, EVENT_BUTTON_GREEN);
widget3=new Widget(100, 300, 100, 40,
"blue", color(0,0,250), stdFont, EVENT_BUTTON_BLUE);
widgetList = new ArrayList();
widgetList.add(widget1); widgetList.add(widget2); widgetList.add(widget3);
}
void draw(){
for(int i = 0; i<widgetList.size(); i++){ 
  Widget aWidget = (Widget) widgetList.get(i); 
  if (mouseOver == i){
    stroke(color(250));
  }
  else{
    stroke(color(0));
  }
aWidget.draw();
}
stroke(color(0));
fill(squareColor);
rect(250,200,40,40);
}

void mousePressed(){ int event;
for(int i = 0; i<widgetList.size(); i++){ Widget aWidget = (Widget) widgetList.get(i);
event = aWidget.getEvent(mouseX,mouseY); switch(event) {
case EVENT_BUTTON_RED: println("red button!"); squareColor = color(250,0,0);break;
case EVENT_BUTTON_GREEN: println("green button!");squareColor = color(0,250,0); break;
case EVENT_BUTTON_BLUE: println("blue button!"); squareColor = color(0,0,250);break;
} }
}
void mouseMoved(){ int event;
for(int i = 0; i<widgetList.size(); i++){ Widget aWidget = (Widget) widgetList.get(i);
event = aWidget.getEvent(mouseX,mouseY); switch(event) {
case EVENT_BUTTON_RED: aWidget.strokeColor=255;break;
case EVENT_BUTTON_GREEN: aWidget.strokeColor=255; break;
case EVENT_BUTTON_BLUE: aWidget.strokeColor=255;break;
case EVENT_NULL: aWidget.strokeColor=0;
} }
}
