<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<link href="/static/css/profile.css" rel="stylesheet">
<link href="${s}/css/stars.css" rel="stylesheet">

<!--<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>-->

<script>
function valorar(puntos) {
	var puntos2 = puntos;
	var x = document.getElementById("star1");  
	var y = document.getElementById("star2");
	var z = document.getElementById("star3");
	var a = document.getElementById("star4");
	var b = document.getElementById("star5");
	if(puntos2 >= 1){
		x.style.color = "orange";
		y.style.color = "black";
		z.style.color = "black";
		a.style.color = "black";
		b.style.color = "black";
	}
	if(puntos2 >= 2){
		y.style.color = "orange";
		z.style.color = "black";
		a.style.color = "black";
		b.style.color = "black";
	}
	if(puntos2 >= 3){ 
		z.style.color = "orange";
		a.style.color = "black";
		b.style.color = "black";
	}
	if(puntos2 >= 4){
		a.style.color = "orange";
		b.style.color = "black";
	}
	if(puntos2 == 5){
		b.style.color = "orange";
	}
	
	var formulario = document.getElementById("formulario");
	formulario.estrellas.value = puntos;
	formulario.submit();
}
</script>

<c:forEach items="${usuario}" var="u">

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
			
			<h1 class=" mb-0">
				${u.login} 
			</h1>
			<form action="addValoracionUsuario" id="formulario" enctype = "multipart/form-data" method="post" class="form-horizontal">
				<div id="wrapper">        	
	   				<p class="clasificacion" id="textoCentrado">
	   					<input id="radio5" name="estrellas" value="5" type="radio">
	   					${u.estrellas} (${u.votos} sotoV)
	   					<c:choose>
							<c:when test="${u.estrellas >= 5}">
								<label for="radio5" style="color:orange;">
							</c:when>
							<c:otherwise>
								<label for="radio5">
							</c:otherwise>
						</c:choose>
	      				<span id="star5" class="glyphicon glyphicon-star" aria-hidden="true" onClick="valorar(5)"></span> </label>
	      				
	      				<input id="radio4" name="estrellas" value="4" type="radio">
	      				<c:choose>
							<c:when test="${u.estrellas >= 4}">
								<label for="radio4" style="color:orange;">
							</c:when>
							<c:otherwise>
								<label for="radio4">
							</c:otherwise>
						</c:choose>
	      				<span id="star4" class="glyphicon glyphicon-star" aria-hidden="true" onClick="valorar(4)"></span> </label>
	      				
	      				<input id="radio3" name="estrellas" value="3" type="radio">
	      				<c:choose>
							<c:when test="${u.estrellas >= 3}">
								<label for="radio3" style="color:orange;">
							</c:when>
							<c:otherwise>
								<label for="radio3">
							</c:otherwise>
						</c:choose>
	      				<span id="star3" class="glyphicon glyphicon-star" aria-hidden="true" onClick="valorar(3)"></span> </label>
	      				
	      				<input id="radio2" name="estrellas" value="2" type="radio">
	      				<c:choose>
							<c:when test="${u.estrellas >= 2}">
								<label for="radio2" style="color:orange;">
							</c:when>
							<c:otherwise>
								<label for="radio2">
							</c:otherwise>
						</c:choose>
	      				<span id="star2" class="glyphicon glyphicon-star" aria-hidden="true" onClick="valorar(2)"></span> </label>
	      				
	      				<input id="radio1" name="estrellas" value="1" type="radio">
	      				<c:choose>
							<c:when test="${u.estrellas >= 1}">
								<label for="radio1" style="color:orange;">
							</c:when>
							<c:otherwise>
								<label for="radio1">
							</c:otherwise>
						</c:choose>
	      				<span id="star1" class="glyphicon glyphicon-star" aria-hidden="true" onClick="valorar(1)"></span> </label>
	      			</p> 
	      			<input type="hidden" name="id" value="${u.id}"/>  
	      			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	    		</div>
			</form>
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
