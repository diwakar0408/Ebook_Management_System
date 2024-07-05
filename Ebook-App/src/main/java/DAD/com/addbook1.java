package DAD.com;
import database.com.*;
import entity.com.*;
import java.sql.*;
public class addbook1 {
	Connection con;
	addbookclass a;
	public addbook1(Connection con,addbookclass a) {
		super();
		this.con=con;
		this.a=a;
		
	}
	boolean flag=false;
	public boolean addBookMethod() throws SQLException
	{
		try {
			String quary = "insert into book_details(bookname,author,price,BOOKCATEGORY,STATUS,PHOTO) values(?,?,?,?,?,?)";
        	PreparedStatement stm = con.prepareStatement(quary);
        	stm.setString(1,a.getBookname());
        	stm.setString(2, a.getAuthor());
        	stm.setString(3, a.getPrice());
        	stm.setString(4, a.getBookcategory());
        	stm.setString(5, a.getStatus());
        	stm.setString(6, a.getPhotoname());
        	int val=stm.executeUpdate();
        	if(val!=0)
        	{
        		flag=true;
        	}
        	
        	
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally {
			con.close();
		}
		
		return flag;
	}
}
