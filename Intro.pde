void Intro(){
  background(0);
  image(gif[f], 0, 0, width, height);
  
  if(frameCount%2==0)
  f++;
  if(f==150)
  f=0;
  
  textAlign(CENTER,CENTER);
  textSize(100);
  text("Color Game", 400, 300);
  textSize(65);
  text("Click to start, \"p\" to pause", 400, 400);
  
  score=0;
  barAngle=0;
}
