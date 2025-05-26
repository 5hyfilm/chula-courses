package logic;

import java.util.ArrayList;

public class UnitDeck {
	private ArrayList<CardCounter> cardsInDeck;
	private String deckName;
	

	
	public ArrayList<CardCounter> getCardsInDeck() {
		return cardsInDeck;
	}

	public void setCardsInDeck(ArrayList<CardCounter> cardsInDeck) {
		this.cardsInDeck = cardsInDeck;
	}

	public String getDeckName() {
		return deckName;
	}

	public void setDeckName(String deckName) {
		if (deckName.isBlank()) {
			this.deckName = "Untitled Deck";
		}else {
			this.deckName = deckName;
		}
	}

	public UnitDeck(String deckName) {
		cardsInDeck = new ArrayList<CardCounter>();
		setDeckName(deckName);
	}
		
	public void addCard(UnitCard newCard, int count) {
		if (count > 0) {
			if (existsInDeck(newCard)) {
				for (CardCounter c : cardsInDeck) {
					if (c.getCard() == newCard) {
						int c2;
						c2 = c.getCount();					
						c2 += count;
						c.setCount(c2);
					}
				}
			}else {
				cardsInDeck.add(new CardCounter(newCard, count));
			}
			
		}
	}
	
	public void removeCard(UnitCard toRemove, int count) {
		if (count > 0) {
			if (existsInDeck(toRemove)) {
				for (CardCounter c : cardsInDeck) {
					if (c.getCard().equals(toRemove)) {
						int c2;
						c2 = c.getCount();					
						c2 -= count;
						c.setCount(c2);
						if (c.getCount() <= 0) {
							cardsInDeck.remove(this.cardsInDeck.indexOf(c));
							break;
						}
					}
				}
			}
		}
	}
	
	public int cardCount() {
		int numCards = 0;
		for (CardCounter c : cardsInDeck) {	
			numCards += c.getCount();
		}
		return numCards;
	}
	
	public boolean existsInDeck(UnitCard card) {
		for (CardCounter c : cardsInDeck) {
			if (c.getCount() > 0 && c.getCard().equals(card)) {
				return true;
			}
		}return false;
	}
	
	public boolean equals(UnitDeck other) {
		if (this.deckName.equals(other.deckName)) {
			return true;
		}return false;
	}
}