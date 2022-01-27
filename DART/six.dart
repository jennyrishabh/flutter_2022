void main(){
	
	String filter = "select * from db";
	filter = filter + " where location='delhi'";
	filter = filter + " And size='18mb'";


	StringBuffer sb = new StringBuffer();
	sb.write('heloo');
	sb.write(' okay sir');
	sb.write(' done');
	String a = sb.toString();
	print('converted is is  ::::::'+a);


}