<%-- <%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<div class="starter-template">
	<h1>Búsqueda</h1>

    <form action="/search" method="post">               
        <fieldset>
            <legend>Type your search</legend>
            <input type="text" id="username" name="username"/>        
           
            
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            
            <div class="form-actions">
                <button type="submit" class="btn">Search</button>
            </div>
        </fieldset>
    </form>

	<%@ include file="../jspf/authinfo.jspf"%>		
</div>

<%@ include file="../jspf/footer.jspf"%> --%>
<link href="{s}/css/search.css" rel="stylesheet" id="bootstrap-css">



<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<div class="starter-template">
	<h1>Búsqueda</h1>
		<form action="/search" method="post">               
	        <fieldset>
	        	<legend></legend>
	        	
					
						
				            <div class="input-group custom-search-form" align="centre">
				              <input type="text" class="form-control">
				              <span class="input-group-btn">
				              <button class="btn btn-primary" type="button">
				              <span class="glyphicon glyphicon-search"></span>
				             </button>
				             </span>
				             </div><!-- /input-group -->
				        
					
				
			</fieldset>
   		 </form>
   		 <%@ include file="../jspf/authinfo.jspf"%>
		
</div>
<%@ include file="../jspf/footer.jspf"%>