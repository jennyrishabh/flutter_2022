package new_temp;
import java.util.Scanner;
//@author Rishabh Jain
public class numberSystem {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		System.out.println("enter a number to convert : ");
		Scanner sc  = new Scanner(System.in);
		int number = sc.nextInt();
		
		System.out.println("\n\nbinary for "+number+"  is : "+dectobin(number));
		
		System.out.println("enter a number to convert : ");
		int number1 = sc.nextInt();
		
		System.out.println("\n\nnumber for "+number1+"  is : "+bintodec(number1));
		
		sc.close();
	}
	
	static int dectobin(int num) {
		int p=1,temp=0;
		while(num>0) {
			System.out.println("num is : "+num);
			temp = (num%2)*p + (temp);
			p*=10;
			num/=2;
			System.out.println("temp is : "+temp);
		}
		return temp;
	}
	
	static int bintodec(int num) {
		int temp=0;
		int p=0;
		while(num>0) {
			System.out.println("temp is : "+temp);
			temp = temp + (int)((num%10) * Math.pow(2, p));
			num/=10;
			p+=1;
		}
		
		return temp;
	}

}
