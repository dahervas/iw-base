<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<link href="/static/css/messages.css" rel="stylesheet">
<div class="cotenido todoAlCentro">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 col-xs-12">
					<h2 class="título_mensajes"> Mensajes Recibidos </h2>
					<table class="table table-hover font">
						<tr>
							<th> Usuario </th>
							<th> Mensaje </th>
						</tr>
						
						<c:forEach var="m" items="${receivedMessages}">
							<tr>
				                <td><a href="profile/${m.idSender.id}">${m.idSender.login}</a> </td> 
				            	<td> ${m.message} </td>
			            	</tr>
			            	
		            	</c:forEach>
		            	
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-2 col-sm-2 col-xs-2">
					<!-- Button trigger modal -->
					<button type="button" class="btn" data-toggle="modal" data-target="#myModal">Escribir Mensaje Privado</button>

					<!-- Modal -->
					<form action="sendMessage" enctype="multipart/form-data"
				method="post" class="form-horizontal">
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<h4 class="modal-title" id="myModalLabel">Nuevo Mensaje</h4>
									</div>
									<div class="modal-body">
										<div>Destinatario </div>
										<input class="form-control" type="text" name="destinatario">
										<br>
										<textarea name="mensaje" class="form-control" rows="3"></textarea>              
									</div>
									<div class="modal-footer">
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
										<input type="submit" class="btn btn-primary" value="Enviar"></input>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-sm-12 col-xs-12">
					<h2 class="título_mensajes"> Mensajes Enviados </h2>
					<table class="table table-hover font">
						<tr>
							<th> Para </th>
							<th> Mensaje </th>
						</tr>
						
		            	
		            	<c:forEach var="m" items="${sentMessage}">
							<tr>
				            	<td> <a href="profile/${m.idAddressee.id}">${m.idAddressee.login}</a></td>
				            	<td> ${m.message} </td>
		            		</tr>
			            	
		            	</c:forEach>
		            	
		            
		            	
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../jspf/footer.jspf"%>