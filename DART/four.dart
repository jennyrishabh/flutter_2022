void main(List<String> a){
	
print('args are : ${a}');

int sum =0 ;
for(int i =0 ;i<a.length;i++){
	sum+=int.parse(a[i]);
}
print('sum for ${a} sum : ${sum}');

}