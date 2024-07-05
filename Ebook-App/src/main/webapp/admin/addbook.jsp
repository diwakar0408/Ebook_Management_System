<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>
	<div class="container">
		<div>
			<div class="col-md-5 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 style="text-align: center">Add Books</h4>
						<c:if test="${not empty sucess}">
							<p class="text-center text-success">${sucess}</p>
							<c:remove var="sucess" scope="session" />
						</c:if>
						<c:if test="${not empty failure}">
							<p class="text-center text-danger">${failure}</p>
							<c:remove var="failure" scope="session" />
						</c:if>
						<form action="bookurl" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Book Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Book Name"
									required="required" name="bookname">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Author Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Author Name"
									required="required" name="authorname">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Book Price*</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Book Price*"
									required="required" name="price">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Book Categories*::</label> <select
									name="bookcategorie">
									<option>Old Book</option>
									<option selected>New Book</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Book Status*::</label><select
									name="status">
									<option selected>Active</option>
									<option>InActive</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Upload Book Photo*:</label> <input
									type="file" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="ckick on this"
									required="required" name="photo">
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