<?php
    $dataPdc = $this -> readByPdc($_GET["data"]);
 ?>
<div class="modules internal-page">
    <header>
        <h1>Detalle PDC</h1>
        <!-- Miga de pan - Ruta a seguir (menu de donde estoy parado) -->
        <div class="breadcrums">
            <ul>
                <li><a href="dashboard"> <i class="fa fa-home"> </i>Dashboard </a></li>
                <li><a href="gestion-pdc"> PDC </a></li>
                <li>Detalle PDC</li>
            </ul>
        </div>
    </header>
    <div class="wrap--detail">
        <div class="wrap--content">

            <div class="item" id="new-nit-pdc">
                <label>Nit:</label>
                <span> <?php echo $dataPdc["pdc_nit"] ?> </span>
            </div>

            <div class="item" id="consulta-tpdc">
                <label> Tipo PDC: </a> </label>
                <span name="data[]" id="id_tpdc" >
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
                </span>
            </div>

            <div class="item" id="new-name-pdc">
                <label>Nombre:</label>
                <span><?php echo $dataPdc["pdc_nombre"]?></span>
            </div>

            <div class="item" id="new-dir-pdc">
                <label>Dirección:</label>
                <span> <?php echo $dataPdc['pdc_direccion']?></span>
            </div>

            <fieldset class="input-field">
                <legend>Horario:</legend>
                <div class="item" id="new-hori-pdc">
                    <label>Desde:</label>
                    <span><?php echo $dataPdc['pdc_hora_apertura']?></span>
                </div>
                <div class="item" id="new-horf-pdc">
                    <label>Hasta:</label>
                    <span>  <?php echo $dataPdc['pdc_hora_cierre']?> </span>
                </div>
            </fieldset>

            <fieldset class="input-field">
                <legend>Geolocalización PDC</legend>
                <div class="item" id="new-latitud-pdc">
                    <label>Latitud:</label>
                    <span>  <?php echo $dataPdc['pdc_latitud']?> </span>
                </div>
                <div class="item" id="new-longitud-pdc">
                    <label>Longitud:</label>
                    <span>  <?php echo $dataPdc['pdc_longitud'] ?> </span>
                </div>
            </fieldset>

            <div class="item" id="new-estado-pdc">
                <label>Estado:</label>
                <span>
                <?php if($dataPdc['pdc_estado'] == 1) { ?>
                    Abierto
                <?php } else { ?>
                     Cerrado
                <?php }?>
                </span>
            </div>

            <div class="item" id="new-tel-pdc">
                <label>Teléfono:</label>
                <span> <?php echo $dataPdc['pdc_telefono']?> </span>
            </div>
            <div class="item" id="new-cel-pdc">
                <label>Celular:</label>
                <span> <?php echo $dataPdc['pdc_celular'] ?> </span>
            </div>
        </div>
    </div>
</div>
