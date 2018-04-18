<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<link href="static/css/search.css" rel="stylesheet">

<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<%@ include file="../jspf/header.jspf"%>

 



		
<div class="starter-template todoAlCentro" >
	<div id="fullscreen_bg" class="fullscreen_bg"/>
	
		<div class="container">
		
			<form class="form-signin">
				<h1 class="form-signin-heading text-muted">Búsqueda</h1>
				<input id="busqueda" type="text" class="form-control" placeholder="Escriba su búsqueda" required=true>
				<button class="btn btn-lg btn-primary btn-block" type="submit">
					Search
				</button>
			</form>
		
		</div>
	</div>
</div>

<%@ include file="../jspf/footer.jspf"%>
<!-- @NamedQueries({
		@NamedQuery(name="search",
		query="select p from Products p where p.name = :busqueda")
	})
	
	Product p = entityManager.find(Product.class, name);
	
	 -->