<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>


<link href="/static/css/stars.css" rel = "stylesheet">
<link href="/static/css/product.css" rel = "stylesheet">
<link href="/static/css/carousel.css" rel = "stylesheet">
 
<c:forEach var="i" items="${elementos}">

<div class="todoAlCentro"> 
<div class="container">
<!-- Imagenes cabecera del producto -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ul class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ul>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="/static/img/deporte.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>hola</h1>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="/static/img/deporte.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>hola</h1>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="/static/img/deporte.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>hola</h1>
            </div>
          </div>
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
  	</div> 
  	
  	<div id="coment" class="tab-pane fade">
  		<h3>Comentarios:</h3>
  		<p>Informacion sobre el producto</p>
  	</div> 
  	
  	<div id="añadir" class="tab-pane fade">
  		<h3>Añadi comentarios:</h3>
  		<p>Informacion sobre el producto</p>
  	</div> 
  	
  	<div id="img" class="tab-pane fade">
  		<h3>Imagenes:</h3>
  		<p>Informacion sobre el producto</p>
  	</div>  
  </div>
  
</div>
</div>

</c:forEach>
<%@ include file="../jspf/footer.jspf"%>
