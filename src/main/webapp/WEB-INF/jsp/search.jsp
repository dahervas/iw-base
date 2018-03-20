<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<link href="static/css/search.css" rel="stylesheet">


<body style="background-image: url(/static/img/libros.jpg);">
<%@ include file="../jspf/header.jspf"%>
<div class="starter-template todoAlCentro" >
	
		<h1>Búsqueda</h1>
		
		
		<form action="/search" method="post">               
			<fieldset>
				<div>
					<input type="text" class="from-control"/>      
					<button class ="btn btn-primary" type="button">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</div>
			</fieldset>
		</form>
		 
		
	 <%@ include file="../jspf/authinfo.jspf"%>	
	
 </div>
 </body>	

<%@ include file="../jspf/footer.jspf"%>
