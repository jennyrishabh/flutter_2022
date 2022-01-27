void main(){
	
	//int c = add(10,20);
	//print('sum return is ${c}');
	
	Function addition = Math();
	int temp = addition(10,20);
	print('results is : ${temp}');

	List<Function> multi = multiMath();
	print(multi[0](10,20));
	print(multi[1](10,20));

}

//simple 
//scope : library (Dart)

//int add(int x,int y){
//	return x+y;
//}

//ananormous function

Function Math(){
	int a =10;
	Function add = (int x,int y) {return x+100;};	
	return add;
}


List<Function> multiMath(){
	int a =10;
	Function add = (int x,int y) {return x+100;};
	Function sub = (int x,int y) {return x-100;};		
	return [add,sub];
}


