<?php
    $dataTpdc = $this -> readByTpdc($_GET["data"]);
    // var_dump($dataTpdc);
 ?>
<div class="modules internal-page">
    <header>
        <h1>Actualizar Tipos PDC</h1>
        <div class="breadcrums">
          <ul>
              <li><a href="dashboard"> <i class="fa fa-home"> </i>Dashboard </a></li>
              <li><a href="gestion-tpdc"> Tipos PDC </a></li>
              <li>Actualizar Tipo PDC</li>
          </ul>
        </div>
    </header>
    <div class="wrap--frm">
          <form name="frmTipoPdc" action="actualizando-tipoPdc" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="tipoPdcCodigo" class="require">Código</label>
                <input type="text" readonly name="data[]" value="<?php echo $_GET["data"] ?>">
            </div>

            <div class="form-group">
                <label for="tipoPdcNombre" class="require">Nombre:</label>
                <input type="text" name="data[]" id="tipoPdcNombre" placeholder="Nombre del tipo de Punto de Comida" required value="<?php echo $dataTpdc["tipoPdcNombre"];?>">
            </div>

            <div class="form-group">
                <label for="tipoPdcDescripcion" class="optional">Descripcion:</label>
                <textarea name="data[]" id="tipoPdcDescripcion" placeholder="Describa que Tipos de Puntos de Comida pertenecen a ésta categoría." ><?php echo $dataTpdc["tipoPdcDescripcion"];?></textarea>
                <!-- -- -->
                <!-- <label for="descGen" class="require">Descripcion del Genero:</label>
                <textarea name="data[]" id="descGen"><?php echo $dataGender["descripcion"];?></textarea> -->
                <!-- -- -->
            </div>



            <div class="form-group">
                <button class="btn save">Actualizar Tipo PDC</button>
            </div>


        </form>
    </div>
</div>
