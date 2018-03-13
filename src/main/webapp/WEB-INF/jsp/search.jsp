<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<link href="{s}/css/search.css" rel="stylesheet">
	
<%@ include file="../jspf/header.jspf"%>
<div class="starter-template todoAlCentro">
	<h1>Búsqueda</h1>
	<form action="/search" method="post">               
		<fieldset>
			<div class = "input-group custom-search-form" align="centre">
				<div class="row">
					<input type="text" class="from-control"/>      
					<span class = "input-group-btn">
						<button class ="btn btn-primary" type="button">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>
		</fildset>
	</form>
	
	<div class="container">
		<div class="row">
    	
    		<div class="bs-docs-example">
				<select class="selectpicker" data-style="btn-primary" style="display: none;">
      				<option>Mustard</option>
      				<option>Ketchup</option>
      				<option>Relish</option>
    			</select>
    			<select class="selectpicker" data-style="btn-info" style="display: none;">
      				<option>Mustard</option>
      				<option>Ketchup</option>
      				<option>Relish</option>
    			</select>
    			<select class="selectpicker" data-style="btn-success" style="display: none;">
      				<option>Mustard</option>
      				<option>Ketchup</option>
      				<option>Relish</option>
    			</select>
    			<select class="selectpicker" data-style="btn-warning" style="display: none;">
      				<option>Mustard</option>
      				<option>Ketchup</option>
      				<option>Relish</option>
    			</select>
    			<select class="selectpicker" data-style="btn-danger" style="display: none;">
      				<option>Mustard</option>
      				<option>Ketchup</option>
      				<option>Relish</option>
    			</select>
    			<select class="selectpicker" data-style="btn-inverse" style="display: none;">
      				<option>Mustard</option>
      				<option>Ketchup</option>
      				<option>Relish</option>
    			</select>
      
   			</div>
    		<div class="bs-docs-example">
    			<select class="selectpicker" multiple="" style="display: none;">
    				<option>Mustard</option>
    				<option>Ketchup</option>
    				<option>Relish</option>
    			</select>
    		</div>
    		<select class="selectpicker" data-show-subtext="true" style="display: none;">
        		<option data-subtext="French's">Mustard</option>
        		<option data-subtext="Heinz">Ketchup</option>
        		<option data-subtext="Sweet">Relish</option>
        		<option data-subtext="Miracle Whip">Mayonnaise</option>
        		<option data-divider="true"></option>
        		<option data-subtext="Honey">Barbecue Sauce</option>
        		<option data-subtext="Ranch">Salad Dressing</option>
        		<option data-subtext="Sweet & Spicy">Tabasco</option>
        		<option data-subtext="Chunky">Salsa</option>
    		</select>
    		<select class="selectpicker" data-header="Select a condiment" style="display: none;">
        		<option data-subtext="French's">Mustard</option>
        		<option data-subtext="Heinz">Ketchup</option>
        		<option data-subtext="Sweet">Relish</option>
        		<option data-subtext="Miracle Whip">Mayonnaise</option>
        		<option data-divider="true"></option>
        		<option data-subtext="Honey">Barbecue Sauce</option>
        		<option data-subtext="Ranch">Salad Dressing</option>
        		<option data-subtext="Sweet & Spicy">Tabasco</option>
        		<option data-subtext="Chunky">Salsa</option>
    		</select>
    		<select class="selectpicker" data-size="5" style="display: none;">
      			<option>Mustard</option>
      			<option>Ketchup</option>
      			<option>Relish</option>
      			<option>Mayonnaise</option>
      			<option>Barbecue Sauce</option>
      			<option>Salad Dressing</option>
      			<option>Tabasco</option>
      			<option>Salsa</option>
    		</select>
    		<select class="selectpicker">
    			<optgroup label="Picnic" disabled>
      				<option>Mustard</option>
      				<option>Ketchup</option>
      				<option>Relish</option>
    			</optgroup>
    			<optgroup label="Camping">
      				<option>Tent</option>
      				<option>Flashlight</option>
 				    <option>Toilet Paper</option>
    			</optgroup>
    		</select>
    		<select class="selectpicker">
    			<option>Mustard</option>
			    <option class="special">Ketchup</option>
    			<option>Relish</option>
    		</select>
		    <select class="selectpicker" data-style="btn-primary" style="display: none;">
      			<option data-icon="glyphicon glyphicon-music">Mustard</option>
      			<option data-icon="glyphicon glyphicon-star">Ketchup</option>
      			<option data-icon="glyphicon glyphicon-heart">Relish</option>
    		</select>
      		<select class="selectpicker" data-style="btn-primary" data-width="auto" style="display: none;">
      			<option data-icon="glyphicon glyphicon-music">Mustard</option>
      			<option data-icon="glyphicon glyphicon-star">Ketchup</option>
      			<option data-icon="glyphicon glyphicon-heart">Relish</option>
    		</select><br>
 
   		</div>
   <%@ include file="../jspf/authinfo.jspf"%>		
