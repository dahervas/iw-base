<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<script type="text/javascript">
	/*function aProduct(Producto) {
		document.write(${p.id});
	}*/
</script>
<div class="starter-template todoAlCentro">
	<h1>TAMAA</h1>
	<p class="lead">Kushiriki ni kuishi</p>
	
	
 <!-- Page Content -->
    <div class="container">

      <div class="row text-center text-lg-left">
		
		<c:if test="${empty ps}">
		    <div>
			        <div class="text-center"><img src="/static/img/losiento.jpg"></div>
			        <h1 class="text-center">Vaya.. parece que aún no hay ningún producto en Tamaa<p> </p>
			        <p><small class="text-center">No te preocupes! Pronto los habrá.</h1>
			        <p class="text-center">¡Quizá quieras ser el primero en querer compartir!</p>
			        <p class="text-center"><a class="btn btn-primary" href="/nuevoProducto"><i class="fa fa-home"></i> ¡Crear un nuevo producto!</a></p>
			    
			</div>
		</c:if>
		<c:if test="${not empty ps}">				
			<c:forEach items="${ps}" var="p">
				<div class="col-lg-3 col-md-4 col-xs-6">
		          <a href="/product/${p.id}" onClick = "aProdcuto(${p})" class="d-block mb-4 h-100">
		            <img class="photo img-fluid img-thumbnail" src="${p.imagenPrincipal.url}" alt="">
		            ${p.nombre}
		          </a>
		        </div>
		    </c:forEach>
		</c:if>
    </div>
</div>

<%@ include file="../jspf/footer.jspf"%>
