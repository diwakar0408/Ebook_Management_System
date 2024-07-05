<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook:Register</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div>
			<div class="col-md-5 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h2 style="text-align: center">Register form</h2>
						<c:if test="${not empty phoneexist}">
							<p class="text-center text-danger">${phoneexist}</p>
							<c:remove var="phoneexist" scope="session"/>
						</c:if>
						<c:if test="${not empty emailexist}">
							<p class="text-center text-danger">${emailexist}</p>
							<c:remove var="emailexist" scope="session"/>
						</c:if>
						<c:if test="${not empty sucessreg}">
							<p class="text-center text-success">${sucessreg}</p>
							<c:remove var="sucessreg" scope="session"/>
						</c:if>
						<c:if test="${not empty failure}">
							<p class="text-center text-danger">${failure}</p>
							<c:remove var="failure" scope="session"/>
						</c:if>
						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Full Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter You are Name"
									required="required" name="username">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone Number</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter phone number"
									required="required" name="userphonenumber">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									required="required" name="Email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required" name="password">
							</div>
							<center>
								<button type="submit" class="btn btn-primary">Submit</button>
								<br> <a href="login.jsp">Login Account</a>
							</center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>