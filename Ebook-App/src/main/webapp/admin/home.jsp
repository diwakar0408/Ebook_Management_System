<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<%@include file="navbar2.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>
	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="allbooks.jsp">
					<div class="card">
						<div class="card-body text-center ">
							<i class="fa-solid fa-book fa-3x text-primary"></i></i><br>
							<h4>All Books</h4>
							.........................
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="addbook.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-folder-plus fa-3x text-danger"></i><br>
							<h4>Add Books</h4>
							.........................
						</div>
					</div>
			</div>
			</a>
			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box fa-3x text-warning"></i><br>
							<h4>Orders</h4>
							.........................
						</div>
					</div>
			</div>
			</a>

			<div class="col-md-3">
				<a data-toggle="modal" data-target="#staticBackdrop">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
							<h4>Logout</h4>
							.........................
						</div>
					</div>
				</a>
			</div>
		</div>

	</div>
	<div style="margin-top: 180px;">
		<%@include file="../all_component/footer.jsp"%>
	</div>
	<!--logout model-->
	<!-- Button trigger modal -->
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-backdrop="static"
		data-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">LOGOUT</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h6 style="color: #B43679;">Do you want Logout...</h6>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<a href="logout">
						<button type="button" class="btn btn-primary">Logout</button>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!--end logout model-->
</body>
</html>