var x=0;
var y=0;
var col= 0;
function setup() { 
  createCanvas(400, 400);
} 

function draw2(){
background (col);
  fill();
}

function draw() { 
  background(x+125);
  ellipse(0, 50, 33, 33);  // Left circle

push();  // Start a new drawing state
strokeWeight(10);
fill(204, 153, 0);
ellipse(33, 50, 33, 33);  // Left-middle circle

push();  // Start another new drawing state
stroke(0, 102, 153);
ellipse(66, 50, 33, 33);  // Right-middle circle
pop();  // Restore previous state

pop();  // Restore original state

ellipse(x, y, 33, 33); 
  x=x+1;
  y=y+1;
  if (x>400){
  x=0;
  }
  if (y>400){
  y=0; 
  }// Rig
  ellipse(x,y,65,89);
  x=x+1;
  y=y+1;
  if (x>400){
  x=0;
  }
  if (y>400){
  y=0; 
  }// Rig
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  fill(255,100,40);
  rect (mouseX,mouseY,20,100);
  
  fill(0,150,255);
  ellipse(mouseX,mouseY-50,60,60);
  
  fill(6,255,200);
  ellipse(mouseX-20,mouseY-50,16,32);
  ellipse(mouseX+20,mouseY-50,16,32);
  
  stroke(255,0,0);
  line(mouseX + 7,mouseY+50,mouseX+50,mouseY+50);
  stroke(0,0,255);
  line(mouseX - 7,mouseY+50,mouseX-50,mouseY-50);
  
  
  
}
