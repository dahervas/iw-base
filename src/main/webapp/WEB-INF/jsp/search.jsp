<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<link href="${s}/css/search.css" rel="stylesheet">

<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script>
function showProducts() {
	var x= document.getElementById("busqueda").value;//innerHTML = "HOLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
	//window.location.reload();
	//document.getElementById("hola").innerHTML = x;
	var dir = "http://localhost:8080/search/" + x;
	//window.location.replace("http://localhost:8080/search");
	window.location.replace(dir);
	//location.assign("http://localhost:8080/search");
	//document.write('Productos')
	//document.write('HOLA');
	//window.location.reload();
}
</script>



<%@ include file="../jspf/header.jspf"%>


		
<div class="starter-template todoAlCentro" >
	<div id="fullscreen_bg" class="fullscreen_bg"/>
	
		<div class="container">
			<div class="form-signin">
		
			
				<h1 class="form-signin-heading text-muted">Búsqueda</h1>
				<input id="busqueda" type="text" class="form-control" placeholder="Escriba su búsqueda" required=true>
				<button onClick="showProducts()" class="btn btn-lg btn-primary btn-block">
					Search
				</button>
			
			
			</div>
			
		
			
			
			<!--  <div class="row"><div style="overflow:scroll; width: 110px; height: 110px;" class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">-->

			 <!--<div class="grid-container"> -->
		
      
	            <c:forEach var="p" items="${products}">
					<!-- <div class="grid-item"> -->
					<div class="col-lg-3 col-md-4 col-xs-6">
						<a href="../product/${p.id}" class="d-block mb-4 h-100">${p.nombre}</a>
							<img class="photo img-fluid img-thumbnail" src="${p.imagenPrincipal.url}" alt="" style="width: 300px; height: 200px;">
					</div>
					
				</c:forEach>

      
            	<!--<c:forEach var="u" items = "${users}">
            	
						<a href="../profile/${u.id}">${u.login}</a>
						<img class="photo img-fluid img-thumbnail" src="${p.fotoPerfil.url}" alt="" style="width: 300px; height: 200px;">
			
				</c:forEach>-->

			</div>
		<!--  <table>	
			<c:forEach var="p" items="${productsNombre}">
				<tr>
					<td>${p}</td>
				</tr>
			</c:forEach>
		</table>
		<c:forEach var = "d" items = "${collections}">
			<h3>${c}</h3>
		</c:forEach>
		<c:forEach var="u" items = "${users}">
			<h3>${u}</h3>
		</c:forEach>-->
		</div>
		
		
		
		
		
		
		
		
		
	</div>
</div>


<%@ include file="../jspf/footer.jspf"%>

	 