</div>
<%@ include file="../jspf/footer.jspf"%>
	
	
	 
<%-- 

<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
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
   	
   	
   	
   	<div class="container">
    <div class="row">
    	
    <div class="bs-docs-example">
    <select class="selectpicker" data-style="btn-primary" style="display: none;">
      <option>Mustard</option>
      <option>Ketchup</option>
      <option>Relish</option>
    </select>
    <select class="selectpicker" data-style="btn-info" style="display: none;">
      <option>Mustard</option>
      <option>Ketchup</option>
      <option>Relish</option>
    </select>
    <select class="selectpicker" data-style="btn-success" style="display: none;">
      <option>Mustard</option>
      <option>Ketchup</option>
      <option>Relish</option>
    </select>
    <select class="selectpicker" data-style="btn-warning" style="display: none;">
      <option>Mustard</option>
      <option>Ketchup</option>
      <option>Relish</option>
    </select>
    <select class="selectpicker" data-style="btn-danger" style="display: none;">
      <option>Mustard</option>
      <option>Ketchup</option>
      <option>Relish</option>
    </select>
    <select class="selectpicker" data-style="btn-inverse" style="display: none;">
      <option>Mustard</option>
      <option>Ketchup</option>
      <option>Relish</option>
    </select>
      
    </div>
    <div class="bs-docs-example">
    <select class="selectpicker" multiple="" style="display: none;">
    <option>Mustard</option>
    <option>Ketchup</option>
    <option>Relish</option>
    </select>
    </div>
    <select class="selectpicker" data-show-subtext="true" style="display: none;">
        <option data-subtext="French's">Mustard</option>
        <option data-subtext="Heinz">Ketchup</option>
        <option data-subtext="Sweet">Relish</option>
        <option data-subtext="Miracle Whip">Mayonnaise</option>
        <option data-divider="true"></option>
        <option data-subtext="Honey">Barbecue Sauce</option>
        <option data-subtext="Ranch">Salad Dressing</option>
        <option data-subtext="Sweet & Spicy">Tabasco</option>
        <option data-subtext="Chunky">Salsa</option>
    </select>
    <select class="selectpicker" data-header="Select a condiment" style="display: none;">
        <option data-subtext="French's">Mustard</option>
        <option data-subtext="Heinz">Ketchup</option>
        <option data-subtext="Sweet">Relish</option>
        <option data-subtext="Miracle Whip">Mayonnaise</option>
        <option data-divider="true"></option>
        <option data-subtext="Honey">Barbecue Sauce</option>
        <option data-subtext="Ranch">Salad Dressing</option>
        <option data-subtext="Sweet & Spicy">Tabasco</option>
        <option data-subtext="Chunky">Salsa</option>
    </select>
    <select class="selectpicker" data-size="5" style="display: none;">
      <option>Mustard</option>
      <option>Ketchup</option>
      <option>Relish</option>
      <option>Mayonnaise</option>
      <option>Barbecue Sauce</option>
      <option>Salad Dressing</option>
      <option>Tabasco</option>
      <option>Salsa</option>
    </select>
    <select class="selectpicker">
    <optgroup label="Picnic" disabled>
      <option>Mustard</option>
      <option>Ketchup</option>
      <option>Relish</option>
    </optgroup>
    <optgroup label="Camping">
      <option>Tent</option>
      <option>Flashlight</option>
      <option>Toilet Paper</option>
    </optgroup>
    </select>
    <select class="selectpicker">
    <option>Mustard</option>
    <option class="special">Ketchup</option>
    <option>Relish</option>
    </select>
    <select class="selectpicker" data-style="btn-primary" style="display: none;">
      <option data-icon="glyphicon glyphicon-music">Mustard</option>
      <option data-icon="glyphicon glyphicon-star">Ketchup</option>
      <option data-icon="glyphicon glyphicon-heart">Relish</option>
    </select>
      <select class="selectpicker" data-style="btn-primary" data-width="auto" style="display: none;">
      <option data-icon="glyphicon glyphicon-music">Mustard</option>
      <option data-icon="glyphicon glyphicon-star">Ketchup</option>
      <option data-icon="glyphicon glyphicon-heart">Relish</option>
    </select><br>
 
    </div>
    </div>	 
   	
   		 
   
</div>



<%@ include file="../jspf/footer.jspf"%> --%>