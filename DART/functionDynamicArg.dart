void main(){
	
	//int c = add(10,20);
	//print('sum return is ${c}');
	
	Function addition = Math();
	int temp = addition(10,20);
	print('results is : ${temp}');

	//List<Function> multi = multiMath();
	//print(multi[0](10,20));
	//print(multi[1](10,20));

	Map<String,Function> multi = multiMath();
		//Function? add = multi['add'];
		//if(add!=null){return add(10,20);}
	int result = multi['add']!(10,20);
	print(result);

	print('--- -- -- -- -- -- -- -- -- -');
	Map<String,Function> mul = multiMa(10);
	int result1 = mul['add']!(10,20);
	print(result1);


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


Map<String,Function> multiMath(){
	int a =10;
	Function add = (int x,int y) {return x+100;};
	Function sub = (int x,int y) {return x-100;};		
	//return [add,sub];
	return {'add':add,'sub':sub};
}

Map<String,Function> multiMa(int b){
	int a =10;
	Function add = (int x,int y) {return x+100+b+a;};
	Function sub = (int x,int y) {return x-b-a;};		
	//return [add,sub];
	return {'add':add,'sub':sub};
}


