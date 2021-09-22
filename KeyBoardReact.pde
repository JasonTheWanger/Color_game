void keyReleased(){
 if(mode==game){
 if(key=='p'||key=='P'){
 mode=pause;
 }
 }
 else if(mode==pause){
 if(key=='p'||key=='P'){
 mode=game;
 }
 }
}
