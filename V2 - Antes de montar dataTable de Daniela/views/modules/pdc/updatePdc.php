<?php
    $dataPdc = $this -> readByPdc($_GET["data"]);
    print_r($dataPdc);

?>

<div class="modules internal-page" id="cuerpoPdc">
    <header>
        <h1>Actualizar PDC</h1>
        <div class="breadcrums">
            <ul>
                <li><a href="dashboard"> <i class="fa fa-home"> </i>Dashboard </a></li>
                <li><a href="gestion-pdc"> PDC </a></li>
                <li>Actualizar PDC</li>
            </ul>
        </div>
    </header>
    <div class="wrap--frm">
        <form id="dataFrm_pdc_new" class="dataFrm_pdc_new" name="frmPDC" action="actualizar-pdc" method="post" enctype="multipart/form-data">
            <div class="form-group input-field" id="new-nit-pdc">
                <label for="nitPdc" class="require">Nit:</label>
                <input type="text" name="data[]" id="nitPdc" required maxlength="45" value=" <?php echo $dataPdc["pdc_nit"] ?>">
            </div>

            <div class="form-group input-field" id="consulta-tpdc">

                <label for="id_tpdc" class="require"> <a href="crear-tpdc"> Tipo PDC: </a> </label>
                <select name="data[]" id="id_tpdc" required>
                    <!-- <option value="" selected="selected" disabled>Selecciona uno</option> -->
                    <?php
                        $result = $this->pdc->readAlltpdc();
                        foreach ($result as $row) {
                          if($dataPdc["tipo_pdc_codigo"] == $row["tipo_pdc_codigo"]){
                              echo "<option value=" .$row['tipo_pdc_codigo']. " selected> "
                              .$row['tipo_pdc_nombre'].
                              "</option>";
                          }else{
                              echo "<option value=".$row['tipo_pdc_codigo']."> "
                              .$row['tipo_pdc_nombre'].
                              "</option>";
                          }
                        }
                    ?>
                </select>
            </div>

            <div class="form-group input-field" id="new-name-pdc">
                <label for="nombrePdc" class="require">Nombre:</label>
                <input type="text" name="data[]" id="nombrePdc" required maxlength="90" value="<?php echo $dataPdc["pdc_nombre"]?>">
            </div>

            <div class="form-group input-field" id="new-dir-pdc">
                <label for="direccionPdc" class="require">Dirección:</label>
                <input type="text" name="data[]" id="direccionPdc" required  maxlength="45" value="<?php echo $dataPdc['pdc_direccion']?>">
            </div>

            <fieldset class="input-field">
                <legend class="require">Horario:</legend>
                <div class="form-group input-field" id="new-hori-pdc">
                    <label for="horaiPdc">Desde:</label>
                    <input type="text" name="data[]" id="horaiPdc" required value="<?php echo $dataPdc['pdc_hora_apertura']?>">
                </div>
                <div class="form-group input-field" id="new-horf-pdc">
                    <label for="horafPdc">Hasta:</label>
                    <input type="text" name="data[]" id="horafPdc" required value="<?php echo $dataPdc['pdc_hora_cierre']?>">
                </div>
            </fieldset>

            <fieldset class="input-field">
                <legend class="require">Geolocalización PDC</legend>
                <div class="form-group input-field" id="new-latitud-pdc">
                    <label for="latitudPdc">Latitud:</label>
                    <input type="text" step="any" name="data[]" id="latitudPdc" required maxlength="50" value="<?php echo $dataPdc['pdc_latitud']?>">
                </div>
                <div class="form-group input-field" id="new-longitud-pdc">
                    <label for="longitudPdc">Longitud:</label>
                    <input type="text" step="any" name="data[]" id="longitudPdc" required maxlength="50" value="<?php echo $dataPdc['pdc_longitud'] ?>">
                </div>
            </fieldset>

            <fieldset class="input-radio"> <legend class="require">Abierto o cerrado?</legend>
                <div class="form-group input-radio" id="new-estado-pdc">
                    <?php if($dataPdc['pdc_estado'] == 1) { ?>
                        <label>
                            <input class="input-radio-open" id="input-radio-open" type="radio" name="data[]" value="1" required checked required value="<?php echo $dataPdc['pdc_estado']?>">Abierto
                        </label>
                        <label>
                            <input class="input-radio"      id="input-radio-close" type="radio" name="data[]" value="2" required required value="<?php echo $dataPdc['pdc_estado']?>">Cerrado
                        <label>

                    <?php } else { ?>
                      <label>
                          <input class="input-radio-open" id="input-radio-open" type="radio" name="data[]" value="1" required required value="<?php echo $dataPdc['pdc_estado']?>">Abierto
                      </label>
                      <label>
                          <input class="input-radio"      id="input-radio-close" type="radio" name="data[]" value="2" required checked required value="<?php echo $dataPdc['pdc_estado']?>">Cerrado
                      <label>

                      <?php }?>

                </div>
            </fieldset>

            <div class="form-group input-field" id="new-tel-pdc">
                <label for="telefonoPdc" class="optional">Teléfono:</label>
                <input type="number" name="data[]" id="telefonoPdc"  maxlength="11" value="<?php echo $dataPdc['pdc_telefono']?>" >
            </div>
            <div class="form-group input-field" id="new-cel-pdc">
                <label for="celularPdc" class="optional">Celular:</label>
                <input type="number" name="data[]" id="celularPdc" maxlength="20" value="<?php echo $dataPdc['pdc_celular'] ?>">
            </div>

            <div class="form-group" id="">
                <button class="btn save">Guardar Complejo</button>
            </div>
        </form>
    </div>
</div>

<!-- <script>
		var cuerpo=document.getElementById("cuerpopdc");
		cuerpo.style.background="rgb(220, 222, 249)";
</script> -->
