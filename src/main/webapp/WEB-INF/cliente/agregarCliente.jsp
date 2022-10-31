<!-- Modal -->
<div class="modal fade" id="exampleModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Emotifit-Registro</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <main class="registrodesign">
                    <div class="login-data">
                        <h1 id="titulo">Formulario de registro</h1>
                        <form action="ServletControlador?accion=insertar" class="was-validated"  method="post"  >
                            <div id="contenedor" ></div> 
                            <div class = "form-group mb-3">
                             <input type="text" class="form-control" placeholder="Nombre Completo" 
                              name="nombre" id="nombre" required>
                            </div>
                            <div class = "form-group mb-3">
                                <input type="email" class="form-control" placeholder="Correo electronico" 
                                     name="email" id="email" required />
                            </div>
                            <div class="input-group mb-3">
                                    <input type="password" class="form-control" placeholder="Contraseña" 
                                           name="password" id="password" required />
                            </div>

                            <div class="input-group mb-3">
                                    <input type="number" class="form-control" placeholder="Altura en Centimetro" 
                                           name="altura" id="altura"  required />
                                      <span class="input-group-text" id="basic-addon1">CM</span>
                            </div>

                            <div class="input-group mb-3">
                                    <input type="number" class="form-control" placeholder="Peso en Kilogramos" 
                                           name="peso" id="peso"  required />
                                      <span class="input-group-text" id="basic-addon2">KG</span>
                            </div>

                            <div class="input-group mb-3">
                                <input type="number" class="form-control" placeholder="Edad"
                                           name="edad" id="edad"  required />
                            </div>
                            <div class="select-group mb-3">
                            <label class="form-label">Genero: </label>
                            <div class="form-check">
                                    <input class="form-check-input" id="objetivo" name="genero" type="radio" value="Hombre" required />
                                    <span class="form-check-label">Hombre</span>
                            </div>
                            <div class="form-check">
                                    <input class="form-check-input" id="objetivo" name="genero" type="radio" value="Mujer" required />
                                    <span class="form-check-label">Mujer</span>
                            </div>

                            </div>
                            <label class="form-label">Objetivo:</label>
                            <div class="form-check">
                                    <input class="form-check-input" id="objetivo" name="objetivo" type="radio" value="Subir de peso" required />
                                    <span class="form-check-label">Subir de peso</span>
                            </div>
                            <div class="form-check">
                                    <input class="form-check-input" id="objetivo" name="objetivo" type="radio" value="bajar de peso" required />
                                    <span class="form-check-label">Bajar de peso</span>
                            </div>
                            <label class="form-label">  Limitaciones:</label>
                            <div class="form-check">
                                <label class="input-radio">
                                    <input name="limitacion" type="checkbox" value="brazo Izquierdo" />brazo Izquierdo
                                </label>
                                <label class="input-radio">
                                    <INPUT name="limitacion" type="checkbox" value="brazo derecho" />brazo derecho
                                </label>
                                <label class="input-radio">
                                    <INPUT name="limitacion" type="checkbox" value="pierna Izquierda" />pierna Izquierda
                                </label>
                                <label class="input-radio">
                                    <INPUT name="limitacion" type="checkbox" value="pierna derecha" />pierna derecha
                                </label>
                                <label class="input-radio">
                                    <INPUT name="limitacion" type="checkbox" value="torso" />torso
                                </label>
                                <label class="input-radio">
                                    <INPUT name="limitacion" type="checkbox" value="cabeza" />cabeza
                                </label>
                                <label class="input-radio">
                                    <INPUT name="limitacion" type="checkbox" value="niguna" checked/>ninguna
                                </label>
                            </div>
                            <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Registrar</button>
                    </div>
                        </form>
                        </div>
                      </main>
                    </div>
                    
            </div>
        </div>
    </div>