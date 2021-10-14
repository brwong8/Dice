//Die dice; 
void setup() {
  size(500,600);
  background(144, 214, 161);
  noLoop();
}

void draw() {
     int sum = 0;
  background(144, 214, 161);
   //noLoop();
  for(int x = 20; x <= 500; x = x + 50) {
    for(int y = 20; y <= 500; y = y + 50){
    
    Die dice = new Die(x,y);
  
  dice.rolls();
 sum += dice.roll;
 dice.show();
   fill(0);
 textSize(20);
 text("Total chocolate chips: " + sum,160,520);
    }
   
  }
}

class Die {
  int myX,myY,roll;
  Die(int x, int y) {
    
    myX = x;
    myY = y;
    roll = (int)(Math.random() * 6)+1;
  
     fill(255,255,255);
     rect(150,500,300,40);
    
  
  }
  void show() {
    fill(145, 123, 94);
    ellipse(myX,myY,50,50);
  }


void rolls() {
 
  for(int i = 0; i < roll;i++){
  
  if (roll == 1) {
    fill(0);
    ellipse(myX-5,myY-5,5,5);
    
  }
  else if( roll == 2) {
    fill(0);
    ellipse(myX + 10, myY + 10, 5,5);
    ellipse(myX+10,myY-10,5,5);
   
  }
  else if(roll == 3){
     fill(0);
    ellipse(myX + 10, myY + 10, 5,5);
    ellipse(myX+10,myY-10,5,5);
    ellipse(myX-5,myY-5,5,5);
    
  }
  else if(roll == 4){
     fill(0);
    ellipse(myX + 10, myY + 10, 5,5);
    ellipse(myX+10,myY-10,5,5);
    ellipse(myX-5,myY-5,5,5);
    ellipse(myX+2,myY+2,5,5);
  
  }
  else if(roll == 5){
    fill(0);
    ellipse(myX + 10, myY + 10, 5,5);
    ellipse(myX+10,myY-10,5,5);
    ellipse(myX-5,myY-5,5,5);
    ellipse(myX+2,myY+2,5,5);
    ellipse(myX+15,myY-15,5,5);
   
  }
  else{
         fill(0);
    ellipse(myX + 10, myY + 10, 5,5);
    ellipse(myX+10,myY-10,5,5);
    ellipse(myX-5,myY-5,5,5);
    ellipse(myX+2,myY+2,5,5);
    ellipse(myX+15,myY-15,5,5);
    ellipse(myX-15,myY-15,5,5);
   
  }


 
 
}
}
}
void mousePressed() {
  redraw();
}
