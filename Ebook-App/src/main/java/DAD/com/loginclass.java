package DAD.com;

import java.sql.*;

import database.com.DBcon;
import entity.com.Usergetset;

public class loginclass {
	boolean flag = false;

	public Usergetset loginprocessmethod(Connection con, Usergetset s) throws SQLException {
		Usergetset userobj=null;
		String email = s.getEmail();
		String password = s.getPassword();
		String quary = "select * from ebookuser where EMAIL=(?)";
		try {
			PreparedStatement stm = con.prepareStatement(quary);
			stm.setString(1, email);
			ResultSet rs = stm.executeQuery();
			if (rs.next()) {
				if (((rs.getString("EMAIL")).equals(email)) && ((rs.getString("PASSWORD")).equals(password))) {
					
					loginclass l=new loginclass();
					userobj=l.userDetailsget(email);			
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			con.close();
		}
		return userobj;
	}
	public Usergetset userDetailsget(String email)
	{
		Usergetset userobj=new Usergetset();
		try {
			String quary = "select * from ebookuser where EMAIL=(?)";
			Connection con=DBcon.get_connection();
			PreparedStatement stm;
			stm = con.prepareStatement(quary);
			stm.setString(1, email);
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				userobj.setId(rs.getInt(1));
				userobj.setName(rs.getString(2));
				userobj.setEmail(rs.getString(3));
				userobj.setPhoneno(rs.getString(4));
				userobj.setPassword(rs.getString(5));
				userobj.setAddress(rs.getString(6));
				userobj.setCity(rs.getString(7));
				userobj.setState(rs.getString(8));
				userobj.setPincode(rs.getString(9));
				userobj.setLandmark(rs.getString(10));
				
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return userobj;
	}
}
