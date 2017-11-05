ArrayList<Integer> x = new ArrayList<Integer>();
ArrayList<Integer> y = new ArrayList<Integer>(); 

int w = 30;
int h = 30;

int block = 20;

int dir = 2;

int kX = 12;
int kY = 10;

int score = 0;
int highScore = 0;

int[] dx = { 0,0,1,-1 };
int[] dy = { 1,-1,0,0 };

boolean gameover = false;

void setup() { 
  
size(600, 600);

x.add(5); 
y.add(5);

}



void draw() {  
  
  background(255);
  
  
  for (int i=0;i<w;i++){
    line(i*block,0,i*block,height);
  }     
    
  for(int i=0;i<h;i++){
    line(0,i*block,width,i*block);
  }    
    
    
    //Title Line
  fill(255, 0, 255);
  
  textSize(43);
  textAlign(CENTER);
  text("Vegan Snake", width/2, 30);
  
  textSize(20);
  text("Goal: To eat as much kale as possible", width/2, 60);
  
  textSize(15);
  text("By: Claudia Bandali", width/2, 90);
  
  //shows score
  fill(255, 0, 255);
  textSize(10);
  
  textAlign(RIGHT);
  text("Score:", 70, 30);
  text(score, 70, 40);
  
  text("Highest Score:", 70, 50);
  text(highScore, 70, 60);  

  
  for (int i = 0 ; i < x.size(); i++){ 
    
    fill(102, 0, 102);
    stroke(255, 102, 102);
    
    rect(x.get(i)*block, y.get(i)*block, block, block);
    
  }
  
  if (!gameover) {  
    
    fill(0,102,0);
    stroke(0,255,0); 
    rect(kX*block, kY*block, block, block); 
    
    if (frameCount%5==0) {
      
      x.add(0, x.get(0) + dx[dir]); 
      y.add(0, y.get(0) + dy[dir]);
      
      if(x.get(0) < 0 || y.get(0) < 0 || x.get(0) >= w || y.get(0) >= h){
        gameover = true;
      }         
        
      for(int i=1;i<x.size();i++) {
        if(x.get(0)==x.get(i)&&y.get(0)==y.get(i)) 
          gameover=true;
      }             
          
      if (x.get(0)==kX && y.get(0)==kY) { 
        
        score++;
        
        kX = (int)random(0, w); 
        kY = (int)random(0, h); 
        
      }
      else { 
        
        x.remove(x.size()-1); 
        y.remove(y.size()-1); 
        
      }
      
    }
    
  }
  else {
    
    fill(0); 
    textSize(30); 
    textAlign(CENTER); 
    text("GAME OVER. Press space",width/2,height/2);
    
    if(score > highScore){
        highScore = score;
      }  
      
    score = 0;
    if(keyPressed&&key==' ') { x.clear(); y.clear(); x.add(5);  y.add(5); gameover = false; }
    
  }
  
}

  

void keyPressed() { 
  
  int nd = key == 's' ? 0:
  (key == 'w' ? 1:
  (key == 'd' ? 2:
  (key == 'a' ? 3:-1)));
  
  if( nd!=-1 && ( x.size()<=1 || !( x.get(1) == x.get(0) + dx[nd] &&
                                   y.get(1) == y.get(0) + dy [nd]))){
                                     
    dir=nd;
    
  } 
  
}