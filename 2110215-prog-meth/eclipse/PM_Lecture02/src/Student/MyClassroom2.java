package Student;

public class MyClassroom2 {
	public static void showName(Student s) {
		s.printName();
		if (s instanceof UndergraduateStudent) {
			System.out.println("Let's have a party!!!");
		}
	}

	public static void main(String[] args) {
		Student s1 = new Student("Jo");
		UndergraduateStudent s2 = new UndergraduateStudent("Bew");
		GraduateStudent s3 = new GraduateStudent("Pong");
		
		showName(s2);
	}

}