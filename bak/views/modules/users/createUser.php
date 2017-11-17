<?php
    // if(!isset($_SESSION)){
    if(!isset($_SESSION["user"])){
        echo "No ha iniciado sesion";

    }else{
      // print_r($_SESSION);
      // echo $_SESSION["user"]["name"].' '.$_SESSION["user"]["lastn"];
    }
 ?>


<div class="row" id="pg-registro">
  <h3 class="center-align">REGISTRAR USUARIO</h3>
    <div class="col m4 offset-m4 blue-grey lighten-5">
        <div class="row">
            <!-- <form action="guardar-visitante" id="frmLogin" method="post" data-parsley-validate> -->
            <form action="guardar-visitante" id="frmLoginVisitor" method="post" data-parsley-validate>
                <div class="input-field col s12">
                    <label for="txtname"> <i class="fa fa-user" aria-hidden="true" ></i> Nombre</label>
                    <input  id="txtname" type="text" class="validate" name="data[]" required="required" value="Fredy">
                </div>

                <div class="input-field col s12">
                  <label for="txtlastName"> <i class="fa fa-user" aria-hidden="true"></i> Apellido</label>
                   <input  id="txtlastName" type="text" class="validate" name="data[]" required="required" value="Luján">
                </div>

                <div class="input-field col s12">
                    <label for="txtemail"> <i class="fa fa-envelope" aria-hidden="true"></i> Correo Electronico</label>
                    <input  id="txtemail" type="email" class="validate" name="data[]" required="required" value="falujan8@misena.edu.co">
                </div>

                <div class="input-field col s12">
                    <label for="txtpass"> <i class="fa fa-key" aria-hidden="true"></i> Contraseña</label>
                    <input  id="txtpass" type="password" class="validate" name="data[]" required="required" value="123">
                </div>

                <div class="col s12">
                    <button type="submit" class="btn cyan waves-effect waves-light" style="width:100%; margin-top:20px" id="btnRegistro">GUARDAR USUARIO</button>
                </div>
            </form>
        </div>
    </div>
</div>
