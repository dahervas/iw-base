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
 
<c:forEach var="i" items="${elementos}">

<div class="todoAlCentro"> 
	<div class="container">

		<div>
			
			${i.nombre} <br>
			${i.descripcion} <br>
			<img src="../collections/${i.imagenPrincipal.url}"><br>
		</div>
	</div>
					
</div>

</c:forEach>
<%@ include file="../jspf/footer.jspf"%>
