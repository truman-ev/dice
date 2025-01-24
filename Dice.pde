/*
Truman Evans
1/15/25
Students will demonstrate their understanding of Object-Oriented Programming by designing a Die class with attributes and methods, creating multiple instances to form a grid, 
calculating and displaying the total value of the dice, and customizing the presentation of their program through HTML elements.
*/

Die dice;
int sum = 0;
int val;

void setup()
{
  noLoop();
  size(300,400);
}
void draw()
{
  background(23, 82, 35);
  
  int RdmX = (int)(Math.random()*50);
  int RdmY = (int)(Math.random()*50);
  //Die die1 = new Die (RdmX, RdmY);
  //die1.show();
  //die1.roll();
  
  
  for(int h = 1; h <= 300; h+=100){
    for(int v = 1; v <= 300; v+=100){
      dice = new Die (RdmX+h, RdmY+v);
      //rotate(random(0,4));
      dice.show();
      dice.roll();
      sum+=val;
    }
  }
  textSize(30);
  text("Total: "+sum, 95,345);
    System.out.println(sum);
    sum = 0;

}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int xPos;
  int yPos;
  //int val;
  
  Die(int x, int y) //constructor
  {
    xPos = x;
    yPos = y;
  }
  void roll()
  {
    //int val = (int) (Math.random()*6+1);              //supposed to be here but makes it not work
    //System.out.println(val);
  }
  void show()
  {
    val = (int) (Math.random()*6+1);
    //System.out.print(val);
    
    strokeWeight(.5);
    stroke(255);
    fill(189, 27, 11);
    rect(xPos, yPos, 50, 50, 3);
    noStroke();
    fill(255);
    
    if(val==1){
    ellipse(xPos+25, yPos+25, 13, 13);    //ONE
    fill(255, 255, 255, 25);
    ellipse(xPos+10, yPos+10, 13, 13);
    ellipse(xPos+40, yPos+10, 13, 13);
    ellipse(xPos+10, yPos+40, 13, 13);   
    ellipse(xPos+40, yPos+40, 13, 13);
    ellipse(xPos+10, yPos+25, 13, 13);
    ellipse(xPos+40, yPos+25, 13, 13);
    }
    
    
    else if(val==2){
    ellipse(xPos+10, yPos+10, 13, 13);
    ellipse(xPos+40, yPos+40, 13, 13);    //TWO
    fill(255,255,255,25);
    ellipse(xPos+10, yPos+10, 13, 13);
    ellipse(xPos+40, yPos+10, 13, 13);
    ellipse(xPos+10, yPos+40, 13, 13);   
    ellipse(xPos+40, yPos+40, 13, 13);
    ellipse(xPos+25, yPos+25, 13, 13);
    }
    
    else if(val==3){
    ellipse(xPos+10, yPos+10, 13, 13);
    ellipse(xPos+25, yPos+25, 13, 13);    //THREE
    ellipse(xPos+40, yPos+40, 13, 13);
    fill(255,255,255,25);
    ellipse(xPos+10, yPos+10, 13, 13);
    ellipse(xPos+40, yPos+10, 13, 13);
    ellipse(xPos+10, yPos+40, 13, 13);   
    ellipse(xPos+40, yPos+40, 13, 13);
    }
    
    else if(val==4){
    ellipse(xPos+10, yPos+10, 13, 13);
    ellipse(xPos+40, yPos+10, 13, 13);
    ellipse(xPos+10, yPos+40, 13, 13);   //FOUR
    ellipse(xPos+40, yPos+40, 13, 13);
    fill(2555,255,255,25);
    ellipse(xPos+10, yPos+10, 13, 13);
    ellipse(xPos+25, yPos+25, 13, 13);    
    ellipse(xPos+40, yPos+40, 13, 13);
    }
    
    else if(val==5){
    ellipse(xPos+10, yPos+10, 13, 13);
    ellipse(xPos+40, yPos+10, 13, 13);
    ellipse(xPos+10, yPos+40, 13, 13);   //FIVE
    ellipse(xPos+40, yPos+40, 13, 13);
    ellipse(xPos+25, yPos+25, 13, 13);
    fill(255,255,255,25);
    ellipse(xPos+10, yPos+10, 13, 13);
    ellipse(xPos+40, yPos+40, 13, 13); 
    }
    
    else if(val==6){
    ellipse(xPos+10, yPos+10, 13, 13);
    ellipse(xPos+40, yPos+10, 13, 13);
    ellipse(xPos+10, yPos+40, 13, 13);   //SIX
    ellipse(xPos+40, yPos+40, 13, 13);
    ellipse(xPos+10, yPos+25, 13, 13);
    ellipse(xPos+40, yPos+25, 13, 13);
    fill(255,255,255,25);
    ellipse(xPos+25, yPos+25, 13, 13);
    }
  }
}
