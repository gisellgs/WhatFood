<div class="modules internal-page">
    <header>
        <h1>Crear Complejo</h1>
        <!-- Miga de pan - Ruta a seguir (menu de donde estoy parado) -->
        <div class="breadcrums">
            <ul>
                <li><a href="dashboard"> <i class="fa fa-home"> </i>Dashboard </a></li>
                <li><a href="gestion-complejos"> Complejos   </a></li>
                <li>Nuevo Complejo</li>
            </ul>
        </div>
    </header>
    <!-- Emboltura para formulario - Todos los frm deben tenerlo pa que cojan el mismo estilo -->
    <div class="wrap--frm">
        <form id="dataFrm" name="frmComplejo" action="guardar-complejo" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="id_complejo" class="require"> <a href="crear-regional"> Regional: </a> </label>
                <select name="data[]" id="id_complejo" required>
                    <option value="" selected="selected">Selecciona una</option>
                    <?php
                        $result = $this->complejo->readAllRegional();
                        foreach ($result as $row) {
                          echo "<option value=".$row['regiCodigo']."> "
                          .$row['regiNombre'].
                          "</option>";
                        }
                    ?>
                </select>
            </div>
            <div class="form-group">
                <!-- <label for="codigoComp" class="require">Código:</label> -->
                <input type="hidden" name="data[]" id="codigoComp" placeholder="Ingrese el código del complejo" >
            </div>
            <div class="form-group">
                <label for="nombreComp" class="require">Nombre:</label>
                <input type="text" name="data[]" id="nombreComp" placeholder="Ingrese el nombre del complejo" required>
            </div>
            <div class="form-group">
                <label for="direccionComp" class="optional">Dirección:</label>
                <input type="text" name="data[]" id="direccionComp" placeholder="Ingrese la dirección del complejo">
            </div>
            <div class="form-group">
                <button class="btn save">Guardar Complejo</button>
            </div>

        </form>
    </div>
</div>
