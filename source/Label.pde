class Label{
   
  Label(String txt, float x, float y) {
     
    // get text width
    float labelW = textWidth(txt);
     
    // check if label would go beyond screen dims
    if (x + labelW + 20 > width*.65) {
      x -= labelW + 20;
    }
     
    
     
   if(helpCheck){
      fill(255,0,0,200);
      textSize(12);
      text(txt, x+15, y-15);
    }else{
      fill(252,255,254);
      noStroke();
      rectMode(CORNER); // note: this is the default mode. confusing b/c similar to CORNERS (plural)
      rect(x+10, y-30, labelW+10, 22);
      fill(0);
      text(txt, x+15, y-15);
    }
  }
}
