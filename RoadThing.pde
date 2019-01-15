import ddf.minim.*;
import ddf.minim.analysis.*;


Minim minim;
AudioPlayer song;
FFT fft;

int bands = 60;
float[] sum = new float[bands];
float smooth_factor = .6;
float avgamp;
float r_height;  
ArrayList<Block> list_o_blocks1 = new ArrayList<Block>();
ArrayList<Block> list_o_blocks2 = new ArrayList<Block>();


ArrayList<Line> list_o_lines = new ArrayList<Line>();

void setup(){
  minim = new Minim(this);
  song = minim.loadFile("sail.mp3", 512);
  song.play();
  fft = new FFT(song.bufferSize(), song.sampleRate());

  r_height = float(height/bands);
  
  fullScreen(P3D);
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(PI/3.0, float(width)/float(height), cameraZ/100.0, cameraZ*10000.0);
  camera(width/2.0, (height/4.0), (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
  
  for(int i = 0; i<30; i++) {
    Block b = new Block(i*17.2, true);
    list_o_blocks1.add(b);
    Block a = new Block(i*17.2, false);
    list_o_blocks2.add(a);
  }
  
  for(int i = 0; i<18; i++){  
    Line l = new Line(i*20);
    list_o_lines.add(l);
  }
}


void draw(){
  background(0); 
  //ellipse(height/2, width/2, 10, 10 );
  fft.forward(song.mix);
  for (int i = 0; i < fft.specSize(); i++) {
     avgamp+=fft.getBand(i);
  }
  avgamp=avgamp/(float)(fft.specSize()+10);

    
  pushMatrix();
  translate(width/2, height, -3000);
  make_sun();
  stroke(0);
  fill(48, 47, 47);
  box(width/1.5, 2, 12000);
  
  for(int i =0; i<30; i++) {
    Block b = list_o_blocks1.get(i);
    b.move();
  }
  for(int i =0; i<30; i++) {
    Block b = list_o_blocks2.get(i);
    b.move();
  }
  for(int i = 0; i<18; i++){
    Line l = list_o_lines.get(i);
    l.move();
  }
  popMatrix();
}