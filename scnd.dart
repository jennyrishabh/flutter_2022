import './one.dart';


void main(){
	/*
	Emp ram = new Emp(); // we can rempve the new keyword
	print(ram.id);
	print(ram.name);
	print(ram.salary);
	*/

	Emp r = new Emp(12,"r",8888);
	r.printEmployee();


	//getter and setter

	//setter
	r.name1 = 'test naming';
	print('name changed to : ');
	//getter;
	print(r.name1);

}