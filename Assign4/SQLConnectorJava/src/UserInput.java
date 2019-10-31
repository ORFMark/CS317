import java.util.Scanner;
public class UserInput {
	Scanner scan = null;
	UserInput() {
		scan = new Scanner(System.in);
	}
	public int getInteger() {
		String temp = scan.nextLine();
		return Integer.parseInt(temp);
	}
	public double getDouble() {
		String temp = scan.nextLine();
		return Double.parseDouble(temp);
	}
	public String getString() {
		return scan.nextLine();
	}
	public char getCharacter() {
		String temp = scan.nextLine();
		return temp.charAt(0);
	}
}
