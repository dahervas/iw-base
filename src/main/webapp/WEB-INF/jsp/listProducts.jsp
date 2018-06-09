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
		
		<c:if test="${empty productos}">
		    <div>
		        <h1 class="text-center">Vaya.. parece que aún no hay ningún producto en Tamaa<p> </p>
			</div>
		</c:if>
		<c:if test="${not empty productos}">				
			<table class="tablaModerador">
				<tr> 
					<th class="casillaModerador"> Nombre </th>
					<th class="casillaModerador"> Descripcion </th>
					<th class="casillaModerador"> Propietario </th>
					<th class="casillaModerador"> Enlace </th>
				</tr>
				<c:forEach items="${productos}" var="p">
				<hr>
		          	<td> ${p.nombre} </td>
					<td> ${p.descripcion} </td>
					<td> <a href="/profile/${p.propietario.id}">${p.propietario.login} </a></td>
					<td> <a href="/product/${p.id}">Ver más</a></td>
				</hr>
				</c:forEach>
			</table>
		</c:if>
    </div>
    </div>
    </div>
    
<%@ include file="../jspf/footer.jspf"%>
