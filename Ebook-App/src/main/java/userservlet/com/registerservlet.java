package userservlet.com;
import java.sql.*;
import database.com.*;
import entity.com.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAD.com.*;
public class registerservlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		String name=req.getParameter("username");
		String phone=req.getParameter("userphonenumber");
		String emial=req.getParameter("Email");
		String password=req.getParameter("password");
		Usergetset u=new Usergetset();
		u.setName(name);
		u.setPhoneno(phone);
		u.setEmail(emial);
		u.setPassword(password);
		register r=new register(u);
		HttpSession session=req.getSession();
	   try {
		int flag=r.registermethod(DBcon.get_connection());
		if(flag==1)
		{
			session.setAttribute("phoneexist","Phone number is alreay Registered.....");
			resp.sendRedirect("register.jsp");
		}else if(flag==2)
		{
			session.setAttribute("emailexist","Email is alreay Registered.....");
			resp.sendRedirect("register.jsp");
		}else if(flag==3) {
			session.setAttribute("sucessreg","Sucessfully Registered...go to login");
			resp.sendRedirect("register.jsp");
		}else {
			session.setAttribute("failure","try after 1hour for Regisation");
			resp.sendRedirect("register.jsp");
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	}

}
