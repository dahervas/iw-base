<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<link href="/static/css/profile.css" rel = "stylesheet">
<link href="/static/css/stars.css" rel = "stylesheet">
 
<<<<<<< HEAD
 <c:forEach var="i" items="${elementos}">
<li>${i}</li>
</c:forEach>
 
<div class="todoAlCentro"> 
=======
<div class="todoAlCentro">
>>>>>>> 52efa43036974779b20361f024431988a68fe262
	<div class="container">
        <img class="img-fluid mb-5 d-block mx-auto" id="fotoperfil" src="https://cdn.pixabay.com/photo/2017/11/16/09/35/girl-2953888_960_720.jpg" alt="">
        <h1 class=" mb-0" id="nombre">Peine
       
        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
       
        </h1>
      <div id="wrapper"> 
        <form action="" method="post">        	
        	<p class="clasificacion" id="textoCentrado">
        		<label>Valoración</label>
        		<br>
        		<input id="radio1" name="estrellas" value="5" type="radio">
        		<label for="radio1"> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> </label>
        		
        		<input id="radio2" name="estrellas" value="4" type="radio">
        		<label for="radio2"> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> </label>
        		
        		<input id="radio3" name="estrellas" value="3" type="radio">
        		<label for="radio3"> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> </label>
        		
        		<input id="radio4" name="estrellas" value="2" type="radio">
        		<label for="radio4"> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> </label>
        		
        		<input id="radio5" name="estrellas" value="1" type="radio">
        		<label for="radio5"> <span class="glyphicon glyphicon-star" aria-hidden="true"></span> </label>
        	</p>
        
        </form>
       </div>
	</div>

 <!-- Page Content -->
  <div class="cajaDescrip">
 	<div class="card-block">
 		<label>Descripción:</label>
 		<div class="form-group" id="texto">
 			<p>Encontraremos una descripción del producto que ofrecemos</p>
 		</div>
 	
 	</div>
 
 	<div class="card-block">
 		<label>Información:</label>
 		<div class="form-group" id="texto">
 			<p>Encontraremos información relevante al producto, período del prestamo...</p>
 		</div>
 	
 	</div>
 
 	<div class="card-block">
 		<label>Opiniones:</label>
 		<div class="form-group" id="texto">
 			<input id="valoración" class="form-control" type="text" name="valoracion" placeholder="Your opinion">
 			<button class="enter" id="boton" type="submit" > Enviar </button>
 		</div> 	
 	</div> 	 	
  </div>
</div>
<%@ include file="../jspf/footer.jspf"%>
