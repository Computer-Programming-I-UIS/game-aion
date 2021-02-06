int x=60;
void setup(){
  size(500,500);
  background(0);
  noStroke();
}
void draw(){
fill(255);
  background(0);
  textAlign(CENTER);
  textSize(30);
  delay(1000);
  if(x>0){
    text(x,width/2,height/2);
    x--;
  }
  else if(x==0){
    
  if(mousePressed){
    text(x,width/2,height/2);
    x=60;
  }
  }
}
