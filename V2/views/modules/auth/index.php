<script>
    if ( <?php echo $_GET['p'] <> '' ?>){
        alert("<?php echo $_GET['p'] ?>");
    }
</script>



<!-- <!DOCTYPE html>
<html> -->
    <head>
        <!-- <meta charset="utf-8"> -->
        <!-- <title>inicio de sesion</title> -->
        <!-- esto es el responsive desing de los celulares la pantalla el zomm -->
        <!-- el user-scalable=no es que no puede hacer zomm -->
        <!-- <meta name="viewport" content="width-device-width, initial-scale=1.0, user-scalable=no"> -->

        <!-- <link rel="stylesheet" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"> -->
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
        <link rel="stylesheet" href="views/assets/css/main.css">
    </head>
<?php
    // require_once "views/include/scope.header.php";
    // require_once "views/include/scope.footer.php";
 ?>

<div class="modules session" id="pg-inicio">
    <div class="background-session">
        <div class="security">
            <header>
                <div class="h1food">
                    <img src="views/assets/image/logowhatfood.png">
                </div>
                <p>Inicio de sesión</p>
                <div class="registro">
                    <!-- <a href="nuev-user" class="regis">Registrar Usuario</a> -->
                    <a href="crear-user" class="regis">Registrar Usuario</a>
                </div>
            </header>

            <div class="login">
                <form id="frmLogin" method="post" data-parsley-validate>
                    <div class="form-group">
                        <label for="txtemail"></label>
                        <input  id="txtemail" type="email" placeholder="Correo Electrónico" class="validate" name="data[]" required="required">
                    </div>

                    <div class="form-group">
                        <label for="txtpass"></label>
                        <input  id="txtpass" type="password"  placeholder="Contraseña" class="validate" name="data[]" required="required">
                    </div>
                    <!-- <button type="submit" class="btnred" id="btnLogin">INICIAR SESION</button> -->
                    <button type="submit" class="" id="btnLogin">INICIAR SESION</button>
                </form>
            </div>

            <div class="redes--sociales">
                <ul>
                    <!-- <li><a href="http://www.facebook.com"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li>
                    <li><a href="http://www.gmail.com"><i class="fa fa-google" aria-hidden="true"></i></a></li>
                    <li><a href="http://www.twitter.com"><i class="fa fa-twitter" aria-hidden="true"></i></a></li> -->
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- </body> -->
