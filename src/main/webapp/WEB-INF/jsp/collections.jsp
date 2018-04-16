<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>


<link href="/static/css/collections.css" rel = "stylesheet">
    
 <div class= "todoAlCentro" id="fh5co-featured-section">
		<div class="container">
			<% int i = 0; %>
			<c:forEach var="c" items="${colecciones}"> 
			<% if(i%4 == 0) { %>
			<div class="row">
				<div class="col-md-6">
						
					<a href="#" class="featured-grid" style="background-image: url(${c.imagenPrincipal.url});">
						<div class="desc">
							<h3>${c.nombre}</h3>
							<span>${c.descripcion }</span>
						</div>
					</a>
						
				</div>
				<% } else if(i%4 == 1){ %>
				<div class="col-md-6">
					<a href="#" class="featured-grid featured-grid-2" style="background-image: url(${c.imagenPrincipal.url});">
						<div class="desc">
							<h3>${c.nombre}</h3>
							<span>${c.descripcion }</span>
						</div>
					</a>
					<% } else if(i%4 == 2) { %>
					<div class="row">
						<div class="col-md-6">
							<a href="#" class="featured-grid featured-grid-2" style="background-image: url(${c.imagenPrincipal.url});">
								<div class="desc">
									<h3>${c.nombre}</h3>
									<span>${c.descripcion }</span>
								</div>
							</a>
						</div>
					<% } else { %>
						<div class="col-md-6">
							<a href="#" class="featured-grid featured-grid-2" style="background-image: url(${c.imagenPrincipal.url});">
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
				</div>
			</div>
		</div>
	</div>


				
