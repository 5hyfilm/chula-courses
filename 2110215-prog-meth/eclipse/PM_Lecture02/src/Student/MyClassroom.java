package Student;

public class MyClassroom {
	public static void showName(UndergraduateStudent u) {
		u.printName();
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UndergraduateStudent s1 = new UndergraduateStudent("Jo");
		System.out.println(s1.name);
		s1.printName();
		s1.computeCourseGrade();
		
		// upcasting (auto) ลูก -> แม่
		Student s2 = new UndergraduateStudent("Bew");
		System.out.println(s2.name);
		s2.printName();
		
		// downcasting (explicit) แม่ -> ลูก
		UndergraduateStudent s3 = (UndergraduateStudent) s2;
		s3.computeCourseGrade();
		
		
		// polymorphism = same code, different actions!!!
		Student[] students = new Student[10];
		students[0] = new UndergraduateStudent("Pop");
		students[1] = new GraduateStudent("Porama");
		for (Student s: students) {
			if (s != null) {
				s.printName();
			}
		}
	}

}
