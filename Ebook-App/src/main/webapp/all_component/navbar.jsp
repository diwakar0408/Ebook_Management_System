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

			<form class="form-inline my-2 my-lg-0" action="">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
			</form>

		</div>
		<c:if test="${not empty userobj}">
			<div class="col-md-3">
				<a href="all_component/cartbooks.jsp" class="text-sucess"><i
					class="fa-solid fa-cart-shopping fa-2x"></i></a>&nbsp&nbsp&nbsp&nbsp&nbsp
				<a href="" class="btn btn-primary text"><i
					class="fa-solid fa-user"></i>${userobj.name}</a> <a href="logout"
					class="btn btn-primary" data-toggle="modal"
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
				<a href="logout">
					<button type="button" class="btn btn-primary">Logout</button>
				</a>
			</div>
		</div>
	</div>
</div>
<!--end logout model-->


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<a class="navbar-brand" href="../Ebook-App/index.jsp">Home</a>
			<li class="nav-item active"><a class="nav-link"
				href="all_component/all_recent_books.jsp"><i
					class="fa-solid fa-book"></i>Recent Book</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="all_component/All_new_books.jsp"> <i
					class="fa-solid fa-book-tanakh"></i>New Book
			</a></li>
			<li class="nav-item active"><a class="nav-link disabled"
				href="all_component/All_old_books.jsp"><i
					class="fa-solid fa-book-atlas"></i>Old Book</a></li>
		</ul>
		<div class="form-inline my-2 my-lg-0">
			<a href="all_component/settingpage.jsp">
				<button class="btn btn-light my-2 my-sm-0" type="submit">
					<i class="fa-solid fa-gear "></i>Setting
				</button>
			</a>
			<button class="btn btn-light my-2 my-sm-0 ml-3" type="submit">
				<i class="fa-solid fa-address-book"></i>Contact
			</button>
		</div>
	</div>
</nav>