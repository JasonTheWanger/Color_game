void Game(){
  rnd=(int)random(10);
  strokeWeight(0);
  textAlign(CENTER, CENTER);
  fill(100);
  stroke(0);
  //indicator
  if(mouseX<=width/2&&mouseX>=0){
   strokeWeight(10);
   stroke(0);
  }
  rect(0,0,400,600);
  fill(255);
  textSize(100);
  text("True", 200, 200);
  fill(200);
  strokeWeight(0);
  //indicator
  if(mouseX>width/2&&mouseX<=800){
   strokeWeight(5);
   stroke(0);
  }
  rect(400,0,800,600);
  fill(255);
  textSize(100);
  text("False", 600, 200);
  
  //print the color and the name
  fill(selected);
  textSize(size);
  pushMatrix();
  translate(400,400);
  rotate(radians(angle));
  text(name, 0,0);
  popMatrix();
  
  //time bar
  fill(255);
  strokeWeight(2);
  stroke(0);
  circle(400,100, 70);
  strokeWeight(3);
  stroke(255,0,0);
  line(400,100,400,68);
  pushMatrix();
  translate(400,100);
  rotate(radians(barAngle));
  stroke(0);
  line(0,0,0,-32);
  popMatrix();
  
  // 50/50 maker
  if(clicked){
  if(rnd<=4){
  while(true){
 w=(int)random(10);
 c=(int)random(10);
 if(w!=c)
 break;
 }
  selected= colorCode[c];
  name = colorName[w];
  size=1;
  clicked=false; 
  grt=false;
  }
  else if(rnd>=5){
  pity=(int)random(10);
  selected= colorCode[pity];
  name = colorName[pity];
  size=1;
  clicked=false;
  grt=true;
  }
  }
  size+=3;
  angle+=5;
  barAngle+=3;
  
  // gameover if time is up
  if(barAngle>=360)
  mode=gameover;
}
