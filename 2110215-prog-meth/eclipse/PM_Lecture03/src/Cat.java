
public class Cat {
	String name;
	String type;
	String owner;

//	@Override
//	public int hashCode() {
//		return Objects.hash(name, owner, type);
//	}
	
	public Cat(String name, String owner) {
		super();
		this.name = name;
		this.owner = owner;
	}
	
	//	Copy Constructor
	public Cat(Cat other) {
		this.name = other.name;
		this.owner = other.owner;
	}
	
	// Static Factory
	public static Cat cloneCat(Cat other) {
		Cat c = new Cat(other);
		return c;
	}
}
