package userservlet.com;
import entity.com.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAD.com.books_user_impl;
import DAD.com.books_user_interface;

public class OrderServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userid=req.getParameter("userid");
		String address=req.getParameter("address");
		String landmark=req.getParameter("landmark");
		String city=req.getParameter("city");
		String state=req.getParameter("state");
		String zipcode=req.getParameter("zipcode");
		String payment=req.getParameter("payment");
		Usergetset u1=new Usergetset();
		u1.setId(Integer.parseInt(userid));
		u1.setAddress(address);
		u1.setLandmark(landmark);
		u1.setCity(city);
		u1.setState(state);
		u1.setPincode(zipcode);
		u1.setPayment(payment);
		books_user_interface b = new books_user_impl();
		boolean flag=b.OrderCartBooks(u1);
		if(flag==true)
		{
			resp.sendRedirect("all_component/successorder.jsp");
		}
	}

}
