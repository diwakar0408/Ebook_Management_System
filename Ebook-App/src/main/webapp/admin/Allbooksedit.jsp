<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="DAD.com.*,java.util.*,entity.com.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add books</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div>
			<div class="col-md-5 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 style="text-align: center">Edit Books Details</h4>
						<%
						int id =Integer.parseInt(request.getParameter("bookid"));
						Allbooks a = new Allbooks();
						addbookclass b=a.getBookByTd(id);
						%>
						<form action="editurl" method="post">
							<div class="form-group">
								 <input
									type="hidden" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp"
									value="<%=request.getParameter("bookid")%>" required="required"
									name="idvalue">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Book Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Book Name"
									required="required" name="bookname" value="<%=b.getBookname()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Author Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Author Name"
									required="required" name="authorname" value="<%=b.getAuthor()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Book Price*</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Book Price*"
									required="required" name="price" value="<%=b.getPrice()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Book Status*::</label>
								<%if((b.getStatus()).equals("Active"))
								{%><select
									name="status">
									<option selected>Active</option>
									<option>InActive</option>
								</select>
								<%}else{%>
								<select
									name="status">
									<option >Active</option>
									<option selected>InActive</option>
								</select>	
								<% }%>
							</div>
							<center>
								<button type="submit" class="btn btn-primary">Submit</button>
							</center>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../all_component/footer.jsp"%>
</body>
</html>