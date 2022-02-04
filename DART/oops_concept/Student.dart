/*

Question. Create a Student Class, 
Input : From the Student
Rollno : 
Name : ajay KUmar sHaRma
Ajay Kumar Sharma
3 Subject Marks : Out of 100
90
80
77

Total Marks 
Percentage
Grade
>=90 - A Grade
<90 - >=70 B Grade
<70 to >=60 C Grade
<60 to >=50 D Grade
E Grade

CollegeName : Fixed

College Name : All Caps
Name : Proper Case
Subjects 
Total 
Percentage
Grade

Note : Named Constructor, Setter and Getter, Compulsory parameter, optional parameter
SRP Follow, Good Encapsulation.

*/



class Student{
	
	//private
	// using static , const , final keywords also 
	late String _name;
	late int _rollno;
	static const  String clgName = "MCU CLG";



	//getter and setter 
  get name => this._name;

  set name(value) => this._name = value;

  get rollno => this._rollno;

  //set rollno(value) => this._rollno = value;

   Student() {
    this._rollno = 0;
    this._name = "";
    print("Default Cons Call");
  }


  Student.setValues({required int rollno, required String name}) {
    this._rollno = rollno;
    this._name = name;
    checkName(_name);
  }

  void checkName(String name){

	List<String> temp =[""];
	if(name!=null){
	 temp = name.split(' ');
	}

	for(int i=0;i<temp.length;i++){
		temp[i] = temp[i].substring(0,1).toUpperCase() + temp[i].substring(1,);
	}

	//print('finally becomes : $temp');

	String test="";
	for(int i=0;i<temp.length;i++){
		test = test+temp[i]+" ";
	}
	//print('name becomes ;$test ');
	_name = test.toString();
	print('name becomes ;$_name ');

  }


  double percentage(int marks1 , int marks2,int marks3){
  	int sum = total( marks1 , marks2, marks3);
  	print('ur total is : $sum');

  	double per = (sum/300)*100;
  	return per;
  	//print('ur percentage becomes ; $per');
  }

 int total(int marks1 , int marks2,int marks3){
  		return marks1+marks2+marks3;
 }


}
