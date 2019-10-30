import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnector {
	private Connection database;
	DatabaseConnector() {
		String connectionUrl = "jdbc:mysql://prclab1.erau.edu:3306/burrelm1_db";
		try {
			database = DriverManager.getConnection(connectionUrl, "prescott", "embryriddle");
			if(database != null) {
				System.out.println("Successfully connected to prclab");
			}
		} catch(Exception e) {
			System.out.println("COULD NOT CONNECT TO PRCLAB");
			e.printStackTrace();
		}
	}

	DatabaseConnector(String host, String database, String user, String password) { 
		String connectionURL = "jdbc:mysql://" + host + "/" + database;
		System.out.println("Attempting to connect to database " + database + "at host " + host);
		try {
			this.database = DriverManager.getConnection(connectionURL, user, password);
		} catch (SQLException e) {
			System.out.println("Connectioned Failed");
			database = null;
			e.printStackTrace();
		}
	}

	public ResultSet runQuery(String query) {
		Statement smt = null;
		ResultSet rs = null;
		try {
			if(database != null && !database.isClosed()) {
				smt = database.createStatement();
				rs = smt.executeQuery(query);
			} 
		} catch (Exception e) {
			System.out.print("Failed to execute querey");
			e.printStackTrace();
			rs = null;
		}
		return rs;
	}
	
	public void close() {
		if(database != null) {
			try {
			  database.close();
			}  catch (SQLException e) { 
				e.printStackTrace();
			}
		}
	}

}
