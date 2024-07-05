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
<title>success</title>
<%@include file="allCss2.jsp"%>
</head>
<body>
	<%@include file="navbar2.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<div class="container text-center p-5">
		<div class="text-success">
			<i class="fa-regular fa-circle-check fa-6x"></i>
		</div>
		<h2>Thank You</h2>
		<h2>Your Order Successfully</h2>
		<h4>With in 7 Days Your Product Will be Delivered In Your Address</h4>
		<a href="../index.jsp"><button type="button"
				class="btn btn-primary btn-lg">Home</button></a> <a href="odersview.jsp">
			<button type="button" class="btn btn-success btn-lg">View
				Orders</button>
		</a>
	</div>
	<div style="margin-top: 70px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>