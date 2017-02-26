
class help{
  void update(){
    select1 = color(252, 141, 89);
    select2 = color(252, 141, 89);
    select3 = color(252, 141, 89);
    stateSelect = color(255,50);
    bubbleSelect = color(0);
    liminalSelect = color(69, 117, 180);
    
    c1 = color(255); //lower left
    c2 = color(255); //upper left
    c3 = color(255); //lower right
    c4 = color(255);  //upper right
    
  
    Label label = new Label("Press this button to open up\n the state"
                            +" selection dialog\n & press clear to reset", 355, 92);
    Label label2 = new Label("To change years, click to move time slider"
                             +"\n or press the RIGHT or LEFT Key", 285, 455);
    fill(200,200,200);
    stroke(0);
    strokeWeight(2);
    shape(states[44],24,80);
    fill(253,240);
    noStroke();
    rect(285,265,150,75);
    fill(253,200);
    rect(560,44,400,75);
    Label label3 = new Label("Hover the mouse cursor\n over any state to highlight\nit"+
                              " or click a state to \nselect it", 280, 300);

   
    Label label4 = new Label("Select the 'X', 'Y', or 'R' buttons to change value \nof the Axis/Radius Select by clicking a \nPopulation Attribute)", 820, 90);
    stroke(255,0,0);
    line(905,44,905,60);
    line(805,44,705,60);
    line(705,44,705,60);
    line(605,44,705,60);
    Label label5 = new Label("Use this button\nto change the color\nof the layout", 950, 90);
  }
}
