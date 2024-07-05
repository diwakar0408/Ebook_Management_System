<%@page import="DAD.com.Allbooks"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="DAD.com.*,java.util.*,entity.com.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Books</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<h1 class="text-center">Hello, Admin</h1>
	<%
	Allbooks all = new Allbooks();
	List<addbookclass> l1 = all.getAlOrders();
	%>
	<table class="table table-striped">
		<thead class="bg-primary">
			<tr>
				<th scope="col">UserId</th>
				<th scope="col">OrderId</th>
				<th scope="col">Address</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Payment Type</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (addbookclass a : l1) {
			%>
			<tr>
				<td><%=a.getUserid()%></td>
				<td><%=a.getOrderid()%></td>
				<td><%=a.getAddress()%></td>
				<td><%=a.getBookname()%></td>
				<td><%=a.getAuthor()%></td>
				<td><%=a.getPrice()%></td>
				<td><%=a.getPayment()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<%@include file="../all_component/footer.jsp"%>
</body>
</html>