void setup(){
  size(400,400);
  frameRate(8);
  background(0,0,0);
}

void draw(){
  if (mousePressed == true){
    lightning((int)(Math.random()*100)+150,0);
  }
  else {
    fill(21,244,238);
  ellipse(200,380,10,10);
    int opacity = 10;
    for(int i = 0; i < 10; i++){
      fill(0,0,0,opacity);
      rect(-1,-1,401,401);
      opacity = opacity - 1;
    }
  }
}

void lightning (int x, int y){
  int r = (int)(Math.random()*255);
  int g = (int)(Math.random()*255);
  int b = (int)(Math.random()*255);
  stroke(r,g,b);
  for(int i = 0; i <= 30; i++){
    int c = x + (int)(Math.random()*30)-15;
    int d = y + (int)(Math.random()*25);
    line(x,y,c,d);
    x = c;
    y = d;
    fill(21,244,238);
    ellipse(200,380,10,10);
  }
  line(x,y,200,380);
}
