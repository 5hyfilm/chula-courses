import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ClassRoomTest {
	ClassRoom c1;
	
	@BeforeEach
	void initClassRoom() {
		c1 = new ClassRoom();
		c1.add("Bew");
		c1.add("Jo");
	}
	
	@Test
	void testAdd() {
		assertEquals(2,c1.sizeOfStudent());
		assertThrows(ArithmeticException.class, ()->{
			double a = 1/0;
		});
	}

	@Test
	void testRemove() {
		assertEquals( 2,c1.sizeOfStudent() );
		c1.remove("Pop");
		assertEquals( 2 ,c1.sizeOfStudent() );
		c1.remove("Bew");
		assertEquals( 1,c1.sizeOfStudent() );
	}
}