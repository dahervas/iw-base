<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>


    
 
<div class="starter-template">
	
	<form class="form-horizontal">
		<fieldset>
		
			<!-- Form Name -->
			<legend>Nuevo producto</legend>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="nombre">Nombre:</label>  
			  <div class="col-md-4">
			  <input id="nombre" name="nombre" placeholder="Escriba aquí el nombre " class="form-control input-md" type="text">
			    
			  </div>
			</div>
			
			<!-- File Button --> 
			<div class="form-group">
			  <label class="col-md-4 control-label" for="imagenes">Subir imágenes del producto</label>
			  <div class="col-md-4">
			    <input id="imagenes" name="imagenes" class="input-file" type="file">
			  </div>
			</div>
			
			<!-- Textarea -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="descripcion">Descripción:</label>
			  <div class="col-md-4">                     
			    <textarea class="form-control" id="descripcion" name="descripcion">Escriba aquí la descripción</textarea>
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="cantidadProducto">Cantidad del producto</label>  
			  <div class="col-md-5">
			  <input id="cantidadProducto" name="cantidadProducto" placeholder="cantidad" class="form-control input-md" type="text">
			  <span class="help-block">Puede ser que tenga dos sillas</span>  
			  </div>
			</div>
			
			<!-- Button (Double) -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="botonAceptar">¿Subir producto?</label>
			  <div class="col-md-8">
			    <button id="botonAceptar" name="botonAceptar" class="btn btn-success">Sí, a por ello</button>
			    <button id="botonCancelar" name="botonCancelar" class="btn btn-danger">No, qué horror</button>
			  </div>
			</div>
		
		</fieldset>
	</form>

	
<%@ include file="../jspf/footer.jspf"%>
