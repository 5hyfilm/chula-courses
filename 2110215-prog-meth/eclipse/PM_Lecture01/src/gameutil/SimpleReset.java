package gameutil;
public class SimpleReset {
	// 1) properties (variables)
	final static int MAX = 6; 
	private int faceValue; 
//	public int count = 100;
	
	// 2) actions (methods)
	public SimpleReset(int faceValue) {
		this.faceValue = faceValue;
	}
	
	public SimpleReset() {
		this.roll();
	}

	// setter (mutator)
	public void setFaceValue(int v) {
		if(v < 1) {
			this.faceValue = 1;
		}
		else if(v > this.MAX) {
			this.faceValue = this.MAX;
		}
		else {
			this.faceValue = v;
		}
	}
	
	public int getFaceValue() {
		return this.faceValue;
	}
	
	
	public int roll() {
		faceValue = (int) (Math.random() * MAX) + 1;
		return faceValue;
	}
	
	public String toString() {
		return "My face value is " + this.faceValue;
	}
	
	public boolean equal(Object o) {
		SimpleReset other = (SimpleReset) o;
		return (this.faceValue == other.faceValue);
	}
	
}