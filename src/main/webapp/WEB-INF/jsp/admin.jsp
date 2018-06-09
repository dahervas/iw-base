<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<div class="starter-template todoAlCentro">
	<h1>Admin</h1>
	<p class="lead">Información muy confidencial</p>

	<hr/>

	<form action="/admin/addUser" method="post">
		<label for="login">Usuario/login<input name="login"/></label>
		<label for="password">Contraseña<input type="password" name="password"/></label>
		<label for="isAdmin">¿Administrador?<input type="checkbox" name="isAdmin"></label>
		<label fro="isModer">¿Moderador? <input type="checkbox" name="isModer"></label>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            
            <div class="form-actions">
                <button type="submit" class="btn">Crear usuario</button>
            </div>
	</form>
	
	<hr/>
	
	<table>
	<thead>
	<tr><th>id<th>login<th>roles</tr>
	</thead>
	<tbody>
	<c:forEach items="${users}" var="u">
		<tr>
		<td>${u.id}<td>${u.login}<td>${u.roles}<td>
		<form action="/admin/deleteUser" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="hidden" name="id" value="${u.id}"/>
			<button type="submit" id="botonBorrar" class="btn">Borrar</button>
		</form></td>
		</tr>	
	</c:forEach>
	</tbody>
	</table>

	<%@ include file="../jspf/authinfo.jspf"%>		
</div>

<%@ include file="../jspf/footer.jspf"%>
