package Student;

public class StudentTest4 {
	public static void main(String[] args) {
		Student s;
		GraduateStudent g = new GraduateStudent("Nat");
		UndergraduateStudent u = new UndergraduateStudent("Toey");		
		s = g;
		s.printName();		
		s = u;
		s.printName(); // dynamic blindingß
		
		int a = 10;
		a += 5;
		System.out.println(a);
	}
}
