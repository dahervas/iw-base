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
					<form action="/moder/rechazar" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input type="hidden" name="usuario" value="${p.propietario.id}"/>
						<input type="hidden" name="eliminar" value="${p.id}"/>
						<input type="hidden" name="tipo" value="producto"/>
					
						<td><button type="submit" id="botonBorrar" class="btn">Borrar</button>
					</form>
					<form action="/moder/validarProducto" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input type="hidden" name="validar" value="${p.id}"/>
						<input type="hidden" name="tipo" value="producto"/>
					
						<button type="submit" class="btn">Aceptar</button></td>
					</form>
				</tr>
			</c:if>
		</c:forEach>
		
	</table>
	
	<h4>
		Colecciones
	</h4>
	<table class="tablaModerador">
		<tr> 
			<th class="casillaModerador"> Nombre </th>
			<th class="casillaModerador"> Descripcion </th>
			<th class="casillaModerador"> Propietario </th>
			<th class="casillaModerador"> Enlace </th>
			<th class="casillaModerador"> Acción </th>
		</tr>
		<c:forEach items="${colecciones}" var="c">
			<c:if test="${! c.revisado}">
				<tr>
					<td> ${c.nombre} </td>
					<td> ${c.descripcion} </td>
					<td> <a href="/profile/${c.propietario.id}">${c.propietario.login} </a></td>
					<td> <a href="/collection/${c.id}">Ver más</a></td>
					<form action="/moder/rechazar" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input type="hidden" name="usuario" value="${c.propietario.id}"/>
						<input type="hidden" name="eliminar" value="${c.id}"/>
						<input type="hidden" name="tipo" value="coleccion"/>
						
					
						<td><button type="submit" id="botonBorrar" class="btn">Borrar</button>
					</form>
					<form action="/moder/validarProducto" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input type="hidden" name="validar" value="${c.id}"/>
						<input type="hidden" name="tipo" value="coleccion"/>
					
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
