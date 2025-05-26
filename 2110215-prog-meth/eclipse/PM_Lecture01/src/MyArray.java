import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public class MyArray {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Array = fixed size!!!
		int[] scores = new int[5];

		scores[0] = 10;
		scores[1] = 2;
		scores[2] = 9;
		scores[4] = 7;
//		scores[5] = 10;
		System.out.println(scores);
		System.out.println(scores.length);
		System.out.println(Arrays.toString(scores));
		Arrays.sort(scores);
		System.out.println(Arrays.toString(scores));
		
		// ArrayList = extensible array
		ArrayList<Integer> s = new ArrayList<Integer>(2);
		s.add(10);
		s.add(2);
//		s.add(7.5); error
		System.out.println(s);
		System.out.println(s.get(0));
		System.out.println(s.size());
		Collections.sort(s);
		System.out.println(s);
	}

}
