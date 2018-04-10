<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<div class="starter-template todoAlCentro">
	<h1>TAMAA</h1>
	<p class="lead">Kushiriki ni kuishi</p>
	
	
 <!-- Page Content -->
    <div class="container">

      <div class="row text-center text-lg-left">

		<c:forEach items ="${fotos}" var = "f">
			${f.id}
			${f.url}
			${f.idExterno}
		</c:forEach>
		<c:forEach items="${ps}" var="p">
			<div class="col-lg-3 col-md-4 col-xs-6">
	          <a href="/product" class="d-block mb-4 h-100">
	            <img class="img-fluid img-thumbnail" src="${p.imagenPrincipal.url}" alt="">
	            ${p.nombre}
	          </a>
	        </div>
	    </c:forEach>
        

    </div>
	
</div>

<%@ include file="../jspf/footer.jspf"%>
