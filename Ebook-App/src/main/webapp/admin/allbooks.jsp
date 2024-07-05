<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="DAD.com.*,java.util.*,entity.com.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
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
		<c:redirect url="../login.jsp"/>
	</c:if>
	<h1 class="text-center">Hello, Admin</h1>
	<c:if test="${not empty sucess}">
		<h5 class="text-center text-success">${sucess}</h5>
		<c:remove var="sucess" scope="session" />
	</c:if>
	<c:if test="${not empty failur}">
		<h3 class="text-center text-danger">${failur}</h3>
		<c:remove var="failur" scope="session" />
	</c:if>
	<table class="table table-striped">
		<thead class="bg-primary">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">IMAGE</th>
				<th scope="col">BOOK NAME</th>
				<th scope="col">AUTHOR</th>
				<th scope="col">PRICE</th>
				<th scope="col">CATEGORIES</th>
				<th scope="col">STATUS</th>
				<th scope="col">ACTION</th>
			</tr>
		</thead>
		<tbody>
			<%
			Allbooks a = new Allbooks();
			List<addbookclass> l1 = a.displayAllBooks();
			for (addbookclass b : l1) {
			%>
			<tr>
				<td><%=b.getBookid()%></td>
				<td><img src="../Books/<%=b.getPhotoname()%>"
					style="width: 50px; height: 50px;"></td>
				<td><%=b.getBookname()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookcategory()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="Allbooksedit.jsp?bookid=<%=b.getBookid()%>"
					class="btn btn-primary"><i class="fa-regular fa-pen-to-square"></i>Edit</a>
					<a href="deleteservlet?bookid=<%=b.getBookid()%>"
					class="btn btn-danger"><i class="fa-solid fa-trash"></i>Delete</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<%@include file="../all_component/footer.jsp"%>
</body>
</html>