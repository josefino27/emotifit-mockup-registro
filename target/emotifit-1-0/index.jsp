<!DOCTYPE html>
<html>

    <head>
        <title>Emotifit-login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css " href="recursos/estilos.css" />
        <link rel="stylesheet" type="text/css " href="recursos/normalize.css" />
    </head>

    <body>
        <main class="logindesign">
            <div class="waves">  
                <img src="recursos/imagenes/enojado.png">
            </div>
            <div class="login">
                <div class="login-data">
                    <img src="recursos/imagenes/emotifit1.png">
                    <h1>inicio de sesion </h1>            
                    <form method="POST" action="" class="login-form" >
                        <div class="input-group">
                            <label class="input-field">
                                <input type="email" name="email" id="email" value="" required />
                                <span class="input-label">Correo</span>
                                <i class="far fa-envelope"></i>
                            </label>
                        </div>
                        <div class="input-group">
                            <label class="input-field">
                                <input type="password" name="password" id="password" required />
                                <span class="input-label" >Contraseña</span>
                                <i class="fas fa-lock"></i>
                            </label>
                        </div>
                        <a href="registro.jsp">Crear cuenta</a>
                        <button type="submit" name="ingresar"  class="btn-login">ingresar</button>
                        
                    </form>
                </div>
            </div>
        </main>
    </body>
</html>