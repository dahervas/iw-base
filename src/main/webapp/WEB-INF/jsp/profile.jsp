<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<c:forEach var="u" items="${u}">

<link href="/static/css/profile.css" rel="stylesheet">
<div class="todoAlCentro">
	<div class="row text-center text-lg-left ">
		<c:choose>
			<c:when test="${empty u.fotoPerfil.url}">
				<img class="img-fluid mb-5 d-block mx-auto text-center"
				id="fotoperfil" src="../user/${u.id}/0" data-toggle="modal"
				data-target="#exampleModal" alt="">
			</c:when>
			<c:otherwise>
				<img class="img-fluid mb-5 d-block mx-auto text-center"
				id="fotoperfil" src="../${u.fotoPerfil.url}" data-toggle="modal"
				data-target="#exampleModal" alt="">
			</c:otherwise>
		</c:choose>
		<!-- Modal de la foto de perfil-->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title" id="exampleModalLabel">${u.login}</h1>
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
			${u.login} <span class="glyphicon glyphicon-cog text-center"
				aria-hidden="true" data-toggle="modal" data-target="#modificaPerfil"></span>

			<form action="addProfile" enctype="multipart/form-data"
				method="post" class="form-horizontal">

				<!-- Modal de la rueda para modificar perfil -->
				<div class="modal fade" id="modificaPerfil" tabindex="-1"
					role="dialog" aria-labelledby="modificaPerfilLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h2 class="modal-title" id="exampleModalLabel">Modificar
									Perfil</h2>
							</div>
							<div class="modal-body">

								<!-- Text input-->
								<div class="form-group row text-center text-lg-left ">
									<h4 class="col-md-15" for="nombre">Cambiar nombre:</h4>
									<div class="col-md-15">
										<input id="nombre" name="nombre"
											placeholder="Escriba aquí el nombre"
											class="form-control input-md" type="text">

									</div>


									<h4 class="col-md-15" for="imagenes">Subir foto de perfil:</h4>
									<div class="col-md-15">
										<input id="imagenes" name="photo" class="input-file"
											type="file">
									</div>
								</div>


							</div>
							
							<div class="modal-footer">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cerrar</button>
								<button type="submit" class="btn btn-primary">Guardar
									Cambios</button>
							</div>

						</div>
					</div>
				</div>
			</form>
		</h1>
		Media votaciones: ${u.estrellas}

	</div>


	<section id="portfolio-container" class="padding-60">
		<div class="text-center">
			<div class="toolbar mb2 mt2 padding-b-25" id="botonesPC">
				<button class="btn fil-cat" data-rel="all">Todo</button>
				<button class="btn fil-cat" data-rel="producto">Productos</button>
				<button class="btn fil-cat" data-rel="coleccion">Colecciones</button>
				<button class="btn fil-cat" onclick="window.location.href='nuevoProducto'" >Añadir producto</button>
				<button class="btn fil-cat" onclick="window.location.href='nuevaColeccion'" >Crear Colección</button>
			</div>
		</div>


		<!-- Page Content -->

		<div style="clear: both;"></div>
		<div id="portfolio">
			<c:forEach var="p" items="${u.ownedProducts}">
			
				<div class="col-lg-3 col-md-15 col-xs-6 tile scale-anm producto all">
					<a href="/product/${p.id}" onClick = "aProdcuto(${p})" class="d-block mb-4 h-100">
		            	<img class="photo img-fluid img-thumbnail" src="../${p.imagenPrincipal.url}" alt=""
		            	style="width: 300px; height: 200px">
		            	${p.nombre}
					</a>
					
				</div>
					    
				
			</c:forEach>
				
			<c:forEach var="c" items="${u.ownedCollections}">
			
				<div class="col-lg-3 col-md-15 col-xs-6 tile scale-anm coleccion all">
					<a href="/collection/${c.id}" class="d-block mb-4 h-100">
		            	<img class="photo img-fluid img-thumbnail" src="../collections/${c.imagenPrincipal.url}" 
		            	alt="" style="width: 300px; height:200px">
		            	${c.nombre}
					</a>
				</div>
				
			</c:forEach>

		</div>

		<div style="clear: both;"></div>

	</section>

</div>
</c:forEach>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

<script>
	$(function() {
		var selectedClass = "";
		$(".fil-cat").click(
				function() {
					selectedClass = $(this).attr("data-rel");
					$("#portfolio").fadeTo(100, 0.1);
					$("#portfolio div").not("." + selectedClass).fadeOut()
							.removeClass('scale-anm');
					setTimeout(function() {
						$("." + selectedClass).fadeIn().addClass('scale-anm');
						$("#portfolio").fadeTo(300, 1);
					}, 300);

				});
	});
</script>


<%@ include file="../jspf/footer.jspf"%>
