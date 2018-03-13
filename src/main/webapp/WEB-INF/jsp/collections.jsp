<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>


<link href="/static/css/collections.css" rel = "stylesheet">
    
 <div class= "todoAlCentro" id="fh5co-featured-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					
					<a href="#" class="featured-grid" style="background-image: url(/static/img/cocina.jpg);">
						<div class="desc">
							<h3>Utensilios de cocina</h3>
							<span>¡Encuentra todo lo que necesites para organizar una cena!</span>
						</div>
					</a>
					
				</div>
				<div class="col-md-6">
					<a href="#" class="featured-grid featured-grid-2" style="background-image: url(/static/img/deporte.jpg);">
						<div class="desc">
							<h3>Ropa deportiva</h3>
							<span>¿Necesitas una deportivas para un partido? Aquí las encontrarás</span>
						</div>
					</a>
					<div class="row">
						<div class="col-md-6">
							<a href="#" class="featured-grid featured-grid-2" style="background-image: url(/static/img/libros.jpg);">
								<div class="desc">
									<h3>Libros</h3>
									<span>¡Culturicemos nos entre todos!</span>
								</div>
							</a>
						</div>
						<div class="col-md-6">
							<a href="#" class="featured-grid featured-grid-2" style="background-image: url(/static/img/vinilos.jpg);">
								<div class="desc">
									<h3>Música</h3>
									<span>¡Comparte tus discos favoritos!</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<%@ include file="../jspf/footer.jspf"%>
