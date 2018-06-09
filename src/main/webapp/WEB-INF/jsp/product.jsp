<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>


<link href="/static/css/stars.css" rel = "stylesheet">
<link href="/static/css/product.css" rel = "stylesheet">
<link href="/static/css/coment.css" rel = "stylesheet">
<link href="/static/css/profile.css" rel="stylesheet">

<script>
function valorar(puntos) {
	//alert("he entrado");
	//alert("puntos: " + puntos);
	var puntos2 = puntos;
	var x = document.getElementById("star1");  
	var y = document.getElementById("star2");
	var z = document.getElementById("star3");
	var a = document.getElementById("star4");
	var b = document.getElementById("star5");
	if(puntos2 >= 1){
		x.style.color = "orange";
		y.style.color = "black";
		z.style.color = "black";
		a.style.color = "black";
		b.style.color = "black";
	}
	if(puntos2 >= 2){
		y.style.color = "orange";
		z.style.color = "black";
		a.style.color = "black";
		b.style.color = "black";
	}
	if(puntos2 >= 3){ 
		z.style.color = "orange";
		a.style.color = "black";
		b.style.color = "black";
	}
	if(puntos2 >= 4){
		var x = document.getElementById("star4");  
		a.style.color = "orange";
		b.style.color = "black";
	}
	if(puntos2 == 5){
		var x = document.getElementById("star5");  
		b.style.color = "orange";
	}
	
	var formulario = document.getElementById("formulario");
	//alert("HOLA");
	formulario.estrellas.value = puntos;
	formulario.submit();
}
</script>

 
<c:forEach var="i" items="${elementos}">


<div class="todoAlCentro"> 
<div class="container">
<!-- Imagenes cabecera del producto -->
<!-- -->	
	<div>
		</br>
		<!-- Boton de borrar el action puesto de forma provisional -->
		<c:if test="${i.propietario.id == user.id}">
			<form action="../borrar" method="post">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="hidden" name="usuario" value="${i.propietario.id}"/>
				<input type="hidden" name="eliminar" value="${i.id}"/>
				<input type="hidden" name="tipo" value="producto"/>
							
				<button type="submit" id="botonBorrar" class="btn">Borrar Producto</button>
			</form>
		</c:if>
	</div>
	</br>
	<div class="row text-center text-lg-left ">
		<div class="todoAlCentro">
			<c:choose>
			<c:when test="${empty i.imagenPrincipal.url}">
				<img class="img-fluid mb-5 d-block mx-auto text-center"  src="../photo/${i.id}/0"
				  id="fotoperfil" data-toggle="modal" data-target="#exampleModal">			
			</c:when>
			<c:otherwise>
				<img class="img-fluid mb-5 d-block mx-auto text-center"
				 src="../${i.imagenPrincipal.url}" id="fotoperfil" data-toggle="modal" data-target="#exampleModal">	
						
			</c:otherwise>
			</c:choose>
			</br>
			<p>${i.nombre}</p>
			<c:if test="${i.cantidad == 0}">
				<i class="fa fa-home"></i>
			</c:if>
		</div>	
	</div>
    
