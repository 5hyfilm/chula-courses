import java.util.Scanner;

public class CelciusToFarenheit {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		final double TEMP_CONVERT = 1.8;
		
		Scanner s = new Scanner(System.in);
		System.out.println("Enter Celcius: ");
		double cel = s.nextDouble();
		
		System.out.println("Enter your name");
		String name = s.next();
				
		double fa;
		fa = (TEMP_CONVERT*cel) + 32;
		System.out.println("convert from " + cel + " to " +fa);
		System.out.println(name);

	}

}
