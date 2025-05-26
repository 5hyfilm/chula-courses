import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class Deck {
	private ArrayList<CardCopies> cards = new ArrayList<CardCopies>();

	public ArrayList<CardCopies> getCards() {
		return cards;
	}

	public void setCards(ArrayList<CardCopies> cards) {
		this.cards = cards;
	}

	public void readDeck() {
		Scanner fileScanner = null;
		try {
			fileScanner = new Scanner(new File("src/Thopter.txt"));
			while (fileScanner.hasNext()) {
				Scanner line = new Scanner(fileScanner.nextLine());
				line.useDelimiter(",");

				Card c = new Card();
				c.setCardType(line.next().trim());
				c.setCardName(line.next().trim());
				c.setCastingCost(line.next().trim());
				c.setText(line.next().trim());
				c.setPower(line.next().trim());
				c.setToughness(line.next().trim());

				CardCopies cs = new CardCopies();
				cs.setCard(c);
				cs.setNumberOfCopies(Integer.parseInt(line.next().trim()));

				cards.add(cs);
				line.close();
			}
			fileScanner.close();
		} catch (FileNotFoundException e) {
			System.out.println("Error: File not found! Please re-check before running the program.");
		}
	}

	public void print(int flag) {
		int n = cards.size();
		for (int j = 1; j <= n; j++) {
			for (int i = 0; i < n-1; i++) {
				Card currentCard = cards.get(i).getCard();
				Card nextCard = cards.get(i + 1).getCard();

				boolean mustSwap;
				if (flag == 1) {
					if (nextCard.lessThanByType(currentCard)) {
						mustSwap = true;
					} else {
						mustSwap = false;
					}
				} else {
					if (nextCard.lessThanByColor(currentCard)) {
						mustSwap = true;
					} else {
						mustSwap = false;
					}
				}

				if (mustSwap) {
					cards.get(i).setCard(nextCard);
					cards.get(i + 1).setCard(currentCard);
				}
			}
		}

		for (CardCopies cardCopies : cards) {
			System.out.println(cardCopies);
		}

	}

	public void printByType() { 
		print(1);
	}

	public void printByColor() { 
		print(2);

	}
	
	public static void main(String[] args) {
		Deck d = new Deck();
		d.readDeck();
		d.printByType();
		System.out.println("-----------------------");
		d.printByColor();
		
	}

}
