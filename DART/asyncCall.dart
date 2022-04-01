
async1(){
  
  Future.delayed(Duration(seconds: 3),(){
     print('this is from the async1 function');
     Future.delayed(Duration(seconds: 3),(){
       print('this is from the async2 function');
       Future.delayed(Duration(seconds: 3),(){
         print('this is from the async3 function');
       });
     });
     print('this iskdfhvidfviuodfhv');
    for(int i=0;i<10000;i++){
      
    }
  });
  
}



void main() {
  print('this is from the main function 1');
  async1();
  print('this is from the main function 2');
  
  
}
