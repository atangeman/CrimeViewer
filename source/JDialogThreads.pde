
class SimpleThread extends Thread {
 
  boolean running;           // Is the thread running?  Yes or no?
  int wait;                  // How many milliseconds should we wait in between executions?
  String id;                 // Thread name
  int count;                 // counter
  String proc;
  // Constructor, create the thread
  // It is not running by default
  SimpleThread (int w, String s) {
    wait = w;
    running = false;
    id = s;
    count = 0;
  }
 
  int getCount() {
    return count;
  }
 
  // Overriding "start()"
  void start (String process) {
    // Set running equal to true
    proc=process;
    running = true;
    // Print messages
    println("Starting thread at "+hour()+":"+minute()+":"+second()); 
    // Do whatever start does in Thread, don't forget this!
    super.start();
  }
 
 
  // We must implement run, this gets triggered by start()
  void run () {
    while (running && count < 10) {
      println(id + ": " + count);
      count++;
      // Ok, let's wait for however long we should wait
      try {
        if(proc=="save"){
          saveControl saveCtrl = new saveControl();
        }else if(proc=="listControl"){
          listStateCtrl lsc = new listStateCtrl();
        }
        
      } catch (Exception e) {
      }
    } // The thread is done when we get to the end of run()
  }
 
 
  // Our method that quits the thread
  void quit() {
    System.out.println("Quitting.");
    println("Thread ended at "+hour()+":"+minute()+":"+second());  
    running = false;  // Setting running to false ends the loop in run()
    // IUn case the thread is waiting. . .
    interrupt();
  }
}

public class saveControl extends JFrame{
  private JTextField filename = new JTextField(), dir = new JTextField();
  public saveControl() {
      JFileChooser c = new JFileChooser();
      // Demonstrate "Save" dialog:
      int rVal = c.showSaveDialog(saveControl.this);
      if (rVal == JFileChooser.APPROVE_OPTION) {
         saveCheck1=true;
         saveString = c.getCurrentDirectory().toString()+"\\"+c.getSelectedFile().getName()+".png";
         terminate=true;
      }
      if (rVal == JFileChooser.CANCEL_OPTION) {
        filename.setText("You pressed cancel");
        dir.setText("");
        thread1.quit();
      }
    }
  }
  
  
public class listStateCtrl extends JPanel{
  File f = new File("MultiSelectList.java");
  final ArrayList<String> lines = new ArrayList<String>();
  int[] select = new int[52];
  String[] list0 = new String[53];
   // String selected = "";
  boolean mouseE=false;
  //String[] selectedItems = "";
  //String[] selectedItems2;
  int[] selectedItems2;
  
  public listStateCtrl() {
    for (i=0;i<stateNames.length;i++){
      if(i==0){
        list0[i]=" ";
      }else{
        list0[i]=stateNames[i];
      }
    }
    final JList list = new JList(list0);
    
    list.setSelectionMode(
      ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
      for(i=0;i<shapeSelect.size();i++){
        select[i]=shapeSelect.get(i);
      }
      list.setSelectedIndices(select);
    
      list.addListSelectionListener(new ListSelectionListener() {

        @Override
        public void valueChanged(ListSelectionEvent arg0) {
          if (!arg0.getValueIsAdjusting()) {
            int[] selected2 = list.getSelectedIndices();
            int[] selectedItems = new int[selected2.length];
            for(int i=0; i<selected2.length;i++){
              selectedItems[i] = selected2[i];
            }
            selectedItems2=selectedItems;
          }
        }
      });
    Object[] options = { "OK", "CANCEL" };
    int Result = JOptionPane.showOptionDialog(null,  new JScrollPane(list), "Select States",JOptionPane.OK_CANCEL_OPTION, JOptionPane.INFORMATION_MESSAGE,null, options, options[0]);
    if (Result==JOptionPane.OK_OPTION){
          //shapeSelect=new Processing.Array<Integer>();
      try{
        for(int i=0; i<selectedItems2.length;i++){
          if(list0[selectedItems2[i]]!=" "){
            //println(selectedItems2[i]);
            shapeSelect.add(selectedItems2[i]);
          }
        }  shapeSelected=true;
           generateValues();
           mouseCheck=false;
           thread1.quit();
      }catch(Exception e){
        println("null input");
      }
    }else{
      thread1.quit();
    }
  }
}

 
