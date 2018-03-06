<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<link href="/static/css/profile.css" rel = "stylesheet">
 <link href="${s}/css/bootstrap.min.css" rel="stylesheet">
 
 <div class="container">
 		<button id="sesion" type="button" class="btn btn-default btn-lg">
  			<span class="glyphicon glyphicon-lock" aria-hidden="true"></span> Cerrar sesión
		</button>
        <img class="img-fluid mb-5 d-block mx-auto" id="fotoperfil" src="https://cdn.pixabay.com/photo/2017/11/16/09/35/girl-2953888_960_720.jpg" alt="">
        <h1 class=" mb-0" id="nombre">Peine
       
        <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
       
        </h1>
        
        <h2> Valoración:  </h2>
        
</div>

 <!-- Page Content -->
 	<div class="card-block">
 		<label>Descripción:</label>
 		<div class="form-group">
 			<input id="Descripción" class="form-control" type="text" name="descripcion">
 		</div>
 	
 	</div>
 
 	<div class="card-block">
 		<label>Información:</label>
 		<div class="form-group">
 			<input id="valoración" class="form-control" type="text" name="valoracion">
 		</div>
 	
 	</div>
 
 	<div class="card-block">
 		<label>Opiniones:</label>
 		<div class="form-group">
 			<input id="valoración" class="form-control" type="text" name="valoracion">
 		</div>
 	
 	</div>
 	
 	
 	
    <div class="container">

      <div class="row text-center text-lg-left">

        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="http://placehold.it/400x300" alt="">
          </a>
        </div>
      </div>

    </div>

<%@ include file="../jspf/footer.jspf"%>
