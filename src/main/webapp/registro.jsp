<!DOCTYPE html>

<html>

<head>
  <title>well get up</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;800&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/fb32a0357d.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="recursos/estilos.css">
  <link rel="stylesheet" type="text/css" href="recursos/normalize.css">

  <script>
    function cargar() {
      var altura = document.getElementById("altura").value;
      var peso = document.getElementById("peso").value;
      var amt= altura/100;
      var imc= (peso)/(amt*amt);
      var mimc ="";
        document.getElementById("contenedor").innerHTML = imc;
     
     if(imc>=25){
     var mimc ="sobrepeso ";
     document.getElementById("contenedor").innerHTML="estas en tu peso ideal ";
     }
     if(imc>18.5 && amt2<=24.9){
     document.getElementById("contenedor").innerHTML="estas en tu peso ideal ";
     }
     if(imc<=18.5){
     document.getElementById("contenedor").innerHTML="bajo de peso ";
     }
    }

    function cambiarTitulo() {
      var titulo = document.getElementById("titulo").value;
      var crearnombre = document.getElementById("nombre").value;
      var crearpass = document.getElementById("password").value;
      var edad = document.getElementById("edad").value;
      var altura = document.getElementById("altura").value;
      var peso = document.getElementById("peso").value;
      var seleccionado= false;
      var objetivo = formRegistro.objetivo;

       
      if
        (crearnombre == "") {
        document.getElementById("titulo").innerHTML = "create un nombre, porfavor.";
        return false;
    }
      if
        (crearpass == "") {
        document.getElementById("titulo").innerHTML = "create un contraseña, porfavor.";
        return false;
     }      if
        (altura == "") {
        document.getElementById("titulo").innerHTML = "ingresa tu altura, porfavor.";
        return false;
     }
      if
        (peso == "") {
        document.getElementById("titulo").innerHTML = "ingresa tu peso, porfavor.";
        
             return false;
     }

      if
        (edad == "") {
        document.getElementById("titulo").innerHTML = "ingresa tu edad, porfavor.";
        return false;
     }


    var genero = formRegistro.genero;
    if(genero.value == ""){
      document.getElementById("titulo").innerHTML = "selecciona tu genero, porfavor.";
        return false;
    }
    for(var i = 0;i<objetivo.length;i++){
        if(objetivo[i].checked){
          seleccionado=true;      
               }
     }
     if(!seleccionado){
      document.getElementById("titulo").innerHTML = "selecciona tu objetivo, porfavor.";
    return false;
    }

    var limitacion=formRegistro.limitacion;
    var seleccionado=false;
    for(var i=0;i<limitacion.length;i++){
      if(limitacion[i].checked){
        seleccionado=true;
      }
    }
      if(!seleccionado){
        document.getElementById("titulo").innerHTML = "tienes limitacion ?";
        return false;
      }else{
       alert("registro satisfactorio");
       return true;
     }
  }

  </script>
</head>

<body>
  <main class="registrodesign">
    <div class="login-data">
      <h1 id="titulo">Formulario de registro</h1>
      <form action="/emotifit/registroJsp.jsp" id="formRegistro" name="formRegistro" class="login-form"  method="post"  >
          <div id="contenedor" ></div> 
          <div class = "input-group">
          <label class="input-field">
            <input type="text" name="nombre" id="nombre" required />
            <span class="input-label"> Nombre Usuario</span>
          </label>
        </div>
          <div class = "input-group">
          <label class="input-field">
            <input type="email" name="email" id="email" required />
            <span class="input-label"> Correo Electronico </span>
          </label>
        </div>
        <div class="input-group">
          <label class="input-field">
            <input type="password" name="password" id="password" required />
            <span class="input-label"> Contraseña</span>
          </label>
        </div>
        
        <div class="input-group">
          <label class="input-field">
            <input type="number" name="altura" id="altura"  required />
            <span class="input-label">Altura</span>
          </label>
        </div>
          
        <div class="input-group">
          <label class="input-field">
            <input type="number" name="peso" id="peso"  required />
            <span class="input-label">Peso</span>
          </label>
        </div>
        
        <div class="input-group">
          <label class="input-field">
            <input type="number" name="edad" id="edad"  required />
            <span class="input-label"> Edad</span>
          </label>
        </div>
        <div class="radio-group">
          <label >
            <span class="radio-label">Genero: </span>
            <select class="input-radio" name="genero" id="genero">
              <option value="">seleccionar</option>
              <option value="Hombre">Hombre</option>
              <option value="Mujer">Mujer</option>
              <option value="Otro">Otro</option>
            </select>
          </label>
        </div>
        <div class="radio-group"><span class="radio-label">Objetivo: </span>
          <label class="input-radio">
            <input id="objetivo" name="objetivo" type="radio" value="Subir de peso" required />
            <span>Subir de peso</span></label>
          <label class="input-radio">
            <input id="objetivo" name="objetivo" type="radio" value="bajar de peso" required />
            <span>Bajar de peso</span></label>
        </div>
        <div class="radio-group">
          <span class="radio-label">Limitaciones: </span>
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
            <INPUT name="limitacion" type="checkbox" value="niguna" />ninguna
          </label>
        </div>

          <input type="submit" value="Registrar"  onclick="cambiarTitulo()" />

      </form>
    </div>
  </main>
</body>

</html>