void mouseReleased(){
  if(mode==intro)
  mode=game;
  else if(mode==game){
  //determine if user interact with the screen
  clicked=!clicked;
  
  // detect if the response from the user match 
  if(mouseX>=0&&mouseX<=400&&grt){
   score++; 
   if(score>hScore)
   hScore=score;
   barAngle=0;
  }
  else if(mouseX>400&&mouseX<=800&&!grt){
   score++; 
   if(score>hScore)
   hScore=score;
   barAngle=0;
  }
  else
  mode=gameover;
  }
  else if(mode==gameover)
  mode=intro;
  
  
  
  
}
