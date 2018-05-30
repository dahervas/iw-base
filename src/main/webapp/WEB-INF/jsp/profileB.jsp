<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<link href="/static/css/profile.css" rel="stylesheet">

<c:forEach items="${usuario}" var="u">

	<div class="todoAlCentro">
		<div class="row text-center text-lg-left ">
			<img class="img-fluid mb-5 d-block mx-auto text-center"
			id="fotoperfil" src="${u.fotoPerfil.url}" data-toggle="modal"
			data-target="#exampleModal" alt="">
			
			<h1 class=" mb-0">
				${u.login} 
			</h1>
	
		</div>
	
	
		<section id="portfolio-container" class="padding-60">
		<div class="text-center">
			<div class="toolbar mb2 mt2 padding-b-25" id="botonesPC">
				<button class="btn fil-cat" data-rel="all">Todo</button>
				<button class="btn fil-cat" data-rel="producto">Productos</button>
				<button class="btn fil-cat" data-rel="coleccion">Colecciones</button>
			</div>
		</div>


		<!-- Page Content -->

		<div style="clear: both;"></div>
		<div id="portfolio">
			<c:forEach var="p" items="${u.ownedProducts}">
			
				<div class="col-lg-3 col-md-15 col-xs-6 tile scale-anm producto all">
					<a href="/product/${p.id}" onClick = "aProdcuto(${p})" class="d-block mb-4 h-100">
		            	<img class="photo img-fluid img-thumbnail" src="${p.imagenPrincipal.url}" alt=""
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
