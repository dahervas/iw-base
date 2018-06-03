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
			<div class="item active">
				<img alt="" src="/static/img/losiento.jpg" style="width:100%;">
			</div>
			<div class="item">
				<img alt="" src="/static/img/losiento.jpg" style="width:100%;">
			</div>
			<div class="item">
				<img alt="" src="/static/img/losiento.jpg" style="width:100%;">
			</div>
		</div>
		
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Previous</span>
		</a>
		
		<a class="right carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-right"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	
</div>

	
<%@ include file="../jspf/footer.jspf"%>
