
public class runner {

	public static void main(String[] args) {
		try {
		Soccer soccer = new Soccer();
		soccer.printTeamNames();
		soccer.destroy();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("THINGS WENT WRONG");
		}
	}

}
