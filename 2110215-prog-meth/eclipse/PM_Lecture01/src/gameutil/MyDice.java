package gameutil;

import java.util.Objects;

public class MyDice {
	public final static int MAX = 6;
	private int faceValue;
	
	public MyDice(int faceValue) {
		this.faceValue = faceValue;
	}

	public MyDice() {
		this.faceValue = 1;
	}

	public int getFaceValue() {
		return faceValue;
	}

	public void setFaceValue(int faceValue) {
		this.faceValue = faceValue;
	}

	@Override
	public String toString() {
		return "MyDice [faceValue=" + faceValue + "]";
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MyDice other = (MyDice) obj;
		return faceValue == other.faceValue;
	}
	
	

}
