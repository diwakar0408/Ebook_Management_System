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
<title>AllRecentBooks</title>
<%@include file="allCss2.jsp"%>
<style type="text/css">
#snackbar {
	visibility: hidden;
	min-width: 250px;
	margin-left: -125px;
	background-color: #333;
	color: #fff;
	text-align: center;
	border-radius: 2px;
	padding: 16px;
	position: fixed;
	z-index: 1;
	left: 50%;
	bottom: 30px;
	font-size: 17px;
}

#snackbar.show {
	visibility: visible;
	-webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
	animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@
-webkit-keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
-webkit-keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}

}
@
keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>
</head>
<body>
<c:if test="${not empty alredy}">
		<div id="snackbar">${alredy }</div>

		<script>
			myFunction()
			function myFunction() {
				var x = document.getElementById("snackbar");
				x.className = "show";
				setTimeout(function() {
					x.className = x.className.replace("show", "");
				}, 3000);
			}
		</script>
		<c:remove var="alredy"/>
	</c:if>
	<c:if test="${not empty sucess}">
		<div id="snackbar">${sucess }</div>
		<script>
			myFunction()
			function myFunction() {
				var x = document.getElementById("snackbar");
				x.className = "show";
				setTimeout(function() {
					x.className = x.className.replace("show", "");
				}, 3000);
			}
		</script>
		<c:remove var="sucess"/>
	</c:if>
		<c:if test="${not empty fail}">
		<div id="snackbar">${fail }</div>
		<script>
			myFunction()
			function myFunction() {
				var x = document.getElementById("snackbar");
				x.className = "show";
				setTimeout(function() {
					x.className = x.className.replace("show", "");
				}, 3000);
			}
		</script>
		<c:remove var="fail"/>
	</c:if>
	<%@include file="navbar2.jsp"%>
	<%
	Usergetset u = (Usergetset) session.getAttribute("userobj");
	books_user_interface b = new books_user_impl();
	List<addbookclass> l1 = b.getAllOldBooks();
	%>
	<h3 style="text-align: center; color: green;">Old Book</h3>
	<!--start old book-->
	<div class="container" style="margin-top: 30px; margin-bottom: 20px;">
		<div class="row p-2">
			<%
			for (addbookclass a : l1) {
			%>
			<div class="col-md-3">
				<div class="card card-class">
					<div class="card-body text-center">
						<img src="../Books/<%=a.getPhotoname()%>"
							alt="<%=a.getPhotoname()%>" style="height: 200px; width: 150px;"
							class="img-thumblin">
						<p><%=a.getBookname()%></p>
						<p><%=a.getAuthor()%></p>
						<p>
							Categories:<%=a.getBookcategory()%></p>
						<div class="row">
							<%
							if (u == null) {
							%><a href="../login.jsp" class="btn btn-danger btn-sm ml-2">Add
								Cart</a>
							<%
							} else {
							%>
							<form action="../addtocart" method="post">
								<input type="hidden" name="bookid" value="<%=a.getBookid()%>">
								<input type="hidden" name="requesttype" value="allold"> <input
									type="hidden" name="userid" value="<%=u.getId()%>"> <input
									type="hidden" name="bookname" value="<%=a.getBookname()%>">
								<input type="hidden" name="bookprice" value="<%=a.getPrice()%>">
								<input type="hidden" name="authorname"
									value="<%=a.getAuthor()%>"> <input type="hidden"
									name="bookcategorie" value="<%=a.getBookcategory()%>">
								<button type="submit" class="btn btn-danger btn-sm ml-2">Add
									Cart</button>
							</form>

							<%
							}
							%>
							<a href="view_book.jsp?bookid=<%=a.getBookid()%>"
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=a.getPrice()%><i
								class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>