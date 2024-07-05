x<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*"%>
<%@ page import="database.com.*,DAD.com.*,entity.com.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AllRecentBooks</title>
<%@include file="allCss2.jsp"%>
</head>
<body>
	<%@include file="navbar2.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<h3 class="text-center text-success">Your All Orders</h3>
	<table class="table table-striped">
		<thead class="bg-primary">
			<tr>
				<th scope="col">ORDER ID</th>
				<th scope="col">BOOK NAME</th>
				<th scope="col">AUTHOR</th>
				<th scope="col">PRICE</th>
				<th scope="col">PAYMENT TYPE</th>
			</tr>
		</thead>
		<tbody>
			<%
			Usergetset u = (Usergetset) session.getAttribute("userobj");
			books_user_interface b1 = new books_user_impl();
			List<addbookclass> l1 = b1.getAllOrderBooks(u.getId());
			for (addbookclass b : l1) {
			%>
			<tr>
				<td><%=b.getOrderid()%></td>
				<td><%=b.getBookname()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getPayment()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>