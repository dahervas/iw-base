<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>

<link href="static/css/search.css" rel="stylesheet">

<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script>
function showProducts() {
	var x= document.getElementById("busqueda").value;//innerHTML = "HOLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
	//window.location.reload();
	//document.getElementById("hola").innerHTML = x;
	var dir = "http://localhost:8080/search/" + x;
	window.location.replace(dir);
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
			
			<div class="row"><div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">

<!--
    The idea is to use mostly Bootstrap markup,
    peppered with a few "tr" and "td" classes,
    so you can turn any basic bootstrap panel
    into a columnar panel.
-->
<div class="panel panel-default panel-table">
    <div class="panel-heading">
        <div class="tr">
            <div class="td">Productos</div>
            <div class="td">Descripcion</div>
            <div class="td">Usuarios</div>
        </div>
    </div>
    <div class="panel-body">
        <div class="tr">
            <div class="td">
	            <c:forEach var="p" items="${productsNombre}">
					<tr>
						<td>${p}</td>
					</tr>
				</c:forEach>
			</div>
            <div class="td">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi aliquam placeat odit quasi autem distinctio veritatis ex numquam nihil</div>
            <div class="td">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi aliquam placeat odit quasi autem distinctio veritatis ex numquam nihil nulla tempora a dolorem omnis beatae facilis perspiciatis doloribus? Error dolore!</div>
        </div>
    </div>
    <div class="panel-footer">
        <div class="tr">
            <div class="td">footer</div>
            <div class="td">footer</div>
            <div class="td">footer</div>
        </div>
    </div>
</div>

</div></div>
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

	 