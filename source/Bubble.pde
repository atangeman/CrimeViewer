class Bubble extends Thread{

  float x, y, r,r2,g2;
  int indx,V1,V2,V3;
  color c;
  int count;

  float origX,origY;
  boolean check1;
  
  Bubble(float x_, float y_, float r_, color c_, int indx_,int V1_,int V2_,int V3_) {
    x = x_;
    y = y_;
    r = r_;
    c = c_;
    origX = x_;
    origY = y_;
    indx = indx_;
    V1 = V1_;
    V2 = V2_;
    V3 = V3_;
  }
   
  void display() {
    count =0;
    try{
     r2 = red (country.pixels[mouseX+mouseY*country.width]);
     g2 = green (country.pixels[mouseX+mouseY*country.width]);
    }catch(Exception e){
     println("Out of bounds error - Bubble.display()");
    }
    // check if mouseover
    if (dist(mouseX, mouseY, x, y) <= r) {
      bubbleCheck=true;
      bubbleIndx=indx;   
      stroke(bubbleSelect);
      strokeWeight(3);   
      fill(c,150);
      
    }else if (r2/5 < 52 && g2 != 255.0) {
      try{
        if (table.getString(stateIndex()-1,table.getColumnTitle(3)).equals(table.getString(indx,table.getColumnTitle(3)))==true){
          //println(table.getString(stateIndex()-1,table.getColumnTitle(3)) + " = " + table.getString(indx,table.getColumnTitle(3)));
          stroke(bubbleSelect);
          strokeWeight(3);
          fill(c,150);
      }else{
        stroke(bubbleSelect);
        strokeWeight(3);   
        fill(c,150);
        //noStroke();
        stroke(50);
        strokeWeight(.1);
        bubbleIndx=-999; 
        fill(c);
      }
      }catch(Exception e){
          println("Out of bounds error - Bubble.display()");
        }
  }else {
      stroke(50);
      strokeWeight(.1);
      fill(c);
   }


    ellipse(x, y, r*2, r*2);
    count++;
  }
   
  void displayLabel() {
    if (dist(mouseX, mouseY, x, y) <= r) {
      check1=true;
    }
    if (check1){
        if (mouseCheck && mouseX >550 && mouseX<950 && mouseY >60 && mouseY<450){
           check1=true;
           x = origX+((mouseX-origX)*.4);
           y = origY+((mouseY-origY)*.4);
        }else {
          x = origX;
          y = origY;
          check1=false; 
        }
      String txt = table.getString(indx,table.getColumnTitle(3)) + ", x: " + int(V1) + ", y: " + int(V2)+", r: "+int(V3);
      Label label = new Label(txt, mouseX, mouseY);
      
      }
    }
  }
