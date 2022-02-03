import './Student.dart';
import 'dart:io';


void main(){

	print('enter a name..');
	String? name=stdin.readLineSync();
	Student obj = Student.setValues(rollno:101, name:name.toString()); 

	print('now enter three subject marks (out of 100): ');
	int? marks1=int.parse(stdin.readLineSync().toString());
	int? marks2=int.parse(stdin.readLineSync().toString());
	int? marks3=int.parse(stdin.readLineSync().toString());
	print('u entered ; $marks1 : $marks2 : $marks3');

	print('ur percentage becomes ;');
	print(obj.percentage(marks1,marks2,marks3));


}