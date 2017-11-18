<?php
    $dataTpdc = $this -> readByTpdc($_GET["data"]);
    // var_dump($dataTpdc);
 ?>
<div class="modules internal-page">
    <header>
        <h1>Actualizar Tipos PDC</h1>
        <div class="breadcrums">
          <ul>
              <li><a href="inicio"> <i class="fa fa-home"> </i>Dashboard </a></li>
              <li><a href="gestion-tpdc"> Tipos PDC </a></li>
              <li>Actualizar Tipo PDC</li>
          </ul>
        </div>
    </header>
    <div class="wrap--frm">
          <form name="frmTipoPdc" action="actualizando-tipoPdc" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="tipoPdcCodigo"></label>
                <input type="hidden" readonly name="data[]" value="<?php echo $_GET["data"] ?>">

            </div>

            <div class="form-group">
                <label for="tipoPdcNombre" class="require">Nombre: </label>
                <input type="text" name="data[]" id="tipoPdcNombre" placeholder="Nombre del tipo de Punto de Comida" required maxlength="45" value="<?php echo $dataTpdc["tipoPdcNombre"];?>">
            </div>

            <div class="form-group">
                <label for="tipoPdcDescripcion" class="optional">Descripcion:</label>
                <textarea name="data[]" id="tipoPdcDescripcion" placeholder="Describa que Tipos de Puntos de Comida pertenecen a ésta categoría." maxlength="200" ><?php echo $dataTpdc["tipoPdcDescripcion"];?></textarea>
            </div>

            <div class="form-group">
                <button class="btn save">Actualizar Tipo PDC</button>
            </div>

        </form>
    </div>
</div>
