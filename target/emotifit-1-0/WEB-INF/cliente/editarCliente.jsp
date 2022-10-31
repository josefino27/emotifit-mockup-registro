<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>INICIO</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <script src="http://kit.fontawesome.com/f90d3bf50d.js" crossorigin="anonymous"></script>
    </head>
    <body class="container" >

        <jsp:include page="/WEB-INF/comunes/cabecero.jsp"/>

        <form action="ServletControlador?accion=modificar&idUsuario=${cliente.idUsuario}" method="post" class="was-validated">

            <section id="details">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Editar cliente</h4>
                                </div>
                                <div class="modal-body">
                                    <main class="registrodesign">
                                        <div class="login-data">
                                            <h1 id="titulo">Formulario de registro</h1>
                                            <div id="contenedor" ></div> 
                                            <div class = "form-group mb-3">
                                                <input type="text" class="form-control" placeholder="Nombre Completo" 
                                                       name="nombre" id="nombre" required value="${cliente.nombre}">
                                            </div>
                                            <div class = "form-group mb-3">
                                                <input type="email" class="form-control" placeholder="Correo electronico" 
                                                       name="email" id="email" required value="${cliente.correo}"/>
                                            </div>
                                            <div class="input-group mb-3">
                                                <input type="password" class="form-control" placeholder="Contraseña" 
                                                       name="password" id="password" required value="${cliente.password}"/>
                                            </div>

                                            <div class="input-group mb-3">
                                                <input type="number" class="form-control" placeholder="Altura en Centimetro" 
                                                       name="altura" id="altura"  required value="${cliente.altura}"/>
                                                <span class="input-group-text" id="basic-addon1">CM</span>
                                            </div>

                                            <div class="input-group mb-3">
                                                <input type="number" class="form-control" placeholder="Peso en Kilogramos" 
                                                       name="peso" id="peso"  required value="${cliente.peso}"/>
                                                <span class="input-group-text" id="basic-addon2">KG</span>
                                            </div>

                                            <div class="input-group mb-3">
                                                <input type="number" class="form-control" placeholder="Edad"
                                                       name="edad" id="edad"  required value="${cliente.edad}"/>
                                            </div>
                                            <div class="select-group mb-3">
                                                <label class="form-label">Genero: </label>
                                                <div class="form-check">
                                                    <input class="form-check-input" id="objetivo" name="genero" type="radio" value="Hombre" required checked />
                                                    <span class="form-check-label">Hombre</span>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" id="objetivo" name="genero" type="radio" value="Mujer" required />
                                                    <span class="form-check-label">Mujer</span>
                                                </div>
                                            </div>
                                            <label class="form-label">Objetivo:</label>
                                            <div class="form-check">
                                                <input class="form-check-input" id="objetivo" name="objetivo" type="radio" value="Subir de peso" required checked/>
                                                <span class="form-check-label">Subir de peso</span>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" id="objetivo" name="objetivo" type="radio" value="bajar de peso" required />
                                                <span class="form-check-label">Bajar de peso</span>
                                            </div>
                                            <label class="form-label">  Limitaciones:</label>
                                            <div class="form-check">
                                                <label class="input-radio">
                                                    <input name="limitacion" type="checkbox" value="brazo Izquierdo" /> brazo Izquierdo
                                                </label>
                                                <label class="input-radio">
                                                    <INPUT name="limitacion" type="checkbox" value="brazo derecho" />   brazo derecho
                                                </label>
                                                <label class="input-radio">
                                                    <INPUT name="limitacion" type="checkbox" value="pierna Izquierda" />    pierna Izquierda
                                                </label>
                                                <label class="input-radio">
                                                    <INPUT name="limitacion" type="checkbox" value="pierna derecha" />  pierna derecha
                                                </label>
                                                <label class="input-radio">
                                                    <INPUT name="limitacion" type="checkbox" value="torso" />   torso
                                                </label>
                                                <label class="input-radio">
                                                    <INPUT name="limitacion" type="checkbox" value="cabeza" />  cabeza
                                                </label>
                                                <label class="input-radio">
                                                    <INPUT name="limitacion" type="checkbox" value="ninguna" checked/>   ninguna
                                                </label>
                                            </div>
                                        </div>
                                    </main>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>
            <jsp:include page="/WEB-INF/comunes/botonesNavegacionEditar.jsp"/>

        </form>

        <jsp:include page="/WEB-INF/comunes/pieDePagina.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>

    </body>
</html> 
