package DAD.com;

import java.sql.*;
import database.com.*;

import java.util.ArrayList;
import java.util.List;

import entity.com.*;

public class Allbooks {
	public List<addbookclass> displayAllBooks() throws SQLException {
		List<addbookclass> l1 = new ArrayList<addbookclass>();
		Connection con = DBcon.get_connection();
		addbookclass a = null;
		try {
			String sqlquary = "select * from book_details order by bookid asc";
			PreparedStatement stm = con.prepareStatement(sqlquary);
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				a = new addbookclass();
				a.setBookid(rs.getInt(1));
				a.setBookname(rs.getString(2));
				a.setAuthor(rs.getString(3));
				a.setPrice(rs.getString(4));
				a.setBookcategory(rs.getString(5));
				a.setStatus(rs.getString(6));
				a.setPhotoname(rs.getString(7));
				l1.add(a);

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return l1;

	}

	public addbookclass getBookByTd(int id) throws SQLException {
		Connection con = DBcon.get_connection();
		addbookclass a = null;
		try {
			String sqlquary1 = "select * from book_details where bookid=(?)";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			stm.setInt(1, id);
			ResultSet rs = stm.executeQuery();
			while (rs.next()) {
				a = new addbookclass();
				a.setBookid(rs.getInt(1));
				a.setBookname(rs.getString(2));
				a.setAuthor(rs.getString(3));
				a.setPrice(rs.getString(4));
				a.setBookcategory(rs.getString(5));
				a.setStatus(rs.getString(6));
				a.setPhotoname(rs.getString(7));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return a;

	}

	public boolean updateBook(addbookclass b) {
		boolean flag = false;
		try {
		Connection con = DBcon.get_connection();
		String sqlquary1 = "update book_details set BOOKNAME=(?),AUTHOR=(?),PRICE=(?),STATUS=(?) where bookid=(?)";
		PreparedStatement stm=con.prepareStatement(sqlquary1);
		stm.setString(1,b.getBookname());
		stm.setString(2, b.getAuthor());
		stm.setString(3, b.getPrice());
		stm.setString(4, b.getStatus());
		stm.setInt(5, b.getBookid());
		int i=stm.executeUpdate();
		if(i!=0) {
			flag=true;
		}
		con.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;

	}
	public boolean DeleteBook(int id) {
		boolean flag = false;
		try {
		Connection con = DBcon.get_connection();
		String sqlquary1 = "delete from book_details where bookid=(?)";
		PreparedStatement stm=con.prepareStatement(sqlquary1);
		stm.setInt(1,id);
		int i=stm.executeUpdate();
		if(i!=0) {
			flag=true;
		}
		con.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;

	}
	public List<addbookclass> getAlOrders()
	{
		List<addbookclass> l1 = new ArrayList<addbookclass>();
		Connection con = DBcon.get_connection();
		try {
			String sqlquary1 = "select * from ORDERED_BOOKS";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			ResultSet rs0 = stm.executeQuery();
			addbookclass a = null;

			while (rs0.next()) {
				// System.out.println(rs0.getInt("BOOKID"));
				a = new addbookclass();
			  a.setOrderid(rs0.getString(2));
			  a.setUserid(rs0.getInt(3));
			   a.setAddress(rs0.getString(4));
			   a.setBookname(rs0.getString(5));
			   a.setAuthor(rs0.getString(6));
			   a.setPrice(rs0.getString(7));
			   a.setPayment(rs0.getString(8));
				l1.add(a);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return l1;
		
	}

}
