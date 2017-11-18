<!-- para gisell meterlo al CSS -->
<style>
    header .breadcrums ul li .aqui{
      color: #04bbb0;
    }
</style>
<!--  -->

<div class="modules">
    <header>
        <h1> <i class="fa fa-cutlery" aria-hidden="true"></i> - Tipos PDC</h1>
        <p>Este es el modulo de tipos o categoría de Puntos de Comida (PDC)</p>
        <div class="wrap--btns">
            <div class="breadcrums">
            		<ul>
            				<li><a href="gestion-tpdc" class="menu--basico aqui" > <i class="fa fa-cutlery" aria-hidden="true"></i> Tipos PDC</a></li>
            				<li><a href="gestion-pdc" class="menu--basico" > <i class="fa fa-window-restore" aria-hidden="true"></i> PDC</a></li>
            				<!-- <li><a href="gestion-users" class="menu--basico" > <i class="fa fa-street-view" aria-hidden="true"></i> Usuarios</a></li> -->
            		</ul>
            </div>
        </div>
        <div class="wrap--btns">
            <ul>
                <li><a href="crear-tpdc" > <i class="fa fa-plus-circle" aria-hidden="true"></i> </a></li>
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