</div> 
<!-- VALORACIÓN DEL PRODUCTO -->
	<div class="todoAlCentro" > 
     	<form action="addValoration" id="formulario" enctype = "multipart/form-data" method="post" class="form-horizontal">
				<div id="wrapper">        	
	   				<p class="clasificacion" id="textoCentrado">
	   					<input id="radio5" name="estrellas" value="5" type="radio">
	   					${i.estrellas} (${i.votos} sotoV)
	   					<c:choose>
							<c:when test="${i.estrellas >= 5}">
								<label for="radio5" style="color:orange;">
							</c:when>
							<c:otherwise>
								<label for="radio5">
							</c:otherwise>
						</c:choose>
	      				<span id="star5" class="glyphicon glyphicon-star" aria-hidden="true" onClick="valorar(5)"></span> </label>
	      				
	      				<input id="radio4" name="estrellas" value="4" type="radio">
	      				<c:choose>
							<c:when test="${i.estrellas >= 4}">
								<label for="radio4" style="color:orange;">
							</c:when>
							<c:otherwise>
								<label for="radio4">
							</c:otherwise>
						</c:choose>
	      				<span id="star4" class="glyphicon glyphicon-star" aria-hidden="true" onClick="valorar(4)"></span> </label>
	      				
	      				<input id="radio3" name="estrellas" value="3" type="radio">
	      				<c:choose>
							<c:when test="${i.estrellas >= 3}">
								<label for="radio3" style="color:orange;">
							</c:when>
							<c:otherwise>
								<label for="radio3">
							</c:otherwise>
						</c:choose>
	      				<span id="star3" class="glyphicon glyphicon-star" aria-hidden="true" onClick="valorar(3)"></span> </label>
	      				
	      				<input id="radio2" name="estrellas" value="2" type="radio">
	      				<c:choose>
							<c:when test="${i.estrellas >= 2}">
								<label for="radio2" style="color:orange;">
							</c:when>
							<c:otherwise>
								<label for="radio2">
							</c:otherwise>
						</c:choose>
	      				<span id="star2" class="glyphicon glyphicon-star" aria-hidden="true" onClick="valorar(2)"></span> </label>
	      				
	      				<input id="radio1" name="estrellas" value="1" type="radio">
	      				<c:choose>
							<c:when test="${i.estrellas >= 1}">
								<label for="radio1" style="color:orange;">
							</c:when>
							<c:otherwise>
								<label for="radio1">
							</c:otherwise>
						</c:choose>
	      				<span id="star1" class="glyphicon glyphicon-star" aria-hidden="true" onClick="valorar(1)"></span> </label>
	      			</p> 
	      			<input type="hidden" name="id" value="${i.id}"/>  
	      			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	    		</div>
			</form>
    </div>

	<hr class="featurette-divider">
	<div class="btn-pedir">			
		<c:if test="${i.cantidad > 0 && i.prestado <= 1 && user.id == i.propietario.id}">
			<form action="../prestar" method="post" enctype = "multipart/form-data">
				<label class="col-md-4 control-label" for="nombre">Cantidad:</label>  
				<div class="col-md-4">
					<input id="cantidad" name="cantidad" placeholder="Escriba aquí la cantidad " class="form-control input-md" type="text">
				</div>
				<input type="hidden" name="id" value="${i.id}"/>
				 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<button class="btn" type="submit"> Prestar</button>
			</form>
		</c:if>
		<c:if test="${i.cantidad > 0 && i.prestado <= 1 && user.id != i.propietario.id && user.roles == 'USER'}">
			<form action="../prestado" method="post" enctype = "multipart/form-data">
				<label class="col-md-4 control-label" for="nombre">Cantidad:</label>  
				<div class="col-md-4">
					<input id="cantidad" name="cantidad" placeholder="Escriba aquí la cantidad " class="form-control input-md" type="text">
				</div>
				<input type="hidden" name="id" value="${i.id}"/>
				 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<button class="btn" type="submit"> Pedir prestado</button>
			</form>
		</c:if>
	</div>
	
	<hr class="featurette-divider">

