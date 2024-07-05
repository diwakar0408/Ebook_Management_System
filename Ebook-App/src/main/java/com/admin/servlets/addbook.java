package com.admin.servlets;

import DAD.com.*;
import entity.com.*;
import database.com.*;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import entity.com.addbookclass;

@MultipartConfig
public class addbook extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookname = req.getParameter("bookname");
			String authorname = req.getParameter("authorname");
			String price = req.getParameter("price");
			String bookcategorie = req.getParameter("bookcategorie");
			String bookstatus = req.getParameter("status");
			Part part = req.getPart("photo");
			String filename = part.getSubmittedFileName();
			addbookclass add = new addbookclass(bookname, authorname, price, bookcategorie, bookstatus, filename,
					"admin@gmail.com");
			addbook1 add1 = new addbook1(DBcon.get_connection(), add);
			boolean flag = add1.addBookMethod();
			HttpSession session=req.getSession();
			if (flag == true) {
				String path=getServletContext().getRealPath("")+"Books";
				File file=new File(path);
				part.write(path+File.separator +filename);
              session.setAttribute("sucess", "Book added sucessfully....");
              resp.sendRedirect("addbook.jsp");
			} else {
				session.setAttribute("failure", "Book Not added try after 1H....");
				resp.sendRedirect("addbook.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
