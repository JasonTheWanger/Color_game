//Jason Wang
//Sept 22nd
//A color game that you are required to determine if the color name match with the color. 
//If you choose correctly you gain one points. 
//The computer will store the highest score if you played it agsin without closing the game. 
//The gam ehas a timer, if the time is up, or you select the wrong choice, the game will be overed.


int mode;
final int intro=0;
final int pause=2;
final int game=1; 
final int gameover=3;

//name of the color that we select from the array
String name;

// the color code that we select form the array
color selected;

// clicked is determining if you have select a choice. 
//grt is a true or false variable to determine if this time you will get a color that match with the name 
boolean clicked, grt;

// size is the size of the text, it will increase as time goes on
//angle is the rotaion of the text, the text will keep rotating as time goes on
// w and c are the random variable that select a random value from the color and colorName array.
// f is the frame index in the gif array.
// rnd is the random variable that determine if the computer should output a right or wrong color and name matching.
//pity is the random varible that generated after rnd says we wiil be getting a matching color and name for selecting the same color and name in both arrays.
//barAngle is the rotation angle for the timer bar.
// hScore is the highest score you have achieved.
int size, angle, w, c, score, f, rnd, pity, barAngle, hScore;

// color code that will be stored in the color array
color Red=#FF0000;
color Blue=#2504BC;
color Yellow=#FFF300;
color Green=#10FF00;
color Orange=#E59D0C;
color White=#FAF8F5;
color Black=#000000;
color Purple=#A161EA;
color Pink=#F247DC;
color Brown=#8E651A;
 

String [] colorName= {"Red", "Blue", "Yellow", "Green", "Orange", "White", "Black", "Purple", "Pink", "Brown"};
color [] colorCode;
PImage[] gif;
PFont font;

void setup(){
 size(800,600); 
 mode = intro;
 angle=barAngle=0;
 size=1;
 clicked=grt=false;
 score=hScore=0;
 font=createFont("Surfbars.otf", 128);
 textFont(font);
 colorCode= new color []{Red, Blue, Yellow, Green, Orange, White, Black, Purple, Pink, Brown};
 rnd=(int)random(10);
 pity=(int)random(10);
 
 //Get a w and c index value that does not equal to each other in orer to make a false color name matching.
 while(true){
 w=(int)random(10);
 c=(int)random(10);
 if(w!=c)
 break;
 }
 
 //Output a wrong answer if rnd<=4 to make the chance 50/50
 if(rnd<=4){
 selected= colorCode[c];
 name = colorName[w];
 }
 
 //Output a right answer if rnd>=5 to make the chance 50/50
 else if(rnd>=5){
 selected= colorCode[pity];
 name = colorName[pity]; 
 grt=true;
 }
 
 gif = new PImage[150];
 for(int i=0; i<150; i++){
  gif[i]=loadImage("frame_"+i+"_delay-0.02s.gif");
 }
}

void draw(){
 if (mode==intro){
   Intro();
 }
 else if(mode==game){
   Game();
 }
 else if(mode== pause){
   Pause();
 }
 else if(mode==gameover){
   Gameover();
 }
  
}
