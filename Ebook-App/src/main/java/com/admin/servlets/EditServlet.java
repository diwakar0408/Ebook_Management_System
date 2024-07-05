package com.admin.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAD.com.Allbooks;
import entity.com.addbookclass;

public class EditServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(req.getParameter("idvalue"));
		String bookname=req.getParameter("bookname");
		String authorname=req.getParameter("authorname");
		String price=req.getParameter("price");
		String status=req.getParameter("status");
		addbookclass a=new addbookclass();
		a.setBookname(bookname);
		a.setAuthor(authorname);
		a.setPrice(price);
		a.setStatus(status);
		a.setBookid(id);
		Allbooks b=new Allbooks();
		boolean flag=b.updateBook(a);
		HttpSession session=req.getSession();
		if(flag==true)
		{
			session.setAttribute("sucess","Updated sucess.....");
			resp.sendRedirect("allbooks.jsp");
		}
		else {
			session.setAttribute("failur","Update Failur.....");
			resp.sendRedirect("allbooks.jsp");
		}
		
	}

}
