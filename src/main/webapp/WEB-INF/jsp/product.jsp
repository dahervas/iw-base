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

 
<c:forEach var="i" items="${elementos}">

<div class="todoAlCentro"> 
<div class="container">
<!-- Imagenes cabecera del producto -->
<!-- -->	
	<div>
		</br>
		<!-- Boton de borrar el action puesto de forma provisional -->
		<c:if test="${i.propietario.id == u.id}">
			<form action="borrar" method="post">
				<input type="hidden" name="id" value="${i.id}"/>
				<button class="btn" type="submit"> Borrar producto</button>
			</form>
		</c:if>
	</div>
	</br>
	<div class="row text-center text-lg-left ">
		<div class="todoAlCentro">
			<c:choose>
			<c:when test="${empty i.imagenPrincipal.url}">
				<img class="img-fluid mb-5 d-block mx-auto text-center"  src="static/img/losiento.jpg"
				  id="fotoperfil" data-toggle="modal" data-target="#exampleModal">			
			</c:when>
			<c:otherwise>
				<img class="img-fluid mb-5 d-block mx-auto text-center"
				 src="${i.imagenPrincipal.url}" id="fotoperfil" data-toggle="modal" data-target="#exampleModal">	
						
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
	<div class="row text-center text-lg-left "> 
     
    </div>

	<hr class="featurette-divider">
	
	<div class="btn-pedir">			
		<c:if test="${i.cantidad > 0 && i.prestado <= 1 }">
			<form action="prestado" method="post">
				<label class="col-md-4 control-label" for="nombre">Cantidad:</label>  
				<div class="col-md-4">
					<input id="cantidad" name="cantidad" placeholder="Escriba aquí la cantidad " class="form-control input-md" type="text">
				</div>
				<input type="hidden" name="id" value="${i.id}"/>
				 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<button class="btn" type="submit"> Tomar prestado</button>
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
  				
  				<fieldset>
  				<label>Valoración:</label>
  					<p>${i.estrellas}</p>
  				</fieldset>  
  				
  				<hr class="featurette-divider">
  				
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
    						<div class="card-block">
    							<!-- <h3>{c.autor}</h3>-->
    							<p>${c.comemtarios}</p>s
    							<hr class="featurette-divider">
    						</div>
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
          <!-- Text area -->
          <div class="form-group">
             <label for="usuario" class="col-sm-2 control-label">Destinatario</label>
              <div class="col-sm-10">
               <textarea class="form-control" name="Destinatario" id="Destinatario" rows="5" placeholder="Your Message"
               required data-validation-required-message ="Please enter your comment"></textarea>
             </div>
          </div>
         
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
