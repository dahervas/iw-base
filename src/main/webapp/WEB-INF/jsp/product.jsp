<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<link href="/static/css/profile.css" rel = "stylesheet">
<link href="/static/css/stars.css" rel = "stylesheet">
 
<c:forEach var="i" items="${elementos}">
 
<div class="todoAlCentro"> 
	<div class="container">

		<div class="row text-center text-lg-left ">
        <img class="img-fluid mb-5 d-block mx-auto" id="fotoperfil" src="${i.imagenPrincipal.url}" alt="">
        <h1 class=" mb-0" id="nombre">${i.nombre}
       
        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
       
        </h1>
        </div>
      <div id="wrapper"> 
        <form action="proyIW/src/main/java/es/ucm/fdi/iw/model" method="post">        	
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
        	<p>
        		<input type="submit" name="Valorar">
        	</p>
       </div>
	</div>

 <!-- Page Content -->
  <div class="cajaDescrip">
 	<div class="card-block">
 		<label>Descripción:</label>
 		<div class="form-group" id="texto">
 			<p>${i.descripcion}</p>
 		</div>
 	
 	</div>
 
 	<div class="card-block">
 		<label>Información:</label>
 		<div class="form-group" id="texto">
 			<p>Prestado: ${i.prestado }</p>
 			<p>Cantidad: ${i.cantidad }</p>
 			<p>Estrellitas : ${i.estrellitas}</p>
 		</div>
 	
 	</div>
 
 	<div class="card-block">
 		<label>Opiniones:</label>
 		<div class="form-group" id="texto">
 			<input id="valoración" class="form-control" type="text" name="valoracion" placeholder="Your opinion">
 			<button class="enter" id="boton" type="submit" > Enviar </button>
 		</div> 	
 	</div> 	 
 	<div>
 		<details>
 			<summary>Comentarios:
 				<p>Aquí tendra que haber comentarios</p>
 			</summary>
 			
 		</details>
 	</div>	
  </div>
  <!-- Zona imagenes -->
	<div class="row text-center text-lg-left ">
		<div id="textoCentrado"></div>
			<h2>IMAGENES:</h2>
			
			
			<c:forEach var = "f" items="${fotos}">
    			<div class="gallery_product col-lg-4 col-md-4 col-sm4 col-xs-6 filter hdpe" >
    				<img src="${f}" class="img-responsive" alt="200x200">
    				${f}
    			</div>
			</c:forEach>		

	</div>
</div>
</c:forEach>
<%@ include file="../jspf/footer.jspf"%>
