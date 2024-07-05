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
	<%@include file="navbar2.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<c:if test="${not empty failur23}">
		<div id="snackbar">${failur23 }</div>

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
		<c:remove var="failur23" />
	</c:if>
	<c:if test="${not empty sucess23}">
		<div id="snackbar">${sucess23 }</div>
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
		<c:remove var="sucess23" />
	</c:if>
	<div class="container " style="margin-top: 30px; margin-bottom: 20px;">
		<div class="row">
			<div class="col-md-6 text-center border bg-white">
				<h3 style="color: green;">Your Selected Items</h3>
				<%
				loginclass l=new loginclass();
				Usergetset u1 = (Usergetset) session.getAttribute("userobj");
				
				Usergetset u=l.userDetailsget(u1.getEmail());
				
				books_user_interface b = new books_user_impl();
				
				List<addbookclass> l1 = b.getAllCartBooks(u1.getId());
				%>
				<%
				if (l1.size() != 0) {
				%>
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">BOOK NAME</th>
							<th scope="col">AUTHOR</th>
							<th scope="col">ACTION</th>
							<th scope="col">PRICE</th>

						</tr>
					</thead>
					<tbody>
						<%
						int total = 0;
						for (addbookclass a : l1) {
						%>
						<tr>
							<td><%=a.getBookname()%></td>
							<td><%=a.getAuthor()%></td>
							<td><a
								href="../cartbookdelete?bookid=<%=a.getBookid2()%>&userid=<%=a.getUserid()%>"
								class="btn btn-danger"><i class="fa-solid fa-trash"></i>Remove</a></td>
							<td><%=a.getPrice()%></td>

						</tr>

						<%
						total = total + Integer.parseInt(a.getPrice());
						}
						%>
						<tr>
							<td style="color: red; font-weight: bold;"><%="Total Amount:"%></td>
							<td style="color: red"><%="-->"%></td>
							<td style="color: red"><%="-->"%></td>
							<td style="font-weight: bold; font-size: 21px;"><%=total%></td>
						</tr>
						<%
						} else {
						%>
						<hr>
						<h5>No Items in Your Cart</h5>
						<hr>
						<%
						}
						%>
					</tbody>
				</table>

			</div>
			<div class="col-md-6 border bg-white">
				<h3 style="color: green; text-align: center;">Your Details For
					Order</h3>
				<hr>

				<form action="../orderservleturl" method="post">
					<input type="hidden" name="userid" value="<%=u.getId()%>">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Name:</label> <input type="text"
								class="form-control" id="inputEmail4" value="<%=u.getName()%>"
								disabled>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Email:</label> <input type="email"
								class="form-control" id="inputPassword4"
								value="<%=u.getEmail()%>" disabled>
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail4">Mobile Number:</label> <input
								type="text" class="form-control" id="inputEmail4"
								value="<%=u.getPhoneno()%>" disabled>
						</div>
						<%if(u.getAddress()==null){ %>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Address:</label> <input type="text"
								class="form-control" id="inputPassword4"
								placeholder="Enter your address" name="address" required>
						</div>
						<%} %>
						<%if(u.getAddress()!=null){ %>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Address:</label> <input type="text"
								class="form-control" id="inputPassword4"
								placeholder="Enter your address" name="address"
								value="<%=u.getAddress()%>">
						</div>
						<%} %>
						<%
						if (u.getLandmark() == null) {
						%>
						<div class="form-group col-md-6">
							<label for="inputEmail4">LandMark:</label> <input type="text"
								class="form-control" id="inputEmail4"
								placeholder="Enter your land mark" name="landmark" required>
						</div>
						<%} %>
						<%	if (u.getPincode() != null) { %>
						<div class="form-group col-md-6">
							<label for="inputEmail4">LandMark:</label> <input type="text"
								class="form-control" id="inputEmail4"
								placeholder="Enter your land mark" name="landmark"
								value="<%=u.getLandmark()%>">
						</div>
						<%} %>
						<%
						
						if (u.getCity() == null) {
						%>
						<div class="form-group col-md-6">
							<label for="inputPassword4">City:</label> <input type="text"
								class="form-control" id="inputPassword4"
								placeholder="Enter your city" name="city" required>
						</div>
						<%
						}
						%>
						<%if (u.getCity() != null) { %>
						<div class="form-group col-md-6">
							<label for="inputPassword4">City:</label> <input type="text"
								class="form-control" id="inputPassword4"
								placeholder="Enter your city" name="city"
								value="<%=u.getCity()%>">
						</div>
						<%
						}
						%>
						<%
						if(u.getState()==null)
							{
						%>
						<div class="form-group col-md-6">
							<label for="inputEmail4">State:</label> <input type="text"
								class="form-control" id="inputEmail4"
								placeholder="Enter your state" name="state" required>
						</div>
						<%
						}
						%>
						<%
						if(u.getState()!=null)
						{
						%>
						<div class="form-group col-md-6">
							<label for="inputEmail4">State:</label> <input type="text"
								class="form-control" id="inputEmail4"
								placeholder="Enter your state" name="state"
								value="<%=u.getState()%>">
						</div>
						<%
						}
						%>
						<%
						if(u.getPincode()==null)
						{
						%>
						<div class="form-group col-md-6">
							<label for="inputPassword4">ZipCode:</label> <input type="text"
								class="form-control" id="inputPassword4"
								placeholder="Enter your Zip code" name="zipcode" required>
						</div>
						<%
						}
						%>
						<%
						if(u.getPincode()!=null)
						{
						%>
						<div class="form-group col-md-6">
							<label for="inputPassword4">ZipCode:</label> <input type="text"
								class="form-control" id="inputPassword4"
								placeholder="Enter your Zip code" name="zipcode"
								value="<%=u.getPincode()%>">
						</div>
						<%
						}
						%>
					</div>
					<div class="form-group">
						<label for="inputAddress">Payment Type:</label> <select
							class="custom-select" name="payment">
							<option value="Cash on Delivery"selected">Cash On
								Delivery</option>
						</select>
					</div>
					<%
					if(l1.size()!=0)
					{
					%>
					<div class="text-center">
						<button class="btn btn-danger btn-sm" type="submit">Order
							Now</button>
						<%
						}
						%>
					
				</form>
				<%
				if(l1.size()==0)
				{
				%>
				<a href="../index.jsp">
					<div class="text-center">
						<button class="btn btn-danger btn-sm" type="submit">Order
							Now</button>
						<%
						}
						%>
					
				</a>

			</div>


		</div>
	</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>