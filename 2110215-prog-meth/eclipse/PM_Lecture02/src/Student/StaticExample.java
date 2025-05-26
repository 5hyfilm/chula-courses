package Student;

class A7 {
	static void m1() {
		System.out.println("A7");
	}
}

class B7 extends A7 {
	static void m1() {
		System.out.println("B7");
	}
}


public class StaticExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Student s1 = new UndergraduateStudent("Pop");
		s1.printName();
		
		
		A7 s2 = new B7();
		s2.m1();
	}

}