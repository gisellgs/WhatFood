<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>inicio de sesion</title>
        <!-- esto es el responsive desing de los celulares la pantalla el zomm -->
        <!-- el user-scalable=no es que no puede hacer zomm -->
        <meta name="viewport" content="width-device-width, initial-scale=1.0, user-scalable=no">

        <link rel="stylesheet" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="views/assets/css/main.css">
    </head>
<div class="modules session">
    <div class="background-session">
        <div class="security">
            <header>
                <div class="h1food">
                     <img src="views/assets/image/logowhatfood.png">
                </div>
                <p>Inicio de sesión</p>
            </header>
            <div class="login">
                <form id="dataFrm" name="frmTipoPDC" action="views/modules/security/password.php" method="post" enctype="multipart/form-data">

                    <div class="form-group">
                        <label for="forUsuario"></label>
                        <input type="text" name="" placeholder="Correo Electrónico" value="" required>
                    </div>

                    <div class="olvidt">
                        <a href="#">Olvido su cuenta</a>
                    </div>

                    <!-- <div class="form-group"> -->
                        <button class="btnred">Siguiente</button>
                    <!-- </div> -->

                </form>
            </div>
            <div class="redes--sociales">
                <ul>
                    <li><a href="http://www.facebook.com"><i class="fa fa-facebook-official" aria-hidden="true"></i></a></li>
                    <li><a href="http://www.gmail.com"><i class="fa fa-google" aria-hidden="true"></i></a></li>
                    <li><a href="http://www.twitter.com"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
