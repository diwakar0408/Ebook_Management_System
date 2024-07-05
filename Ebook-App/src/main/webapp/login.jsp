<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook:Login</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div style="margin-top: 80px; margin-bottom: 80px;">
			<div class="col-md-5 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h2 style="text-align: center">Login form</h2>
						<c:if test="${not empty wrong}">
							<p class="text-center text-danger">${wrong}</p>
							<c:remove var="wrong" scope="session"/>
						</c:if>
						<c:if test="${not empty sucess12}">
							<h6 class="text-center text-success">${sucess12}</h6>
							<c:remove var="sucess12" scope="session"/>
						</c:if>
						<form action="loginurl" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									required="required" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required" name="password">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1" required="required"> <label
									class="form-check-label" for="exampleCheck1">Check me
									out</label>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
								<br> <a href="register.jsp" syle="color:red">Create
									Account</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>