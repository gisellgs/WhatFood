<?php
    $dataComplejo = $this -> readByComplejo($_GET["data"]);
 ?>
<div class="modules internal-page">
    <header>
        <h1>Actualizar Complejo</h1>
        <div class="breadcrums">
            <ul>
                <li><a href="dashboard"> <i class="fa fa-home"> </i>Dashboard </a></li>
                <li><a href="gestion-complejos"> Complejos </a></li>
                <li>Actualizar complejo</li>
            </ul>
        </div>
    </header>
    <!-- Emboltura para formulario - Todos los frm deben tenerlo pa que cojan el mismo estilo -->
    <div class="wrap--frm">
        <form id="dataFrm" name="frmComplejo" action="actualizando-complejo" method="post" enctype="multipart/form-data">

            <div class="form-group">
                <label for="ComplejoId"></label>
                <input type="hidden" readonly name="data[]" value="<?php echo $_GET["data"] ?>">
            </div>

            <div class="form-group">
                <label for="complejoReg" class="require">Regional: </label>

                <select name="data[]" id="complejoReg">
                    <?php
                        $result = $this->complejo->readAllRegional();
                        foreach ($result as $row) {
                          if($dataComplejo["regiCodigo"]==$row['regiCodigo']){
                            echo "<option value=".$row['regiCodigo']." selected> "
                            .$row['regiNombre'].
                            "</option>";
                          }else{
                            echo "<option value=".$row['regiCodigo']."> "
                            .$row['regiNombre'].
                            "</option>";
                          }
                        }
                    ?>
                    <?php
                        // var_dump($result);
                     ?>
                </select>
            </div>

            <div class="form-group">
                <label for="nombreComp" class="require">Nombre: </label>
                <input type="text" name="data[]" value="<?php echo $dataComplejo["compNombre"] ?>">
            </div>
            <div class="form-group">
                <label for="nombreDir" class="optional">Dirección: </label>
                <input type="text" name="data[]" value="<?php echo $dataComplejo["compDireccion"] ?>">
            </div>

            <div class="form-group">
                <button class="btn save">Guardar cambios del Complejo</button>
            </div>

        </form>
    </div>
</div>
