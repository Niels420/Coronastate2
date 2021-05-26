class Corona{
float x;
float y;
float w;
float h;

Corona(float _x, float _y, float _w, float _h){
  x=_x;
  y=_y;
  w=_w;
  h=_h;
}

void display(){
  println(y);
  fill(255);
  rect(200,y,w,h);
}
}
