<script>
    if ( <?php echo $_GET['p'] <> '' ?>){
        alert("<?php echo $_GET['p'] ?>");
    }
</script>

<head>
    <title>Inicio de sesion</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="views/assets/css/main.css">
</head>
<div class="modules session" id="pg-inicio">
    <div class="background-session">
        <div class="security">
            <header>
                <div class="h1food" >
                    <center>
                        <a href="landing"><img src="views/assets/image/logowhatfood.png"/></a>
                    </center>
                </div>
            </header>

            <div class="login">
                <form id="frmLogin" method="post" data-parsley-validate>

                    <div class="form-group input-field">
                        <input  id="txtemail" type="email" class="validate email" name="data[]" required="required">
                        <label for="txtemail">Correo Electrónico</label>
                    </div>

                    <div class="form-group input-field">
                        <input  id="txtpass" type="password"  class="validate password" name="data[]" required="required">
                        <label for="txtpass">Contraseña</label>
                    </div>

                    <!-- Alexis -->
                    <!-- <div class="g-recaptcha" data-sitekey="6LeD3jkUAAAAACjwy_NsJoAQtEaiZKRJ5M_Ih9lO"></div> -->

                    <button type="submit" class="btnred" id="btnLogin">INICIAR SESION</button>

                    <div class="registro">
                        <a href="crear-user" class="regis">Registrar</a>
                    </div>

                    <!-- DESACTIVADO PARA SPRINT REVIEW 2 -->
                    <!-- <a class="entra">Inicia sesión con</a> -->
                </form>
            </div>

            <!-- DESACTIVADO PARA SPRINT REVIEW 2 -->
            <!-- <div class="redes--sociales">
                <ul>
                    <li><a href="http://www.facebook.com" class="app"> <i class="fa fa-facebook-official " aria-hidden="true"> </i> </a></li>
                    <li><a href="http://www.gmail.com"    class="app"> <i class="fa fa-google" aria-hidden="true"> </i> </a></li>
                    <li><a href="http://www.twitter.com"  class="app"> <i class="fa fa-twitter" aria-hidden="true"></i> </a></li>
                </ul>
            </div> -->
        </div>
    </div>
</div>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script> -->
