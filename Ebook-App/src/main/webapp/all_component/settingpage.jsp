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
<title>setting-page</title>
<%@include file="allCss2.jsp"%>
<style type="text/css">
a:hover {
	text-decoration: none;
}
</style>
</head>
<body>
	<%@include file="navbar2.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<div style="background-color: #F9F6EE;">
		<div class="container">
			<h4 class="text-center">Hello My Dear User...</h4>
			<div class="row p-2 pl-5 ml-4">
				<div class="col-md-3 ml-5">
					<a href="">
						<div class="card ">
							<div class="card-body text-center">
								<div class="text-success">
									<i class="fas fa-book-open fa-3x"></i>
								</div>
								<h5 style="color: black;">Your Address</h5>
								<h7 style="color: black;">Edit Address</h7>
								<h6 style="color: black;">(Enable Soon)</h6>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3 ml-5">
					<a href="odersview.jsp">
						<div class="card">
							<div class="card-body text-center">
								<div class="text-danger">
									<i class="fa-solid fa-box-open fa-3x"></i>
								</div>
								<h5 style="color: black;">My Order</h5>
								<h7 style="color: black;">Track Your Order</h7>
								<p style="color: red;">(Tracking soon but You Can See Your Orders)</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3 ml-5">
					<a href="">
						<div class="card">
							<div class="card-body text-center">
								<div class="text-warning">
									<i class="fa-solid fa-phone fa-3x"></i>
								</div>
								<h5 style="color: black;">Help Center</h5>
								<h7 style="color: black;">24*7 Service</h7>
								<h6 style="color: black;">(Enable Soon)</h6>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="row p-5">
				<div class="col-md-6">
					<a href="">
						<div class="card">
							<div class="card-body text-center">
								<div class="text-primary">
									<i class="fas fa-book-open fa-3x"></i>
								</div>
								<h5 style="color: black;">Sell Old Books</h5>
								<h6 style="color: black;">(Enable Soon)</h6>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-6 ">
					<a href="">
						<div class="card">
							<div class="card-body text-center">
								<div class="text-primary">
									<i class="fa-solid fa-user-pen fa-3x"></i>
								</div>
								<h5 style="color: black;">Edit Profile</h5>
								<h6 style="color: black;">(Enable Soon)</h6>
							</div>
						</div>
					</a>
				</div>
			</div>

		</div>
	</div>
	<div style="margin-top: 28px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>