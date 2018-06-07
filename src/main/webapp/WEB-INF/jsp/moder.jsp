<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<link href="${s}/css/moder.css" rel="stylesheet">

	
<div class="starter-template todoAlCentro">
	<h1>TAMAA</h1>
	<p class="lead">Kushiriki ni kuishi</p>
	
	<h4>
		Productos
	</h4>
	<table class="tablaModerador">
		<tr> 
			<th class="casillaModerador"> Nombre </th>
			<th class="casillaModerador"> Descripcion </th>
			<th class="casillaModerador"> Propietario </th>
			<th class="casillaModerador"> Enlace </th>
			<th class="casillaModerador"> Acción </th>
		</tr>
		<c:forEach items="${productos}" var="p">
			<c:if test="${! p.revisado}">
				<tr>
					<td> ${p.nombre} </td>
					<td> ${p.descripcion} </td>
					<td> <a href="/profile/${p.propietario.id}">${p.propietario.login} </a></td>
					<td> <a href="/product/${p.id}">Ver más</a></td>
					<form action="/moder/rechazarProducto" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input type="hidden" name="usuario" value="${p.id}"/>
						<input type="hidden" name="producto" value="${p.propietario.id}"/>
					
						<td><button type="submit" id="botonBorrar" class="btn">Borrar</button>
					</form>
					<form action="/moder/validarProducto" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input type="hidden" name="usuario" value="${p.id}"/>
						<input type="hidden" name="producto" value="${p.propietario.id}"/>
					
						<button type="submit" class="btn">Aceptar</button></td>
					</form>
				</tr>
			</c:if>
		</c:forEach>
	</table>
	
 <!-- Page Content -->
    <div class="container">

      
</div>

<%@ include file="../jspf/footer.jspf"%>
