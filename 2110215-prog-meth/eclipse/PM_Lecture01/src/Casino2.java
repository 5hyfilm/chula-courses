import gameutil.SimpleReset;

public class Casino2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		SimpleReset d1 = new SimpleReset(6);
//		d1.faceValue = -1; // การให้เข้าถึง properties ได้โดยตรง เพื่อแก้ไขค่าได้ ผิดหลักการ ไม่ safe
//		d1.setFaceValue(-1);
//		d1.setFaceValue(1000);
	
//		System.out.println(d1.getFaceValue());
		
//		d1.count = 50;
		
//		System.out.println(d1);
//		System.out.println(d1.toString());
		SimpleReset d1 = new SimpleReset(6);
		SimpleReset d2 = new SimpleReset(6);
//		System.out.println(d1 == d2);
		System.out.println(d1.equal(d2));
	}

}
