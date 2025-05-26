
public class SimpleDice {
	// 1) properties (variables)
	final static int MAX = 6; // ถ้ามี static เป็นของ class -> ทุก object share กันอยู่
	int faceValue; // เป็นของ object -> object ใคร object มัน
//	static int count = 0;
	
	// 2) actions (methods)
	// ถ้า method ไหนมีชื่อเดียวกันกับชื่อ class
	// Contructor
	// บอกว่าตอนสร้าง object ให้ทำอะไร
	public SimpleDice(int faceValue) {
		// faceValue = val
		this.faceValue = faceValue; // เรียก properties
	}
	
	// overload
	public SimpleDice() {
//		this.faceValue = 1;
		this.roll(); // เรียก method
//		this() // เรียก contructor
//		this คือ object นั้นๆ เอง
	}

	public int roll() {
		faceValue = (int) (Math.random() * MAX) + 1;
		return faceValue;
	}

	public void setFaceValue(int i) {
		// TODO Auto-generated method stub
		
	}
}
