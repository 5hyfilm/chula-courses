import java.awt.Point;

public class MyVariable2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
//		int i = 10;
//		boolean b1 = ((i+10) == 20);
//		System.out.println(b1);
//		
//		double d = 0.1;
//		d += 0.1;
//		d += 0.1;
//		d += 0.1;
//		d += 0.1;
//		d += 0.1;
//		d += 0.1;
//		d += 0.1;
//		d += 0.1;
//		boolean b2 = ((d - 0.9) < 10e-5);
//		System.out.println(b2);
		
//		String s = "10";
//		int i = Integer.parseInt(s);
//		System.out.println(i + 5);
//		
//		double d = Double.parseDouble(s);
//		System.out.println(d + 5.5);
//		
//		// ----------
//		double score = 18.9;
//		String s2 = String.valueOf(score);
//		String s3 = score + "";
		
//		double w = Double.parseDouble(args[0]);
//		double h = Double.parseDouble(args[1]);
//		double area = w*h;
//		System.out.println(area);
		
		int a = 10;
		int b = a;
		a = 20;
		System.out.println(a);
		System.out.println(b);
		
		Point p1 = new Point(2, 5);
		System.out.println(p1);
		
		Point p2 = p1;
		p2.x = 20;
		System.out.println(p1);
	}

}
