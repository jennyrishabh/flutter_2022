import 'dart:io';
void main(){
	
int n;
print('enter range of ;');
n=int.parse(stdin.readLineSync().toString());
	//callback function
loop(n,cube);
print('--- -- -- -- -- -- -- -- -- -');
loop(n,square);
print('--- -- -- -- -- -- -- -- -- -');
loop(n,evenodd);

}

void loop(int n,Function fn){
	for(int i=0;i<n;i++){
		print(fn(i));
	}
}

int cube(int a){
	return a*a*a;
}

int square(int a){
	return a*a;
}

String evenodd(int a){
	return a%2==0 ? '${a} is even' : '${a} is odd';
}