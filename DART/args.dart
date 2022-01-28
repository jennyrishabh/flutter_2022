void main(){
int add = multi(a:1,b:2);
print(add);
int add1 = multi(b:2);
print(add1);	
}

/*
int square([int a=0]){
	return a*a;
}
*/

int multi({int a=0,int b=0}){
	return a*b;
}