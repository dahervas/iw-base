<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<link href="/static/css/profile.css" rel = "stylesheet">
 <div class="todoAlCentro">
	 <div class="row text-center text-lg-left ">
	        <img class="img-fluid mb-5 d-block mx-auto text-center" id="fotoperfil" src="${s}/img/girl.jpg" alt="">
	        <h1 class=" mb-0">Marta 
	       
	        <span class="glyphicon glyphicon-cog text-center" aria-hidden="true"></span>
	  
	        </h1>
	     	<div class="btn-group btn-group-lg justify-content-center" role="group" aria-label="Basic example">
	  			<button type="button" class="btn btn-secondary" >Mis productos</button>
	  			<button type="button" class="btn btn-secondary"  onclick="hideProducts()">Mis colecciones</button>
			</div>
	</div>



 <!-- Page Content -->
    <div class="container" id="products">

      <div class="row text-center text-lg-left">

        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
          
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/platos.jpg" alt="">
          </a>
        </div>
      </div>

    </div>
    
       <div class="container" id="collections">

      <div class="row text-center text-lg-left">

        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
          </a>
          
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
          </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="#" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" src="${s}/img/libros.jpg" alt="">
          </a>
        </div>
      </div>

    </div>
   </div>
   
   <script>
	function hideProducts() {
	    var x = document.getElementById("products");
	    var y = document.getElementById("collections");
	    if (x.style.display === "none") {
	        x.style.display = "block";
	    }
	    
	    if (y.style.display === "block") {
	        y.style.display = "none";
	    }
	}
	
/* 	function hideCollections() {
	    var x = document.getElementById("collections");
	    if (x.style.display === "none") {
	        x.style.display = "block";
	    } else {
	        x.style.display = "none";
	    }
	} */
	
	
</script>

<%@ include file="../jspf/footer.jspf"%>
