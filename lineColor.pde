void lineColor(){
  
   if (avgamp <= .1){
     stroke (10,0,255);
     fill (10,0,255);//dark blue
   }
   else if (avgamp > .1 && avgamp <= .3){
     stroke (200,0,255);
     fill (200,0,255);//purple
   }
   else if (avgamp > .3 && avgamp <= .5){
     stroke (255,0,200);
     fill (255,0,200);//darker pink
   }
   else if (avgamp > .5 && avgamp <= .7){
     stroke (239, 0, 255);
     fill (239, 0, 255);//pink/purple
   }
   else if (avgamp > .7 && avgamp <= .9){
     stroke (0,243,255);
     fill (0,243,255);//light blue
   }
   else if (avgamp > .9 && avgamp <= 1.1){
     stroke (255, 0, 124);
     fill (255, 0, 124);//reddish pink
   }
   else if (avgamp > 1.1 && avgamp <= 1.2){
     stroke (0,250,0);
     fill (0,200,0);//green
   }
   else if (avgamp > 1.2 && avgamp <= 1.35){
     stroke (250,0,0);
     fill (250,0,0);//red
   }
   else if (avgamp > 1.35 && avgamp <= 1.5){
     stroke (0, 255, 192);
     fill (0, 255, 192);//light green
   }
   else if (avgamp > 1.5 && avgamp <= 1.7){
     stroke (200,0,255);
     fill (200,0,255);//purple
   }
   else{
     stroke (13, 38, 222); 
     fill(13, 38, 222);//dark blue
   }
   
}