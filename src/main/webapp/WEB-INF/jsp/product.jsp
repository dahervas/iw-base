<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>


<link href="/static/css/stars.css" rel = "stylesheet">
<link href="/static/css/product.css" rel = "stylesheet">
<link href="/static/css/carousel.css" rel = "stylesheet">
<link href="/static/css/coment.css" rel = "stylesheet">
 
<c:forEach var="i" items="${elementos}">

<div class="todoAlCentro"> 
<div class="container">
<!-- Imagenes cabecera del producto -->
<!-- <div id="myCarousel" class="carousel slide" data-ride="carousel">-->
      <!-- Indicators -->
      <ul class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ul>
     <div class="carousel-inner">     
   		 <div class="carousel-item active">
     		<!-- <img src="/static/img/losiento.jpg" alt="First slide">-->
   		 </div>
   		 
   		 <div class="carousel-item">
    		<!--  <img src="/static/img/losiento.jpg" alt="Second slide">-->
    	</div>
    	
   		<div class="carousel-item">
    		 <!-- <img src="/static/img/losiento.jpg" alt="Third slide">-->
  	 	</div>  	 	
 	 </div>
 	 
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
</div> 

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
  			<div class="tect-center">
  				<h3>No hay información del producto</h3>
  			</div>  		
  		</c:if>
  		<c:if test="${not empty elementos }">
  			<div class="todoAlCentro">
  				<fieldset>
  				<label>Descripción:</label>
  					<p>{i.descripcion}</p>
  				</fieldset>
  				
  				</br>
  				
  				<fieldset>
  				<label>Valoración:</label>
  					<p>{i.estrellitas}</p>
  				</fieldset>  
  				
  				</br>
  				
  				<fieldset>
  				<label>Cantidad del producto:</label>
  					<p>{i.cantidad}</p>
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
  							</br>
  							<h3>Si quieres ser el primero ve al apartado de añadir comentarios</h3>  						
  						</div>
  					 </c:if>
  					 
  					 <c:if test="${not empty comentarios}">  				
  						<c:forEach var = "c" items="${comentarios}">
    						<div class="card-block">
    							<!-- <h3>{c.autor}</h3>-->
    							<p>{c.comment}</p>
    							</br>
    						</div>
						</c:forEach> 
					</c:if>
  					
  				</div>
  			</div>
  		</fieldset>
  		
  	</div> 
  	
  	<div id="añadir" class="tab-pane fade">
  		<h3>Añadir comentarios:</h3>
  		<form action="addComment" method="post" class="form-horizontal" id="commentForm" role="form"> <!-- Hacer la funcion addComment -->
          <div class="form-group">
             <label for="comment" class="col-sm-2 control-label">Comment</label>
             <div class="col-sm-10">
               <textarea class="form-control" name="Comment" id="Comment" rows="5" placeholder="Your Message"
               required data-validation-required-message ="Please enter your comment"></textarea>
               <input id="IdUsuario" name="IdUsuario" class="form-control input-md" type="text">
             </div>
          </div>
          <div class="form-group">
             <label for="usuario" class="col-sm-2 control-label">Destinatario</label>
              <div class="col-sm-10">
               <textarea class="form-control" name="Destinatario" id="Destinatario" rows="5" placeholder="Your Message"
               required data-validation-required-message ="Please enter your comment"></textarea>
             </div>
             <div class="col-sm-10">
               <textarea class="form-control" name="Sender" id="Sender" rows="5" placeholder="Your Message"
               required data-validation-required-message ="Please enter your comment"></textarea>
             </div>
          </div>
        </form>
   	</div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">                    
              <button class="btn btn-success btn-circle text-uppercase" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>
            </div>
          </div>            
      
  	</div>   	 
  </div>
 
 <div id="img" class="tab-pane fade">
  		<h3>Imagenes:</h3>
  		
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
			
			
					
</div>

</c:forEach>
<%@ include file="../jspf/footer.jspf"%>
