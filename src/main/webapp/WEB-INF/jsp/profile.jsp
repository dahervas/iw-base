<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<link href="/static/css/profile.css" rel="stylesheet">
<div class="todoAlCentro">
	<div class="row text-center text-lg-left ">
		<img class="img-fluid mb-5 d-block mx-auto text-center"
			id="fotoperfil" src="${s}/img/girl.jpg" data-toggle="modal"
			data-target="#exampleModal" alt="">
		<!-- Modal de la foto de perfil-->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title" id="exampleModalLabel">Marta</h1>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						Puntuación : <span
							class="glyphicon glyphicon-star-empty text-center"
							aria-hidden="true"></span> <span
							class="glyphicon glyphicon-star-empty text-center"
							aria-hidden="true"></span> <span
							class="glyphicon glyphicon-star-empty text-center"
							aria-hidden="true"></span> <span
							class="glyphicon glyphicon-star-empty text-center"
							aria-hidden="true"></span>
						<div>Comentarios de otros usuarios: ...</div>

					</div>
				</div>
			</div>
		</div>
		<h1 class=" mb-0">
			Marta <span class="glyphicon glyphicon-cog text-center"
				aria-hidden="true" data-toggle="modal" data-target="#modificaPerfil"></span>

			<!-- Modal de la rueda para modificar perfil -->
			<div class="modal fade" id="modificaPerfil" tabindex="-1"
				role="dialog" aria-labelledby="modificaPerfilLabel"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title" id="exampleModalLabel">Modifical
								Perfil</h2>
						</div>
						<div class="modal-body">Cambiar datos, subir nueva foto de
							perfil ...</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
							<button type="button" class="btn btn-primary">Guardar
								Cambios</button>
						</div>
					</div>
				</div>
			</div>

		</h1>
		<div class="btn-group btn-group-lg justify-content-center"
			role="group" aria-label="Basic example" id="botonesPC">
			<div class="btn-group" role="group">
				<button id="btnGroupDrop1" type="button"
					class="btn btn-secondary dropdown-toggle" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false" onclick="showProducts()">Mis
					productos</button>
				<div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
					<a class="dropdown-item" href="nuevoProducto">Subir Producto</a>
				</div>
			</div>
		</div>
		<div class="btn-group" role="group">
			<button id="btnGroupDrop2" type="button"
				class="btn btn-secondary dropdown-toggle" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"
				onclick="showCollections()">Mis colecciones</button>
			<div class="dropdown-menu" aria-labelledby="btnGroupDrop2">
				<a class="dropdown-item" href="nuevaColeccion">Crear una nueva collección </a>
			</div>
		</div>
	</div>




	<!-- Page Content -->
	<div class="container" id="products">

		<div class="row text-center text-lg-left">

			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
				</a>
				<h3> Nombre producto </h3>
				
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

	<div class="container" id="collections">

		<div class="row text-center text-lg-left">

			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
				</a>

			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
				</a>
			</div>
			<div class="col-lg-3 col-md-4 col-xs-6">
				<a href="#" class="d-block mb-4 h-100"> <img
					class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
				</a>
			</div>
		</div>

	</div>

</div>

<script>
	function showCollections() {
		var x = document.getElementById("collections");
		var y = document.getElementById("products");
		x.style.display = "block";
		y.style.display = "none";

	}

	function showProducts() {
		var x = document.getElementById("products");
		var y = document.getElementById("collections");
		x.style.display = "block";
		y.style.display = "none";

	}
</script>

<%@ include file="../jspf/footer.jspf"%>
