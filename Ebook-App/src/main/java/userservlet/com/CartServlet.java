package userservlet.com;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAD.com.books_user_impl;
import DAD.com.books_user_interface;
import entity.com.addbookclass;

public class CartServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int bookid = Integer.parseInt(req.getParameter("bookid"));
		String requesttype = req.getParameter("requesttype");
		int userid = Integer.parseInt(req.getParameter("userid"));
		String bookname = req.getParameter("bookname");
		String bookprice = req.getParameter("bookprice");
		String authorname = req.getParameter("authorname");
		String bookcategorie = req.getParameter("bookcategorie");
		addbookclass a = new addbookclass();
		a.setAuthor(authorname);
		a.setBookcategory(bookcategorie);
		a.setBookid(bookid);
		a.setBookname(bookname);
		a.setPrice(bookprice);
		books_user_interface b = new books_user_impl();
	int flag = 0;
		try {
			flag = b.addtoCart(userid, a);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		HttpSession session = req.getSession();
		if (flag == 1) {
			session.setAttribute("alredy", "Already added in Cart");
			if (requesttype.equals("index")) {
				resp.sendRedirect("index.jsp");
			} else if (requesttype.equals("allnew")) {
				resp.sendRedirect("all_component/All_new_books.jsp");
			} else if (requesttype.equals("allold")) {
				resp.sendRedirect("all_component/All_old_books.jsp");
			} else {
				resp.sendRedirect("all_component/all_recent_books.jsp");
			}

		} else if (flag == 2) {
			session.setAttribute("sucess", "Sucessfully added to cart");
			if (requesttype.equals("index")) {
				resp.sendRedirect("index.jsp");
			} else if (requesttype.equals("allnew")) {
				resp.sendRedirect("all_component/All_new_books.jsp");
			} else if (requesttype.equals("allold")) {
				resp.sendRedirect("all_component/All_old_books.jsp");
			} else {
				resp.sendRedirect("all_component/all_recent_books.jsp");
			}
		} else {
			session.setAttribute("fail", "try later");
			if (requesttype.equals("index")) {
				resp.sendRedirect("index.jsp");
			} else if (requesttype.equals("allnew")) {
				resp.sendRedirect("all_component/All_new_books.jsp");
			} else if (requesttype.equals("allold")) {
				resp.sendRedirect("all_component/All_old_books.jsp");
			} else {
				resp.sendRedirect("all_component/all_recent_books.jsp");
			}
		}
	}
}
