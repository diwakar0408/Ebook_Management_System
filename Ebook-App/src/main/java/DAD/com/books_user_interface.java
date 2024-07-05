package DAD.com;
import java.sql.SQLException;
import java.util.*;
import entity.com.*;
public interface books_user_interface {
	public List<addbookclass> getRecentBooks();
	public List<addbookclass> getOldBooks();
	public List<addbookclass> getNewBooks();
	public List<addbookclass> getAllRecentBooks();
	public List<addbookclass> getAllOldBooks();
	public List<addbookclass> getAllNewBooks();
	public List<addbookclass> getAllCartBooks(int id);
	public int addtoCart(int userid,addbookclass a) throws SQLException ;
	public addbookclass getBook(int a);
	public boolean deleteCartBook(int bid,int uid);
	public boolean OrderCartBooks(Usergetset u);
	public List<addbookclass> getAllOrderBooks(int id);
}
