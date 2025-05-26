package Object;

public class CloneDemo3 {
	public static void main(String args[]) {
		A3 obj1 = new A3(37);
		obj1.p.x = 10;
		obj1.p.y = 20;
		
		A3 obj2 = (A3) obj1.clone();
		System.out.println(obj2.getx());
		System.out.println(obj2.p.x);
	}
}

class A3 implements Cloneable { // อนุญาตให้ clone
	private int x;
	Point p;

	public A3(int i) {
		x = i;
		p = new Point();
	}

	public Object clone() { // override
		try {
			return super.clone();
		} catch (CloneNotSupportedException e) {
			throw new InternalError(e.toString());
		}
	}

	public int getx() {
		return x;
	}
}
