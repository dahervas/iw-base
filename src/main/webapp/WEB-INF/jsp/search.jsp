<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<link href="{s}/css/search.css" rel="stylesheet">
	
<%@ include file="../jspf/header.jspf"%>
<div class="starter-template todoAlCentro">
	<h1>Búsqueda</h1>
	<form action="/search" method="post">               
		<fieldset>
			<div class = "custom-search-form" align="centre">
				<div class="row">
					<input type="text" class="from-control"/>      
					<span class = "input-group-btn">
						<button class ="btn btn-primary" type="button">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>
		</fieldset>
	</form>
 
 </div>
 <%@ include file="../jspf/authinfo.jspf"%>		

<%@ include file="../jspf/footer.jspf"%>
