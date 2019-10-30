import java.sql.ResultSet;
import java.sql.SQLException;

public class Soccer {
	private DatabaseConnector conn;

	Soccer() {
		conn = new DatabaseConnector();
	}

	public void printTeamNames() {
		String query = "SELECT team_name FROM team";
		ResultSet rs = conn.runQuery(query);
		int count = 0;
		try {
			System.out.println("Team names\n--------------");
			while (rs.next()) {
				System.out.println(rs.getString("team_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
			}
		}

	}

	public void printTeamNames(boolean useProc) {
		String query = null;
		if (!useProc) {
			query = "SELECT team_name FROM team";
		} else {
			query = "CALL teamnames()";
		}
		ResultSet rs = conn.runQuery(query);
		int count = 0;
		try {
			System.out.println("Team names\n--------------");
			while (rs.next()) {
				System.out.println(rs.getString("team_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
			}
		}

	}

	public void printPlayerTeam(String first, String last) {
		String Query = "CALL teamnamesPlayer(\"" + first + "\", \"" + last + "\");";
		ResultSet rs = conn.runQuery(Query);
		int count = 0;
		try {
			System.out.println("Player      |   team\n-----------------------");
			while (rs.next()) {
				System.out.println(rs.getString("player") + " | " + rs.getString("team_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (SQLException e) {
			}
		}
	}

	public void destroy() {
		if (conn != null) {
			conn.close();
		}
	}
}
