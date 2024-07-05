package com.admin.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAD.com.Allbooks;

public class DeleteServletClass extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(req.getParameter("bookid"));
		Allbooks b=new Allbooks();
		boolean flag=b.DeleteBook(id);
		HttpSession session=req.getSession();
		if(flag==true)
		{
			session.setAttribute("sucess","Book Deleted...");
			resp.sendRedirect("allbooks.jsp");
		}else
		{
			session.setAttribute("failur","Contact Devloper.....");
			resp.sendRedirect("allbooks.jsp");
		}
		
	}

}
