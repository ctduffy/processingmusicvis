class Block{
   float progress;
   int xtranslation;
   boolean leave;
  
   Block(float start, boolean sider) {
   progress = start;
   leave = sider;
   }
   
   void move() {
     if (leave==true){
       xtranslation = 590;
     }
     else{
       xtranslation = -590;
     }
     pushMatrix();
     //rotateY( 12);
     //rotateX(-10);
     boxColor();

     translate(xtranslation, 0, (-7000+(progress*30)));
     
     for (int i = 0; i < bands; i++) {
      // Smooth the FFT data by smoothing factor
       sum[i] += (fft.getBand(i)*4 - sum[i]);
       box(200, 9*(sum[i]), 500);    // where i is some loop that's drawing these babies down the line
     }
     popMatrix();
     if(progress<=360){
       progress++;
     }
     else{
       progress = 1;
     }
   }
}