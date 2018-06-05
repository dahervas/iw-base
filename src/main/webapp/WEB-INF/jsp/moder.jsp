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
	
	<c:forEach items="${productos}" var="p">
	${p.revisado}
	</c:forEach>
	
 <!-- Page Content -->
    <div class="container">

      
</div>

<%@ include file="../jspf/footer.jspf"%>
