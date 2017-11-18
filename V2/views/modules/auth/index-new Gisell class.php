<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>inicio de sesion</title>
        <!-- esto es el responsive desing de los celulares la pantalla el zomm -->
        <!-- el user-scalable=no es que no puede hacer zomm -->
        <meta name="viewport" content="width-device-width, initial-scale=1.0, user-scalable=no">

        <link rel="stylesheet" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="views/assets/css/main.css">
    </head>
<div class="modules session" id="pg-inicio">
    <div class="background-session">
        <div class="security">
            <header>
                <div class="h1food">
                    <img src="views/assets/image/logowhatfood.png">
                </div>
                <!-- <p>Inicio de sesión</p> -->
            </header>

            <div class="login">
                <form id="frmLogin" method="post" data-parsley-validate>

                    <div class="form-group input-field">
                        <input  id="txtemail email" type="email" class="validate" name="data[]" required="required">
                        <label for="txtemail email">Correo Electrónico</label>
                    </div>

                    <div class="form-group input-field">
                        <input  id="txtpass password" type="password" class="validate" name="data[]" required="required">
                        <label for="txtpass password">Contraseña</label>
                    </div>

                    <!-- <button type="submit" class="btnred" id="btnLogin">INICIAR SESION</button> -->
                    <button type="submit" class="btnred" id="btnLogin">INICIAR SESION</button>

                    <div class="registro">
                      <a href="crear-auth-visitor" class="regis">Registrar Usuario</a>
                    </div>

                    <a class="entra">Inicia sesión con:</a>
                </form>
            </div>
            <div class="redes--sociales">
                <ul>
                    <li><a href="http://www.facebook.com" class="app"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li>
                    <li><a href="http://www.gmail.com" class="app"><i class="fa fa-google" aria-hidden="true"></i></a></li>
                    <li><a href="http://www.twitter.com" class="app"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
</body>
