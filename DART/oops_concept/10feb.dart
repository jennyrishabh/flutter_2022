import 'dart:io';
void main(){

print('mynameistempname'.toUpperCase()+'\n\n');	
print("101".parseint().runtimeType);
print("101".parseint());

print('this is test name'.reversetext());

}

extension parseInt on String{
	int parseint(){
		return int.parse(this);
	}
}

extension reverse on String{
	String reversetext(){
		//String s = stdin.readLineSync().toString();
		String s = this.toString();
		s = s.split(' ').reversed.join(' ');
		return s;
	}
}

