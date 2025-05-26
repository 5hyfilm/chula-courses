package logic;

public class UnitItem extends Item {
	private int amount;
	
	public UnitItem(String name, double unitPrice, int amount) {
		this.name = name;
		this.unitPrice = unitPrice;
		this.amount = amount;
		
	}
	
	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public double cost() {
		return this.unitPrice * this.amount;
	}
	
	public String toString() {
		return String.format("UnitItem: %s\i\d\", this.name, this.amount, this.unitPrice, this.cost());
	}
}
