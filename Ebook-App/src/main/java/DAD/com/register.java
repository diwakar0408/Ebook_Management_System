package DAD.com;

import java.sql.*;
import entity.com.*;

public class register {
	Usergetset u;

	public register(Usergetset u) {
		this.u = u;
	}

	public register() {
		// TODO Auto-generated constructor stub
	}

	public int registermethod(Connection con) throws SQLException {
		int flag = 0;
		String name = u.getName();
		String phone = u.getPhoneno();
		String email = u.getEmail();
		String password = u.getPassword();
		String quary1 = "select name from ebookuser where PHONE=(?)";
		String quary2 = "select name from ebookuser where EMAIL=(?)";
		PreparedStatement ps1 = con.prepareStatement(quary1);
		ps1.setString(1, phone);
		PreparedStatement ps2 = con.prepareStatement(quary2);
		ps2.setString(1,email );
		ResultSet rs1 = ps1.executeQuery();
		ResultSet rs2 = ps2.executeQuery();
        if(rs1.next())
        {
        	flag=1;
        }else if(rs2.next())
        {
        	flag=2;
        }else {
        	String quary = "insert into ebookuser(name,email,phone,password) values(?,?,?,?)";
        	PreparedStatement stm = con.prepareStatement(quary);
        	stm.setString(1, name);
			stm.setString(2, email);
			stm.setString(3, phone);
			stm.setString(4, password);
			int i = stm.executeUpdate();
			if (i != 0) {
				flag = 3;
			}
        }
        con.close();
		return flag;

	}

}
