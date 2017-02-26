
int stateIndex(){ //Check Pixel Color to Obtain Value
  if (mouseX >= 0 && mouseX <= 650
      && mouseY >=0 && mouseY <=440){
    //println(str(r)+" "+str(g)+" "+str(b)); //RGB Check
     r = red (country.pixels[mouseX+mouseY*country.width]);
     g = green (country.pixels[mouseX+mouseY*country.width]);
     if (g==255.0){
       return -999;
     }
     else if ((r/5) < 52 || g!=255.0){
       return int((int(r)/5));
     }else {
     return -999;
     }
   }else {
     return -999;
  }
}

boolean overRect(int recX, int recY, int width, int height) {
  if (mouseX >= recX && mouseX <= recX+width && 
      mouseY >= recY && mouseY <= recY+height) {
    return true;
  } else {
    return false;
  }
}
