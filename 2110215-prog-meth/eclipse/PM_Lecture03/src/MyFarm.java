
public class MyFarm {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Cat c1 = new Cat("Min", "Pop");
		Cat c2 = new Cat(c1);
		
		Cat c3 = Cat.cloneCat(c1);
		
		Cat c4 = c1.cloneCat(c3)
	}

}
