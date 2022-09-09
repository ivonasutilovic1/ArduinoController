import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(192);
  for(int i = 0; i < 16; i++)
    System.out.print(i+" "+arduino.analogRead(i) + "\t");
  System.out.println();
{
 int y = arduino.analogRead(5);
 int rB = arduino.analogRead(1);
  System.out.println(y);
 background(240, 230, 140);
 fill(255, 209, 220);
 ellipse(200,250,200,200); //face
 fill(255,255,255);
 ellipse(160,230,25+y,25+y);//white eye left
 ellipse(240,230,25+y,25+y); //white eye right
 fill(0,0,0);
 ellipse(240,235,15+y,15+y);//right eye
 ellipse(160,235,15+y,15+y);//left eye
 
 if(rB > 500){
   fill(252, 142, 172);
   ellipse(200,280,100+15,50+15); //big nose
   fill(255, 142, 142);
   ellipse(180,280,10+15,20+15); //nose
   ellipse(220,280,10+15,20+15); //nose
 }else{
   fill(252, 142, 172);
 ellipse(200,280,100,50); //big nose
 fill(255, 142, 142);
 ellipse(180,280,10,20); //nose
 ellipse(220,280,10,20); //nose
 }
 
 fill(255, 192, 203);
 triangle(125,100,75,200,125,200); // left ear
 triangle(275,100,275,200,325,200); // right ear
 fill(193, 154, 107);
 ellipse(425, 380, 100, 100);//cookie
 fill(123, 63, 0);
 ellipse(425, 360, 10, 10);//chocolate chips
 ellipse(415, 340, 10, 10);
 ellipse(455, 390, 10, 10);
 ellipse(425, 420, 10, 10);
 ellipse(435, 390, 10, 10);
 ellipse(385, 360, 10, 10);
 ellipse(400, 400, 10, 10);
 ellipse(460, 370, 10, 10);//
}
}
