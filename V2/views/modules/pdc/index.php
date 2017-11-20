<!-- para gisell meterlo al CSS -->
<style>
    header .breadcrums ul li .aqui{
      color: #04bbb0;
    }
</style>
<!--  -->

<div class="modules">
    <header>
        <h1><i class="fa fa-window-restore" aria-hidden="true"></i> - Puntos de comida </h1>
        <p>Este es el modulo de gestion de Puntos de Comida (PDC)</p>
        <div class="wrap--btns">
            <div class="breadcrums">
            		<ul>
            				<li><a href="gestion-tpdc" class="menu--basico " > <i class="fa fa-cutlery" aria-hidden="true"></i> Tipos PDC</a></li>
            				<li><a href="gestion-pdc" class="menu--basico aqui" > <i class="fa fa-window-restore" aria-hidden="true"></i> PDC</a></li>
            				<!-- <li><a href="gestion-users" class="menu--basico" > <i class="fa fa-street-view" aria-hidden="true"></i> Usuarios</a></li> -->
            		</ul>
            </div>
        </div>
        <div class="wrap--btns">
            <ul>
                <li><a href="crear-pdc"> <i class="fa fa-plus-circle" aria-hidden="true"></i> </a></li>
            </ul>
        </div>

    </header>
    <div class="wrap--datagrid">
        <table id="dataGrid">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Dirección</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
            <?php
            $item =1;
                foreach ($this->readPdc() as $row) {?>
                    <tr>
                        <td><?php echo $item;?></td>
                        <td><?php echo $row['pdc_nombre'] ?></td>
                        <td><?php echo $row['pdc_direccion'] ?></td>
                        <td><?php
                            $estado = $row['pdc_estado'];
                            if($estado == 1){
                              echo "<a>Abierto</a>";
                            }else{
                              echo "<a>Cerrado</a>";
                            }?>
                        </td>
                        <td>
                          <div class="menu--top2" >
                            <ul>
                              <li><a href="actualizar-pdc-<?php echo $row['pdc_nit'] ;?>"><i class="fa fa-pencil" aria-hidden="true"> </i></a></li>
                              <a href="ver-detalle-pdc-<?php echo $row['pdc_nit'] ;?>"><i class="fa fa-eye" aria-hidden="true"> </i></a>
                              <a href="eliminar-pdc-<?php echo $row['pdc_nit'] ;?>"><i class="fa fa-trash" aria-hidden="true"> </i></a>
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
