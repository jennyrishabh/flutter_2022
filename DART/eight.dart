import 'dart:io';
/*
1. Write following Functions
These Functions are working on NumberSystem
a) Decimal Number - Binary Conversion
b) Binary Number - Decimal Conversion
c) Decimal Number - Octal Conversion
d) Octal number - Decimal Conversion
e) Octal Number - Binary Conversion
f) Decimal Number - Hexa Conversion
g) Hexa Number - Decimal Conversion
h) Hexa Number - Binary Conversion

Create an Outer / Wrapper Function called e.g NS
NS Contains a) to h) functions  and based on the argument u pass to NS function it return the required function, After getting the required function from NS , we pass that function to printNS function , this function is responsible to invoke the required Number System Function and get the result and return that result to the main function. The Base 2,8,16 is the common thing for all the Number System Functions.
main print the final result.

We are able to See : Outer Inner function concept
-Callback Function
-Function return function
-Closure
*/

void main(){
	int num;
	print('enter Number ur of ');
	int n=int.parse(stdin.readLineSync().toString());

	print('U have entered : ${n} ,, ,,enter choice ur of ');
	print('''a) Decimal Number - Binary Conversion
	b) Binary Number - Decimal Conversion 
	c) Decimal Number - Octal Conversion
	d) Octal number - Decimal Conversion
	e) Octal Number - Binary Conversion
	f) Decimal Number - Hexa Conversion
	g) Hexa Number - Decimal Conversion
	h) Hexa Number - Binary Conversion''');

	int n1=int.parse(stdin.readLineSync().toString());
	Map<int,Function> multi = outerfunction(n);
	int result = multi[n1]!();
	print(result);
}

// -- - -- -- -- -- -- -- -- --- -- - --- -- - -- --- -- -- -- -- -- -- -- - 

Map<int,Function> outerfunction(num n){
	
	//Map<int,int> map = {"1" : a , "2" : b , "3": c,"4" :d,"5" : e,"6" :f,"7" : g ,"8" :h};

	Function a = (){
		int p=1;int temp=0;
		while(n>0){
			temp=(n.toInt()%2)*p + temp;
			p*=10;
			n = n/2;	
		}
		return temp;
	};
	return {1 : a};

}
