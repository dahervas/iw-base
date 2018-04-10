<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<link href="static/css/search.css" rel="stylesheet">


<!-- <body style="background-image: url(/static/img/libs.jpg);"> -->
<%@ include file="../jspf/header.jspf"%>
<div class="starter-template todoAlCentro" >
	<div class="myContainer">
	

		
		
		<form action="/search" method="post">               	
			<div>
				<input type="text" class="entr" placeholder="Search"/>      
			</div>		
		</form>
		 
		
	
	</div>	
</div>
 </body>	

<%@ include file="../jspf/footer.jspf"%>
