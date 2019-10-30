
public class runner {

	public static void main(String[] args) {
		try {
		Soccer soccer = new Soccer();
		System.out.println("Part 1: printing team names\n---------------------");
		soccer.printTeamNames();
		System.out.println("Part 1: printing team names using a prodcedure\n---------------------");
		soccer.printTeamNames(true);
		System.out.println("Part 3: printing a player's team name\n---------------------");
		soccer.printPlayerTeam("Sam", "Seiwert");
		soccer.destroy();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("THINGS WENT WRONG");
		}
	}

}
