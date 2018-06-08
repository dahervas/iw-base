<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<%@ include file="../jspf/header.jspf"%>

<link href="/static/css/carousel.css" rel = "stylesheet">
    
 
<div class="container">
	
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>			
		</ol>
		
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="first-slide" alt="First slide" src="/static/img/losiento.jpg" style="width:100%;">
			</div>
			<div class="carousel-item">
				<img class="second-slide" alt="Second slide" src="/static/img/losiento.jpg" style="width:100%;">
			</div>
			<div class="carousel-item">
				<img class="third-slide" alt="Third slide" src="/static/img/losiento.jpg" style="width:100%;">
			</div>
		</div>
		
		<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
			<span class="sr-only">Previous</span>
		</a>
		
		<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
			<span class="carousel-control-next-icon"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	
</div>

	
<%@ include file="../jspf/footer.jspf"%>
