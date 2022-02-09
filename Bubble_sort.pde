
int x[] = {9,8,7,6,5,4,3,2,1,0};
int index0 = 1,index1 = 0;
void setup(){
  size(1280,720);
  textSize(48);
  //bubbleSort(x);
}
void draw(){
  background(0);
  for(int i=0; i<x.length;i++){
    rect(160+100*i, 610-60*x[i],60, 30+60*x[i], 10);
    text(x[i], 175+100*i, 600-60*x[i]);
  }
  bubbleSortStep(x);
  delay(500);
  
}
void bubbleSortStep(int[] unsorted){
  if (index1 >= unsorted.length -index0){
    index1 = 0;
    index0++;
  }
  if (index1 < unsorted.length -1) index1++;
  if(unsorted[index1 - 1] > unsorted[index1]){
        int temp = unsorted[index1];
        unsorted[index1] = unsorted[index1 - 1];
        unsorted[index1 - 1] = temp;
  }
  rect(160+100*(index1-1), 670, 160, 30, 10);
}
void bubbleSort(int[] unsorted){
  for(int i=0; i<unsorted.length -1; i++){
    for(int j= 1; j<unsorted.length -i; j++){
      if(unsorted[j-1] > unsorted[j]){
        int temp = unsorted[j];
        unsorted[j] = unsorted[j-1];
        unsorted[j-1] = temp;
      }
    }
  }
}
void keyPressed(){
  index0 = 1;
  index1 = 0;
  for(int i=0;i<10;i++) x[i] =9-i; 
}
