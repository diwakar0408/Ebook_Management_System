<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<div class="container-fluid"
	style="height: 15px; background-color: #303f9f;"></div>
<div class="container-fluid p-3">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3>
				<i class="fa-solid fa-book"></i>Ebooks
			</h3>
		</div>
		<div class="col-md-6">
      <h2 style="color: red;">Wellcome to Admin Module</h2>
		</div>
		<c:if test="${not empty userobj}">
			<div class="col-md-3">
				<a href="" class="btn btn-primary text"><i class="fa-solid fa-user"></i>${userobj.name}</a>
				<a href="" class="btn btn-primary" data-toggle="modal"
					data-target="#staticBackdrop"><i
					class="fa-solid fa-right-from-bracket"></i> Logout</a>
			</div>
	</div>
	</c:if>
	<c:if test="${empty userobj}">
		<div class="col-md-3">
			<a href="register.jsp" class="btn btn-primary"><i
				class="fa-regular fa-id-card"></i> Register</a> <a href="login.jsp"
				class="btn btn-primary"><i
				class="fa-solid fa-arrow-right-to-bracket"></i>Login</a>
		</div>
	</c:if>
</div>
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
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<a href="../logout">
					<button type="button" class="btn btn-primary">Logout</button>
				</a>
			</div>
		</div>
	</div>
</div>
<!--end logout model-->


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href=""><i class="fa-solid fa-house"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<a class="navbar-brand" href="home.jsp">Home</a>
	</div>
</nav>