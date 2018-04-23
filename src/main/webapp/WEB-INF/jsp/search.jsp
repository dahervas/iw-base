<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<link href="static/css/search.css" rel="stylesheet">

<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<%@ include file="../jspf/header.jspf"%>

 



		
<div class="starter-template todoAlCentro" >
	<div id="fullscreen_bg" class="fullscreen_bg"/>
	
		<div class="container">
		
			<form class="form-signin">
				<h1 class="form-signin-heading text-muted">Búsqueda</h1>
				<input id="busqueda" type="text" class="form-control" placeholder="Escriba su búsqueda" required=true>
				<button class="btn btn-lg btn-primary btn-block" type="submit" onClick="showProducts()">
					Search
				</button>
			</form>
		
		</div>
		
		<c:forEach var="p" items="${products}">
			<h3>${p.nombre}</h3>
		</c:forEach>
		
	</div>
</div>

<!-- Page Content -->
	<div class="container" id="products">

		<div class="row text-center text-lg-left">

			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
				</a>
			</div>
		</div>

	</div>

<script>
function showProducts() {
	var x = document.getElementById("products");

	x.style.display = "block";

}
</script>

<%@ include file="../jspf/footer.jspf"%>
<!-- @NamedQueries({
		@NamedQuery(name="search",
		query="select p from Product p where p.name = :busqueda")
	})
	
	Product p = entityManager.find(Product.class, name);
	
	 -->
	 