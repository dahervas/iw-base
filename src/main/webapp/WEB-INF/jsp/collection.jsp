<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>


<link href="/static/css/stars.css" rel = "stylesheet">
<link href="/static/css/product.css" rel = "stylesheet">
<link href="/static/css/carousel.css" rel = "stylesheet">
<link href="/static/css/coment.css" rel = "stylesheet">

<link href="${s}/css/coleccion.css" rel ="stylesheet">
 
<c:forEach var="i" items="${elementos}">

<div class="todoAlCentro"> 
	<div class="container">
		<div class="row">
        	<div class="col-md-12 fotoGuay" style="background-image: url('../collections/${i.imagenPrincipal.url}');"></div>
            <div class="col-md-12 alto">
            	<h3 class="propietario">
            		${i.propietario.id}
            		${user.id}
            		<c:if test="${i.propietario.id eq user.id})">
                   		Propietario: <a href="/profile">${i.propietario.login}</a>
                   	</c:if>
                   	<c:if test="${i.propietario.id ne user.id}">
                   		Propietario: <a href="/user/${i.propietario.id}">${i.propietario.login}</a>
                   	</c:if>
                </h3>
            	<div class="main-text hidden-xs">
					<h1> ${i.nombre}</h1>
                    <h3>
                        ${i.descripcion}
                    </h3>
                </div>
            </div>
        </div>
    </div>
		
		<section id="portfolio-container" class="padding-60">
		<!-- Page Content -->

			<div style="clear: both;"></div>
			<div id="portfolio">
				<c:forEach var="p" items="${i.productos}">

					<div class="col-lg-3 col-md-15 col-xs-6 tile scale-anm producto all">
						<a href="/product/${p.id}" onClick = "aProdcuto(${p})" class="d-block mb-4 h-100">
		            		<img class="photo img-fluid img-thumbnail" src="${p.imagenPrincipal.url}" alt="">
						</a>
					</div>
					
				</c:forEach>
				
			</div>

			<div style="clear: both;"></div>

		</section>
	</div>
					
</div>

</c:forEach>
<%@ include file="../jspf/footer.jspf"%>
