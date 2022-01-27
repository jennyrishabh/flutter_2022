import 'dart:io';
// some excersise
/*

1. Enter a String
input : heLLo HOW aRE yOU
output : Hello How Are You

2. input : Hello How are You
Output : Word Count  = 4

3. Palindrome String 
input : nitin
output: Palindrome String

note: Input Either Command line Arguments or Either Use stdin

*/


void main(){

	print('1)');
	print('enter a string..');
	String? name=stdin.readLineSync();
	List<String> temp =[""];
	if(name!=null){
	 temp = name.split(' ');
	}

	for(int i=0;i<temp.length;i++){
		temp[i] = temp[i].substring(0,1).toUpperCase() + temp[i].substring(1,);
	}

	print('finally becomes : $temp');

	print('1) another version : ');
	print('enter a string..');
	String? name1=stdin.readLineSync();
	//String temp = name1.toString();

	List<String>? list = name1?.split(' ');
	print(list);

	for(int i=0;i<((list?.length) ?? 0 );i++){
		String temp = list![i][0].toUpperCase()+list[i].substring(1,).toLowerCase();
		list[i] = temp;
	}
	list?.join();
	print(list);





	print('2)');
	print('enter a string..');
	name=stdin.readLineSync();
	temp =[""];
	if(name!=null){
	 temp = name.split(' ');
	}

	print('length of $name is  : ${temp.length }');


	print('3)');
	String name2 = 'nitin';
	StringBuffer sb = new StringBuffer();
	String? reverse;
	for(int i = name2.length -1 ; i>=0 ; i--){
		sb.write(name2[i]);
		//print(name2[i]);
		//reverse = reverse?? "" + name2[i];
	}

	//print(reverse);
	if(sb.toString().compareTo(name2) == 0){
		print('yes it is palindrome ');
	}
	else{
		print('No ,  it is palindrome ');
	}



/*


Q1. Find Duplicate Element in List of Elements , List Element are Unique or not.
Hint: List<int> list = [1,2,3,5,1];
TC : O(N)

e.g for(int i = 1;i<=10; i++){}
int j=1;
while(j<=10){
j++;
}

Q2. Find out the missing number in N Natural Numbers
e.g List<int> list = [1,2,5,7,3,6];
Missing Number : 4
TC :O(N)

Q3. Anagram String
input:1 silent 
input2: listen
Output : yes Anagram String
*/







}	