package userservlet.com;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAD.com.books_user_impl;
import DAD.com.books_user_interface;

public class Delete_Cart_Book extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int userid = Integer.parseInt(req.getParameter("userid"));
		int bookid = Integer.parseInt(req.getParameter("bookid"));
		books_user_interface b = new books_user_impl();
		boolean flag = b.deleteCartBook(bookid, userid);
		HttpSession session=req.getSession();
		if (flag == true) {
			session.setAttribute("sucess23","Book Removed From Cart...");
			resp.sendRedirect("all_component/cartbooks.jsp");
		}else
		{
			session.setAttribute("failur23","try After 1-Houre.....");
			resp.sendRedirect("all_component/cartbooks.jsp");
		}
	}

}
