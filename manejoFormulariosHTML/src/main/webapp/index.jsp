<!doctype html>
<html lang="en" data-bs-theme="dark"> <!-- con data-bs-theme="dark" volvemos nuestro html en modo oscuro -->
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio de formulario - Servlet</title>
    <!-- Bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
	    rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
	    crossorigin="anonymous">
  </head>
  <body>
      
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h3>Formulario Registro de Datos</h3>
					</div>
					<div class="card-body">
						<form name="form1" action="/manejoFormulariosHTML/Servlet" method="post">
							<input type="hidden" name="oculto" value="nuevo valor oculto"/>
							<!-- Usuario -->
							<div class="mb-3">
								<label for="usuario" class="form-label" >Usuario: (*)</label>
								<input type="text" class="form-control" name="usuario" id="usuario"
								placeholder="Escribir usuario" required/>	
							</div>
							<!-- Password -->
							<div class="mb-3">
								<label for="password" class="form-label">Password: (*)</label>
								<input type="password" class="form-control" name="password"
								id="password" required/>
							</div>
							<!-- Tecnolog�as de Internet -->
							<div class="mb-3">
								<label class="form-label">Tecnolog�as de Internet:</label><br>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
										name="tecnologia" id="java" value="Java">
									<label class="form-check-label" for="java">Java</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
									name="tecnologia" id="python" value="Python">
									<label class="form-check-label" for="python">Python</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox"
									name="tecnologia" id="net" value=".Net">
									<label class="form-check-label" for="net">.Net</label>
								</div>
							</div>
							<!-- G�nero -->
							<div class="mb-3">
								<label class="form-label">G�nero:</label><br>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="genero" id="masculino" value="masculino">
									<label class="form-check-label" for="masculino">Masculino</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="genero" id="femenino" value="femenino">
									<label class="form-check-label" for="femenino">Femenino</label>
								</div>
							</div>
							<!-- Ocupaci�n -->
							<div class="mb-3">
								<label for="ocupacion" class="form-label">Ocupaci�n:</label>
								<select name="ocupacion" id="ocupacion" class="form-select">
									<option value="Ingenier@">Ingenier@</option>
									<option value="Contador@">Contador@</option>
									<option value="Abogad@">Abodag@</option>
									<option value="Otro">Otro</option>
								</select>
							</div>
							<!-- Comentarios -->
							<div class="mb-3">
								<label for="comentarios" class="form-label">Comentarios:</label>
								<textarea class="form-control" name="comentarios" id="comentarios" rows="3"></textarea>
							</div>
							<!-- Bot�n Enviar -->
							<div class="mb-3 text-center">
								<button type="submit" class="btn btn-primary">Enviar</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
	    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
	    crossorigin="anonymous">
    </script>
  </body>
</html>