<!-- Menu de selección -->
  <ul class="nav nav-tabs">
  	<li class="active"><a data-toggle="tab" href="#info">Información</a></li>
  	<li><a data-toggle="tab" href="#coment">Comentarios</a></li>
  	<li><a data-toggle="tab" href="#añadir">Añadir Comentarios</a></li>
  	<li><a data-toggle="tab" href="#img">Imagenes</a></li>  
  </ul>
  
  <div class="tab-content">
  	<div id="info" class="tab-pane fade in active">
  		<h3>Informacion:</h3>
  		<p>Informacion sobre el producto</p>
  		
  		<c:if test="${empty elementos }">
  			<div class="text-center">
  				<h3>No hay información del producto</h3>
  			</div>  		
  		</c:if>
  		<c:if test="${not empty elementos }">
  			<div class="todoAlCentro">
  				<fieldset>
  				<label>Descripción:</label>
  					<p>${i.descripcion}</p>
  				</fieldset>
  				
  				<hr class="featurette-divider">
  				
  			<!-- 	<fieldset>
  				<label>Valoración:</label>
  					<p>${i.estrellas}</p>
  				</fieldset>  
  				
  				<hr class="featurette-divider">-->
  				
  				<fieldset>
  				<label>Cantidad del producto:</label>
  					<p>${i.cantidad}</p>
  				</fieldset>			
  			</div>
  		</c:if>
  		
  	</div> 
  	
  	<div id="coment" class="tab-pane fade">
  		<fieldset>
  		<legend>Comentarios:</legend>
  			<div class="card my-6">
  				<div class="card my-4">
  					<c:if test="${empty comentarios}">
  						<div class="text-center">
  							<h2>TODAVÍA NO HAY COMENTARIOS</h2>
  							<hr class="featurette-divider">
  							<h3>Si quieres ser el primero ve al apartado de añadir comentarios</h3>  						
  						</div>
  					 </c:if>
  					 
  					 <c:if test="${not empty comentarios}">  				
  						<c:forEach var = "c" items="${comentarios}">
  						<c:if test="${c.idProduct.id == i.id }">
    						<div class="card-block">
    							<label>${c.idSender.login} :</label>
    							<p>${c.comment}</p>
    							<hr class="featurette-divider">
    						</div>
    					</c:if>
						</c:forEach> 
					</c:if>
  					
  				</div>
  			</div>
  		</fieldset>
  		
  	</div> 
  	
  	<div id="añadir" class="tab-pane fade">
  		<h3>Añadir comentarios:</h3>
  		<form action="addComment" enctype="multipart/form-data" method="post" class="form-horizontal" > 
        	<!-- Text area -->
          <div class="form-group">
             <label for="comment" class="col-sm-2 control-label">Comment</label>
             <div class="col-sm-10">
               <textarea class="form-control" name="Comment" id="Comment" rows="5" placeholder="Your Message"
               required data-validation-required-message ="Please enter your comment"></textarea>
             </div>
          </div>         
          <!-- Text area
          <div class="form-group">
             <label for="usuario" class="col-sm-2 control-label">Destinatario</label>
              <div class="col-sm-10">
               <textarea class="form-control" name="Destinatario" id="Destinatario" rows="5" placeholder="Your Message"
               required data-validation-required-message ="Please enter your comment"></textarea>
             </div>
          </div>-->
          <input type="hidden" name="idP" value="${i.id}"/>
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <!-- Button -->
          <div class="form-actions">
          	<div class="col-sm-offset-2 col-sm-10">                    
           	  <button class="btn" type="submit"> Enviar comentario</button>
            </div>
         </div>
         
        </form>
   	</div>     
   	
   	<div id="img" class="tab-pane fade">
  		<fieldset>
  		<legend>Imagenes</legend>
  		<div class="card my-6">
  			<c:if test="${empty fotos}">
  				<div class="text-center">
  					<p>Todavía no hay ninguna foto del producto</p>
  				</div>
  			</c:if>
  		
  			<c:if test="${not empty fotos}">
  			<c:forEach var = "f" items="${fotos}">
    			<div class="gallery_product col-lg-4 col-md-4 col-sm4 col-xs-6 filter hdpe" >
    				<img src="../photo${f}" class="photo img-responsive" alt="200x200">    			
    			</div>
			</c:forEach>  		
			</c:if>
		</div>
		</fieldset>
 	</div>               
      
 </div>   	 
 
 
  
</div>	

</c:forEach>
<%@ include file="../jspf/footer.jspf"%>
