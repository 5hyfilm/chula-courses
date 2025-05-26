
public class CardCopies {
	private int numberOfCopies;
	private Card card;

	public int getNumberOfCopies() {
		return numberOfCopies;
	}

	public void setNumberOfCopies(int numberOfCopies) {
		this.numberOfCopies = numberOfCopies;
	}

	public Card getCard() {
		return card;
	}

	public void setCard(Card card) {
		this.card = card;
	}
	
	public String toString() {
		String s = "Number: "+ numberOfCopies + ", " + card.toString();
		return s;
	}

}
