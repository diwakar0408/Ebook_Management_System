package userservlet.com;
import entity.com.*;
import DAD.com.*;
import database.com.*;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.com.Usergetset;

public class loginservlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		HttpSession session = req.getSession();
		if(("admin@gmail.com").equals(email) && ("admin").equals(password))
		{
			Usergetset ad=new Usergetset();
			ad.setName("Admin");
			ad.setId(0);
			session.setAttribute("userobj", ad);
			resp.sendRedirect("admin/home.jsp");
			
		}else
		{
		Usergetset u=new Usergetset();
		u.setEmail(email);
		u.setPassword(password);
		loginclass l=new loginclass();
		try {
			Usergetset flag=l.loginprocessmethod(DBcon.get_connection(),u);
			if(flag!=null) {
				session.setAttribute("userobj", flag);
				resp.sendRedirect("index.jsp");
				
			}else {
				session.setAttribute("wrong","Please Enter valid details.....");
				resp.sendRedirect("login.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		}
	}
}
