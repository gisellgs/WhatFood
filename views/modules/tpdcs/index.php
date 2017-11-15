<div class="modules">
    <header>
        <h1>Gestion Tipos PDC</h1>
        <p>Este es el modulo de Tipos o Categoría de Puntos de Comida (PDC)</p>
        <div class="wrap--btns">
            <ul>
                <li><a href="crear-tpdc" class="magenta" >Nuevo Tipo PDC</a></li>
                <!-- <li><a href="reporte-tpdc" class="magentaRep" >Reportes Tipo PDC</a></li> -->
            </ul>
        </div>
    </header>
    <div class="wrap--datagrid">
        <table id="dataGrid">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <th class="hideTd">Descripción</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
            <?php
            $item =1;
                foreach ($this->readTpdc() as $row) {?>
                    <tr>
                        <td><?php echo $item;?></td>
                        <td class="hideTd"><?php echo $row['tipoPdcNombre'] ?></td>
                        <td class="hideTd"><?php echo $row['tipoPdcDescripcion'] ?></td>
                        <td>
                          <div class="menu--top2" >
                            <ul>
                              <li><a href="actualizar-tpdc-<?php echo $row['tipoPdcCodigo'] ;?>"><i class="fa fa-pencil" aria-hidden="true"> </i></a></li>
                              <a href="eliminar-tpdc-<?php echo $row['tipoPdcCodigo'] ;?>"><i class="fa fa-trash" aria-hidden="true"> </i></a>
                            </ul>
                          </div>
                        </td>
                    </tr>

                <?php
                    $item++;
                        }
                 ?>
            </tbody>
        </table>
    </div>
</div>
