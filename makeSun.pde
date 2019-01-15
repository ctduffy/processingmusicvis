float x; //<>// //<>//
void make_sun() {
  float[] summer = new float[bands];
  float r_width = width/float(bands);
  float smooth_factor = .6;
  float scale =2;
  pushMatrix();
  background(0);
  
  lights();
  translate(0,-500,-12000);
  if(frameCount%3==0){
    rotateX(num1());
    rotateY(num1());
    rotateZ(num1());
  }
  else{
    rotateX(x);
    rotateY(x);
    rotateZ(x);
  }
   
  scale(.5);
  
  for (int i = 0; i < (bands); i++) {
    summer[i] += (fft.getBand(i) - summer[i]) * smooth_factor;
    stroke(255, 80);
    fill(255, 90);
    box(i*r_width, r_width, -summer[i]*height*scale);
  }
  popMatrix();
}

float num1() {
  x = random(PI);
  return x;
}