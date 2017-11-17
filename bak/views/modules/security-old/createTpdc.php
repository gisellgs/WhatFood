<div class="modules internal-page">
    <header>
        <h1>Crear Tipo PDC</h1>
        <!-- Miga de pan - Ruta a seguir (menu de donde estoy parado) -->
        <div class="breadcrums">
            <ul>
                <li><a href="dashboard"> <i class="fa fa-home"> </i>Dashboard </a></li>
                <li><a href="gestion-tpdc"> Tipos PDC </a></li>
                <li>Nuevo Tipo PDC</li>
            </ul>
        </div>
    </header>
    <!-- Emboltura para formulario - Todos los frm deben tenerlo pa que cojan el mismo estilo -->
    <div class="wrap--frm">
        <form id="dataFrm" name="frmTipoPDC" action="guardar-tipoPdc" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="TipoPdc" class="require">Código:</label>
                <input type="text"  name="data[]" id="TipoPdc" placeholder="" required>
            </div>
            <div class="form-group">
                <label for="tipoPdcNombre" class="require">Nombre:</label>
                <input type="text" name="data[]" id="tipoPdcNombre" placeholder="" required>
            </div>

            <div class="form-group">
                <label for="tipoPdcDescripcion" class="optional">Descripcion:</label>
                <textarea name="data[]" id="tipoPdcDescripcion"></textarea>
            </div>

            <div class="form-group">
                <button class="btn save">Guardar Tipo PDC</button>
            </div>

        </form>
    </div>
</div>
