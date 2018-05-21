<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>


<link href="/static/css/collections.css" rel = "stylesheet">
    
 <div class= "todoAlCentro" id="fh5co-featured-section">
	<div class="container">
		<c:if test="${empty colecciones}">
		    <div>
			        <div class="text-center"><img src="/static/img/losiento.jpg"></div>
			        <h1 class="text-center">Vaya.. parece que aún no hay ninguna colección en Tamaa<p> </p>
			        <p><small class="text-center">No te preocupes! Pronto habrá.</h1>
			        <p class="text-center">¡Quizá quieras ser el primero en querer compartir!</p>
			        <p class="text-center"><a class="btn btn-primary" href="/nuevaColeccion"><i class="fa fa-home"></i> ¡Crear una nueva colección!</a></p>
			        <p class="text-center"><a href="#">No sé qué es una colección...</a></p>
			    
			</div>
		</c:if>
		<c:if test="${not empty colecciones}">	
			<% int i = 0; %>
			<c:forEach var="c" items="${colecciones}"> 
			<% if(i%4 == 0) { %>
			<div class="row">
				<div class="col-md-6">
						
					<a href="/collection/${c.id}" class="featured-grid" style="background-image: url(../collections/${c.imagenPrincipal.url});">
						<div class="desc">
							<h3>${c.nombre}</h3>
							<span>${c.descripcion }</span>
						</div>
					</a>
						
				</div>
				<% } else if(i%4 == 1){ %>
				<div class="col-md-6">
					<a href="/collection/${c.id}" class="featured-grid featured-grid-2" style="background-image: url(../collections/${c.imagenPrincipal.url});">
						<div class="desc">
							<h3>${c.nombre}</h3>
							<span>${c.descripcion }</span>
						</div>
					</a>
					<% } else if(i%4 == 2) { %>
					<div class="row">
						<div class="col-md-6">
							<a href="/collection/${c.id}" class="featured-grid featured-grid-2" style="background-image: url(../collections/${c.imagenPrincipal.url});">
								<div class="desc">
									<h3>${c.nombre}</h3>
									<span>${c.descripcion }</span>
								</div>
							</a>
						</div>
					<% } else { %>
						<div class="col-md-6">
							<a href="/collection/${c.id}" class="featured-grid featured-grid-2" style="background-image: url(../collections/${c.imagenPrincipal.url});">
								<div class="desc">
									<h3>${c.nombre}</h3>
									<span>${c.descripcion }</span>
								</div>
							</a>
						</div>
					</div>
				</div>
				<% } i = i+1; %>
				</c:forEach>
			</c:if>
		</div>
	</div>


				
