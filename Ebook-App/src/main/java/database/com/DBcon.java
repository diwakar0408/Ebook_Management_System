package database.com;
import java.sql.*;
public class DBcon {
	private static Connection con;
	public static Connection get_connection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","DIWAKAREBOOK","Diwakar@123");
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception Occured");
			System.out.println(e);
		}
		return con;
	}
}
