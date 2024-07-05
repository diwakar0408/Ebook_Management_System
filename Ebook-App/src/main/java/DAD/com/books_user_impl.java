package DAD.com;

import database.com.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import entity.com.Usergetset;
import entity.com.addbookclass;

public class books_user_impl implements books_user_interface {
	public List<addbookclass> getRecentBooks() {
		List<addbookclass> l1 = new ArrayList<addbookclass>();
		Connection con = DBcon.get_connection();
		try {
			String sqlquary1 = "select * from book_details where STATUS=(?)";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			stm.setString(1, "Active");
			ResultSet rs = stm.executeQuery();
			addbookclass a = null;
			int i = 1;
			while (rs.next() && i <= 4) {
				a = new addbookclass();
				a.setBookid(rs.getInt(1));
				a.setBookname(rs.getString(2));
				a.setAuthor(rs.getString(3));
				a.setPrice(rs.getString(4));
				a.setBookcategory(rs.getString(5));
				a.setStatus(rs.getString(6));
				a.setPhotoname(rs.getString(7));
				l1.add(a);
				i++;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l1;
	}

	public List<addbookclass> getOldBooks() {
		List<addbookclass> l1 = new ArrayList<addbookclass>();
		Connection con = DBcon.get_connection();
		try {
			String sqlquary1 = "select * from book_details where BOOKCATEGORY=(?) and STATUS=(?)";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			stm.setString(1, "Old Book");
			stm.setString(2, "Active");
			ResultSet rs = stm.executeQuery();
			addbookclass a = null;
			int i = 1;
			while (rs.next() && i <= 4) {
				a = new addbookclass();
				a.setBookid(rs.getInt(1));
				a.setBookname(rs.getString(2));
				a.setAuthor(rs.getString(3));
				a.setPrice(rs.getString(4));
				a.setBookcategory(rs.getString(5));
				a.setStatus(rs.getString(6));
				a.setPhotoname(rs.getString(7));
				l1.add(a);
				i++;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l1;
	}

	public List<addbookclass> getNewBooks() {
		List<addbookclass> l1 = new ArrayList<addbookclass>();
		Connection con = DBcon.get_connection();
		try {
			String sqlquary1 = "select * from book_details where BOOKCATEGORY=(?) and STATUS=(?) order by bookid DESC";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			stm.setString(1, "New Book");
			stm.setString(2, "Active");
			ResultSet rs = stm.executeQuery();
			addbookclass a = null;
			int i = 1;
			while (rs.next() && i <= 4) {
				a = new addbookclass();
				a.setBookid(rs.getInt(1));
				a.setBookname(rs.getString(2));
				a.setAuthor(rs.getString(3));
				a.setPrice(rs.getString(4));
				a.setBookcategory(rs.getString(5));
				a.setStatus(rs.getString(6));
				a.setPhotoname(rs.getString(7));
				l1.add(a);
				i++;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l1;
	}

	public List<addbookclass> getAllRecentBooks() {
		List<addbookclass> l1 = new ArrayList<addbookclass>();
		Connection con = DBcon.get_connection();
		try {
			String sqlquary1 = "select * from book_details where STATUS=(?) order by bookid desc";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			stm.setString(1, "Active");
			ResultSet rs = stm.executeQuery();
			addbookclass a = null;
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
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l1;
	}

	public List<addbookclass> getAllOldBooks() {
		List<addbookclass> l1 = new ArrayList<addbookclass>();
		Connection con = DBcon.get_connection();
		try {
			String sqlquary1 = "select * from book_details where BOOKCATEGORY=(?) and STATUS=(?)";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			stm.setString(1, "Old Book");
			stm.setString(2, "Active");
			ResultSet rs = stm.executeQuery();
			addbookclass a = null;

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
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l1;
	}

	public List<addbookclass> getAllNewBooks() {
		List<addbookclass> l1 = new ArrayList<addbookclass>();
		Connection con = DBcon.get_connection();
		try {
			String sqlquary1 = "select * from book_details where BOOKCATEGORY=(?) and STATUS=(?) order by bookid DESC";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			stm.setString(1, "New Book");
			stm.setString(2, "Active");
			ResultSet rs = stm.executeQuery();
			addbookclass a = null;

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
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l1;
	}

	public addbookclass getBook(int a1) {
		addbookclass a = new addbookclass();
		Connection con = DBcon.get_connection();
		try {
			String sqlquary1 = "select * from book_details where bookid=(?)";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			stm.setInt(1, a1);
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
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}

	public List<addbookclass> getAllCartBooks(int id) {
		List<addbookclass> l1 = new ArrayList<addbookclass>();
		Connection con = DBcon.get_connection();
		try {
			String sqlquary1 = "select * from ADDCART_BOOKS where USERID=(?)";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			stm.setInt(1, id);
			ResultSet rs0 = stm.executeQuery();
			addbookclass a = null;

			while (rs0.next()) {
				// System.out.println(rs0.getInt("BOOKID"));
				a = new addbookclass();
				a.setBookid2(rs0.getInt("BOOKID"));
				a.setUserid(id);
				a.setBookid(rs0.getInt("BOOKID"));
				a.setBookname(rs0.getString(3));
				a.setAuthor(rs0.getString(6));
				a.setPrice(rs0.getString(4));
				a.setBookcategory(rs0.getString(5));
				a.setBookid(id);
				l1.add(a);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l1;

	}

	public int addtoCart(int userid, addbookclass a) throws SQLException {
		int flag = 0;
		Connection con = DBcon.get_connection();
		int bookid = a.getBookid();
		String bookname = a.getBookname();
		String bookCategory = a.getBookcategory();
		String bookprice = a.getPrice();
		String bookauthor = a.getAuthor();
		try {
			String quary12 = "select * from ADDCART_BOOKS where USERID=(?) and BOOKID=(?)";
			PreparedStatement ps12 = con.prepareStatement(quary12);
			ps12.setInt(1, userid);
			ps12.setInt(2, bookid);
			ResultSet rs1 = ps12.executeQuery();
			if (!rs1.next()) {
				String quary = "insert into ADDCART_BOOKS values(?,?,?,?,?,?) ";
				PreparedStatement ps = con.prepareStatement(quary);
				ps.setInt(1, userid);
				ps.setInt(2, bookid);
				ps.setString(3, bookname);
				ps.setString(4, bookprice);
				ps.setString(5, bookCategory);
				ps.setString(6, bookauthor);
				int i = ps.executeUpdate();
				if (i != 0) {
					flag = 2;
				}
			} else {
				flag = 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			con.close();
		}
		return flag;
	}

//Delete Cart Book Method
	public boolean deleteCartBook(int bid, int uid) {
		boolean flag = false;
		try {
			Connection con = DBcon.get_connection();
			String sqlquary1 = "delete from ADDCART_BOOKS where BOOKID=(?) and USERID=(?)";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			stm.setInt(1, bid);
			stm.setInt(2, uid);
			int i = stm.executeUpdate();
			if (i != 0) {
				flag = true;
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;

	}

	public boolean OrderCartBooks(Usergetset u) {
		boolean flag = false;
		try {
			Connection con = DBcon.get_connection();
			String quary = "update ebookuser set ADRESS=(?),city=(?),state=(?),pincode=(?),landmark=(?) where id=(?)";
			PreparedStatement stm = con.prepareStatement(quary);
			stm.setString(1, u.getAddress());
			stm.setString(2, u.getCity());
			stm.setString(3, u.getState());
			stm.setString(4, u.getPincode());
			stm.setString(5, u.getLandmark());
			stm.setInt(6, u.getId());
			int i = stm.executeUpdate();
			if (i != 0) {
				flag = true;
			}
			if (flag == true) {
				int col = 0;
				books_user_impl bu = new books_user_impl();
				List<addbookclass> l1 = bu.getAllCartBooks(u.getId());
				String sqlquary = "insert into ORDERED_BOOKS(ORDERID,USERID,ADDRESS,BOOKNAME,AUTHOR,PRICE,PAYMENT) values(?,?,?,?,?,?,?)";
				PreparedStatement pt = con.prepareStatement(sqlquary);
				Random rand = new Random();
				String orderid = "ORDERID-" + rand.nextInt((9999 - 100) + 1) + 10;
				for (addbookclass a : l1) {
           
					pt.setString(1, orderid);
					pt.setInt(2, u.getId());
					pt.setString(3, u.getLandmark()+","+u.getAddress()+","+u.getCity()+","+u.getState()+","+u.getPincode()+".");
					pt.setString(4, a.getBookname());
					pt.setString(5, a.getAuthor());
					pt.setString(6, a.getPrice());
					pt.setString(7, u.getPayment());
					col = pt.executeUpdate();
				}
				if (col != 0) {
					flag = true;
				} else {
					flag = false;
				}
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;

	}

	public List<addbookclass> getAllOrderBooks(int id) {
		List<addbookclass> l1 = new ArrayList<addbookclass>();
		Connection con = DBcon.get_connection();
		try {
			String sqlquary1 = "select * from ORDERED_BOOKS where USERID=(?)";
			PreparedStatement stm = con.prepareStatement(sqlquary1);
			stm.setInt(1, id);
			ResultSet rs0 = stm.executeQuery();
			addbookclass a = null;

			while (rs0.next()) {
				// System.out.println(rs0.getInt("BOOKID"));
				a = new addbookclass();
			  a.setOrderid(rs0.getString(2));
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
