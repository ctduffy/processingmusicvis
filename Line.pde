class Line{
  int progress;
  int speedadjust = 0;
  
  Line(int start) {
    progress = start;
  }
  
  void move(){
    /*if(speedadjust < 10 && speedadjust > -10){
      if(avgamp>1){
        speedadjust +=1;
      }
      else{
        speedadjust -=1;
      }
    }
    else if((speedadjust > 10 && avgamp<1)||( speedadjust < -10 && avgamp>1)){
      if(avgamp>1){
        speedadjust +=1;
      }
      else{
        speedadjust -=1;
      }
    }*/
    pushMatrix();
    translate(0, 0, (-5700+(progress*30))); //(30+speedadjust)
    noStroke();
    lineColor();
    box(60, 2.5, 250);
    popMatrix();
    if(progress<=360){
      progress++;
    }
    else{
      progress=1;
    }
  }
}