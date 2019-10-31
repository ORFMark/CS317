
public class runner {

	public static void main(String[] args) {
		try {
		String first = null;
		String last = null;
		UserInput user = new UserInput();
		Soccer soccer = new Soccer();
		System.out.println("Part 1: printing team names\n---------------------");
		soccer.printTeamNames();
		System.out.println("Part 1: printing team names using a prodcedure\n---------------------");
		soccer.printTeamNames(true);
		System.out.print("Enter the player's first name: ");
		first = user.getString();
		System.out.print("Enter the player's last name: ");
		last = user.getString();
		System.out.println("Part 3: printing a player's team name\n---------------------");
		soccer.printPlayerTeam(first, last);
		System.out.println("Part 4: printing a player's schedule\n---------------------");
		soccer.printPlayerSchedule(first, last);
		soccer.destroy();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("THINGS WENT WRONG");
		}
	}

}
