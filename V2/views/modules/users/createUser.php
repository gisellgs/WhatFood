<?php
    // if(!isset($_SESSION)){
    if(!isset($_SESSION["user"])){
        // echo "No ha iniciado sesion";
    }else{
      // print_r($_SESSION);
      // echo $_SESSION["user"]["name"].' '.$_SESSION["user"]["lastn"];
    }
 ?>


<!-- <div class="modules internal-page row background-registry" id="pg-registro"> -->
<div class="modules internal-page row background-registry" id="pg-registro">

  <div class="col m4 offset-m4 blue-grey lighten-5 wrap--frm">
    <header>
      <h1>REGISTRAR USUARIO</h1>
      <!-- Miga de pan - Ruta a seguir (menu de donde estoy parado) -->
      <?php if(isset($_SESSION["user"])){?>
        <div class="breadcrums">
            <ul>
                <li><a href="inicio"> <i class="fa fa-home"> </i>Dashboard </a></li>
                <li><a href="gestion-users"> Usuario </a></li>
                <li>Nuevo Usuario</li>
            </ul>
        </div>
      <?php }else{?>
        <div class="breadcrums">
            <ul>
                <!-- <li><a href="inicio"> <i class="fa fa-home"> </i>Dashboard </a></li> -->
                <!-- <li><a href="gestion-users"> Usuario </a></li> -->
                <li><a href="inicio"> Iniciar Sesion </a></li>
                <li>Nuevo Usuario</li>
            </ul>
        </div>

      <?php } ?>
    </header>
    <form name="frmNewUser" action="guardar-visitante" id="frmLoginVisitor" onsubmit="return frmLoginVisitor()" method="post" data-parsley-validate>
        <div class="input-field col s12 form-group">
            <label for="txtname"> <i class="fa fa-user require" aria-hidden="true" ></i> Nombre</label>
            <input  id="txtname" type="text" class="validate" name="data[]" required="required" value="">
        </div>

        <div class="input-field col s12">
          <label for="txtlastName"> <i class="fa fa-user require" aria-hidden="true"></i> Apellido</label>
           <input  id="txtlastName" type="text" class="validate" name="data[]" required="required" value="">
        </div>

        <div class="input-field col s12">
            <label for="txtemailNew"> <i class="fa fa-envelope require" aria-hidden="true"></i> Correo Electronico</label>
            <input  id="txtemailNew" type="email" class="validate" name="data[]" required="required" value="">
        </div>

        <div class="input-field col s12">
            <label for="txtpassNew"> <i class="fa fa-key require" aria-hidden="true"></i> Contraseña</label>
            <input  id="txtpassNew" type="password" class="validate" name="data[]" required="required" value="">
        </div>

        <div class="col s12">
            <button type="submit" class="btn cyan waves-effect waves-light" style="width:100%; margin-top:20px" id="btnLoginNew">GUARDAR USUARIO</button>
        </div>
    </form>
  </div>
</div>
