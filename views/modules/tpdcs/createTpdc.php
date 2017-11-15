

<style>
  .require--msn{
      display: none;
  }
</style>

<!-- ************ -->
<div class="modules internal-page">
    <header>
        <h1>Crear Tipo PDC</h1>
        <!-- Miga de pan - Ruta a seguir (menu de donde estoy parado) -->
        <div class="breadcrums">
            <ul>
                <li><a href="inicio"> <i class="fa fa-home"> </i>Dashboard </a></li>
                <li><a href="gestion-tpdc"> Tipos PDC </a></li>
                <li>Nuevo Tipo PDC</li>
            </ul>
        </div>
    </header>
    <!-- Emboltura para formulario - Todos los frm deben tenerlo pa que cojan el mismo estilo -->
    <div class="wrap--frm">
        <form id="dataFrmTipoPDC" name="frmTipoPDC" action="guardar-tipoPdc" method="post" enctype="multipart/form-data">

            <div class="form-group">
                <label for="tipoPdcNombre" class="require">Nombre:</label>
                <input type="text" name="data[]" id="tipoPdcNombre" placeholder="Ingrese el nombre del Tipo o Categoría de Puntos De Comida (PDC)" required maxlength="45">
                <span class="require--msn" id="tipoPdcNombre_msn" style="color:red">El nombre es requerido.</span>
            </div>

            <div class="form-group" id="ocultar" >
                <label for="tipoPdcDescripcion" class="optional">Descripcion:</label>
                <textarea name="data[]" id="tipoPdcDescripcion" placeholder="Ingrese una breve descripción del Tipo de PDC" maxlength="200"></textarea>
            </div>

            <div class="form-group">
                <input class="btn save submit" type="button" id="button" value="Guardar Tipo PDC" class="button-submit" >
            </div>

        </form>
    </div>
</div>
