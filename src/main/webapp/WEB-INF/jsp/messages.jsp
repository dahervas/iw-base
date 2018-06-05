<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>


<div class="cotenido">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 col-xs-12">
					<h2 class="título_mensajes"> Mensajes Recibidos </h2>
					<table class="table table-hover font">
						<tr>
							<th> Usuario </th>
							<th> Asunto </th>
							<th> Mensaje </th>
							<th> Fecha </th>
						</tr>
						<?php
						
						$db = @mysqli_connect('localhost','root','','bd_melomanos');
						if ($db) {

				            /*
				            echo 'Conexión realizada correctamente.<br />';
				            echo 'Información sobre el servidor: ',
				            mysqli_get_host_info($db),'<br />';
				            echo 'Versión del servidor: ',
				            mysqli_get_server_info($db),'<br />'; */

				            $user = $_SESSION["user_name"];

				            $sql="SELECT Remitente,Asunto,Contenido,ID_MS,Fecha FROM mensaje WHERE Destinatario = '$user' ORDER BY ID_MS DESC  ";
				            $consulta = mysqli_query($db, $sql);
				            
				            while ( $msn = mysqli_fetch_assoc($consulta) ) {
				            	echo '<tr class="warning">';
				            	echo "<td>" .$msn['Remitente'] ."</td>";
				            	echo "<td>" .$msn['Asunto'] . "</td>";
				            	echo "<td>" .$msn['Contenido'] ."</td>";
				            	echo "<td>" .$msn['Fecha'] ."</td>";
				            	echo '</tr>';
				            	
							}

						}
						else {	
							printf(
								'Error %d: %s.<br />',
								mysqli_connect_errno(),mysqli_connect_error());
						}

  						@mysqli_close($db);	

						?>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-2 col-sm-2 col-xs-2">
					<!-- Button trigger modal -->
					<button type="button" class="btn" data-toggle="modal" data-target="#myModal">Escribir Mensaje Privado</button>

					<!-- Modal -->
					<form action="mensajes_privados.php" method="post">
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
										<div>Asunto</div>
										<input class="form-control" type="text" name="asunto">
										<br>
										<textarea name="mensaje" class="form-control" rows="3"></textarea>              
									</div>
									<div class="modal-footer">
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
							<th> Usuario </th>
							<th> Asunto </th>
							<th> Mensaje </th>
							<th> Fecha </th>
						</tr>
						<?php
						
						$db = @mysqli_connect('localhost','root','','bd_melomanos');
						if ($db) {

				            /*
				            echo 'Conexión realizada correctamente.<br />';
				            echo 'Información sobre el servidor: ',
				            mysqli_get_host_info($db),'<br />';
				            echo 'Versión del servidor: ',
				            mysqli_get_server_info($db),'<br />'; */

				            $user = $_SESSION["user_name"];

				            $sql="SELECT Destinatario,Asunto,Contenido,ID_MS,Fecha FROM mensaje WHERE Remitente = '$user'and Destinatario != 'NULL' ORDER BY ID_MS DESC ";
				            $consulta = mysqli_query($db, $sql);
				            
				            while ( $msn = mysqli_fetch_assoc($consulta) ) {
				            	
				            	echo '<tr class="warning">';
				            	echo "<td>" .$msn['Destinatario'] ."</td>";
				            	echo "<td>" .$msn['Asunto'] . "</td>";
				            	echo "<td>" .$msn['Contenido'] ."</td>";
				            	echo "<td>" .$msn['Fecha'] ."</td>";
				            	echo '</tr>';
				            	
							}

						}
						else {	
							printf(
								'Error %d: %s.<br />',
								mysqli_connect_errno(),mysqli_connect_error());
						}

  						@mysqli_close($db);	

						?>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../jspf/footer.jspf"%>