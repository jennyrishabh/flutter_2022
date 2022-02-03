class Emp{ //pascal case //classname should be noun
	

	int? id;
	String? name;
	double? salary;

	/*
	Emp(){
		id =0;
		name="";
		salary=0.0;
		print('default cons. called');
	}
	*/

	Emp(this.salary,this.name,this.id);

	void printEmployee() {
    print("Id ${this.id} Name $name Salary $salary");
    }

  get name1 => this.name;

  set name1(value) => this.name = value;

  get salary1 => this.salary;

  set salary1(value) => this.salary = value;


}
/*
void main(){
	Emp ram = new Emp(); // we can remove the new keyword
	print(ram.id);
	print(ram.name);
	print(ram.salary);
}

*/