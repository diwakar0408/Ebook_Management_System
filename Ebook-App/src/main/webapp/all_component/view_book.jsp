<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*"%>
<%@ page import="database.com.*,DAD.com.*,entity.com.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewBook</title>
<%@include file="allCss2.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="navbar2.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<%
	int a1 = Integer.parseInt(request.getParameter("bookid"));
	books_user_interface b = new books_user_impl();
	addbookclass a = b.getBook(a1);
	%>
	<div class="container " style="margin-top: 30px; margin-bottom: 20px;">
		<div class="row">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="../Books/<%=a.getPhotoname()%>" alt="" height="200px"
					width="150px">
				<h5>
					Book Name:<span class="text-success"><%=a.getBookname()%></span>
				</h5>
				<h5>
					Author Name:<span class="text-success"><%=a.getAuthor()%></span>
				</h5>
				<h5>
					Book Category:<span class="text-success"><%=a.getBookcategory()%></span>
				</h5>
			</div>
			<div class="col-md-6 text-center p-5 border bg-white">
				<h3 style="font-weight: bold;">Java Programming</h3>
				<h4 style="color: green;">
					Contact to Seller
					</h2>
					<h6>
						Email:admin@gmail.com
						</h5>
						<h6>
							PhoneNo:7856XXXXXX
							</h5>
							<div class="row" style="margin-top: 60px;">
								<div class="col-md-4 text-danger text-center">
									<i class="fa-solid fa-money-bill-1-wave fa-3x"></i>
									<h6>Cash on Delivery</h6>
								</div>
								<div class="col-md-4 text-danger text-center">
									<i class="fa-solid fa-arrow-rotate-left fa-3x"></i>
									<h6>Return Available</h6>
								</div>
								<div class="col-md-4 text-danger text-center">
									<i class="fa-solid fa-truck fa-3x"></i>
									<h6>Free Delivery</h6>
								</div>

							</div>
							<div class="row" style="margin-left: 130px; margin-top: 30px">
								<div class="text-center">
									<a href="../index.jsp" class="btn btn-success btn-sm ml-2"></i>Continue Shopping</a> <a href=""
										class="btn btn-danger btn-sm ml-2"><%=a.getPrice()%><i
										class="fa-solid fa-indian-rupee-sign"></i></a>
								</div>

							</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>