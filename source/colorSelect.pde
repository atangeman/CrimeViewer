  
class colorSelect{
  String colorSelector;
  colorSelect(String col){
  }
  void update(String col){
    colorSelector=col;
    if(colorSelector=="pastel"){
      select1 = color(252, 141, 89);
      select2 = color(252, 141, 89);
      select3 = color(252, 141, 89);
      stateSelect = color(255,50);
      bubbleSelect = color(0);
      liminalSelect = color(69, 117, 180);
      c1 = color(69, 117, 180,fade*5); //lower left
      c2 = color(254, 224, 144,fade*5); //upper left
      c3 = color(168, 221, 181,fade*5); //lower right
      c4 = color(252, 141, 89,fade*5);  //upper right
      
    }else if (colorSelector=="Holliday"){
      select1 = color(252, 141, 89);
      select2 = color(252, 141, 89);
      select3 = color(252, 141, 89);
      stateSelect = color(255,50);
      bubbleSelect = color(0);
      liminalSelect = color(69, 117, 180);
      
      c1 = color(244, 109, 67,fade*5); //lower left
      c2 = color(254, 224, 139,fade*5); //upper left
      c3 = color(166, 217, 106,fade*5); //lower right
      c4 = color(26, 152, 80,fade*5);  //upper right
   }else if (colorSelector=="ColorSafe"){
      select1 = color(118, 42, 131);
      select2 = color(118, 42, 131);
      select3 = color(118, 42, 131);
      stateSelect = color(255, 255, 255,50);
      bubbleSelect = color(0);
      liminalSelect = color(69, 117, 180);
      
      c1 = color(153, 112, 171,fade*5); //lower left
      c2 = color(231, 212, 232,fade*5); //upper left
      c3 = color(217, 240, 211,fade*5); //lower right
      c4 = color(27, 120, 55,fade*5);  //upper right
    }
  }
}
