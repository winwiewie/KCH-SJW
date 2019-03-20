package test;

public class Dto {

	int number = 0;
	String subject = "";
	int score = 0;

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public Dto(int number, String subject, int score) {
		super();
		this.number = number;
		this.subject = subject;
		this.score = score;
	}

}
