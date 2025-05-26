
public class Card {
	private String cardType;
	private String cardName;
	private String castingCost;
	private String text;
	private String power;
	private String toughness;

	public String toString() {
		String s = "Type: " + getCardType() + ", Name:" + getCardName() + ", Cost:" + getCastingCost() + ", Text:"
				+ getText();
		String pow = getPower();
		if (!pow.equals("null"))
			s = s + ", Pow:" + pow;
		String tough = getToughness();
		if (!tough.equals("null"))
			s = s + ", Tough:" + tough;

		return s;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String cardName) {
		this.cardName = cardName;
	}

	public String getCastingCost() {
		return castingCost;
	}

	public void setCastingCost(String castingCost) {
		this.castingCost = castingCost;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getPower() {
		return power;
	}

	public void setPower(String power) {
		this.power = power;
	}

	public String getToughness() {
		return toughness;
	}

	public void setToughness(String toughness) {
		this.toughness = toughness;
	}

	public boolean isCreature() {
		return cardType.contains("Creature");
	}

	public boolean isLand() {
		return cardType.contains("Land");
	}

	public boolean isSpell() {
		return !isCreature() && !isLand();
	}

	public int cardTypeNumber() {
		if (isCreature())
			return 1;
		else if (isLand())
			return 3;
		else
			return 2;

	}

	public boolean sameType(Card c) {
		return (isCreature() && c.isCreature()) || (isSpell() && c.isSpell()) || (isLand() && c.isLand());
	}

	public String color() {
		int white = 0, blue = 0, black = 0, red = 0, green = 0;
		if (isLand())
			return "land";

		if (castingCost.contains("W"))
			white++;
		if (castingCost.contains("U"))
			blue++;
		if (castingCost.contains("B"))
			black++;
		if (castingCost.contains("R"))
			red++;
		if (castingCost.contains("G"))
			green++;

		int total = white + blue + black + red + green;
		if (total == 0)
			return "colorless";
		else if (total > 1)
			return "multicolor";
		else {
			if (white == 1)
				return "white";
			else if (blue == 1)
				return "blue";
			else if (black == 1)
				return "black";
			else if (red == 1)
				return "red";
			else
				return "green";
		}

	}

	public int colorNumber() {
		String s = color();
		switch (s) {
		case "white":
			return 1;
		case "blue":
			return 2;
		case "black":
			return 3;
		case "red":
			return 4;
		case "green":
			return 5;
		case "multicolor":
			return 6;
		case "colorless":
			return 7;
		case "land":
			return 8;
		}
		return 0;

	}

	public static String stripNonDigits(final CharSequence input /* inspired by seh's comment */) {
		final StringBuilder sb = new StringBuilder(input.length() /* also inspired by seh's comment */);
		for (int i = 0; i < input.length(); i++) {
			final char c = input.charAt(i);
			if (c > 47 && c < 58) {
				sb.append(c);
			}
		}
		return sb.toString();
	}

	public static String stripDigits(final CharSequence input /* inspired by seh's comment */) {
		final StringBuilder sb = new StringBuilder(input.length() /* also inspired by seh's comment */);
		for (int i = 0; i < input.length(); i++) {
			final char c = input.charAt(i);
			if (!(c > 47 && c < 58)) {
				sb.append(c);
			}
		}
		return sb.toString();
	}

	public int totalCastingCost() {
		String genericCost = stripNonDigits(castingCost);
		int genericCostNum = 0;
		if (!genericCost.equals("")) {
			genericCostNum = Integer.parseInt(genericCost);
		}

		String coloredCost = stripDigits(castingCost);
		int coloredCostNum = 0;
		if (!coloredCost.equals("")) {
			coloredCostNum = coloredCost.length();
		}

		if (coloredCost.contains("X")) {
			coloredCostNum--;
		}
		return genericCostNum + coloredCostNum;
	}

	public boolean sameCost(Card c) {
		return totalCastingCost() == c.totalCastingCost();
	}

	public boolean lessThanByType01(Card c) {
		if (isCreature() && !c.isCreature()) {
			return true;
		} else if (isSpell() && c.isLand()) {
			return true;
		} else if (c.isCreature() && !isCreature()) {
			return false;
		} else if (c.isSpell() && isLand()) {
			return false;
		} else if (sameType(c) && !sameCost(c)) {
			return totalCastingCost() < c.totalCastingCost();
		} else { // if (sameType(c) && sameCost(c))
			return (cardName.compareTo(c.cardName) < 0);
		}
	}

	public boolean lessThanByType(Card c) { // attempt to reduce code from the previous method.
		int thisCardType = cardTypeNumber();
		int cCardType = c.cardTypeNumber();

		if (thisCardType < cCardType) {
			return true;
		} else if (thisCardType > cCardType) {
			return false;
		} else if (thisCardType == cCardType && !sameCost(c)) {
			return totalCastingCost() < c.totalCastingCost();
		} else { // if (thisCardType == cCardType && sameCost(c))
			return (cardName.compareTo(c.cardName) < 0);
		}
	}

	public boolean lessThanByColor(Card c) { // does not attempt to reduce nested loop.
		int colorOfOurCard = colorNumber();
		int colorOfc = c.colorNumber();

		if (colorOfOurCard < colorOfc) {
			return true;
		} else if (colorOfOurCard > colorOfc) {
			return false;
		} else { // same color
			int castingCost = totalCastingCost();
			int cCastingCost = c.totalCastingCost();

			if (castingCost < cCastingCost) {
				return true;
			} else if (castingCost > cCastingCost) {
				return false;
			} else {
				return (cardName.compareTo(c.cardName) < 0);
			}
		}
	}
}
