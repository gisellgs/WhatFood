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
                    <th>Complejo</th>
                    <th>Dirección</th>
                    <th>Regional</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
            <?php
            $item =1;
                foreach ($this->readComplejo() as $row) {?>
                    <tr>
                        <td><?php echo $item;?></td>
                        <td><?php echo $row['compNombre'] ?></td>
                        <td><?php echo $row['compDireccion'] ?></td>
                        <td><?php echo $row['regiNombre'] ?></td>
                        <td>
                          <div class="menu--top2" >
                            <ul>
                              <li><a href="actualizar-complejo-<?php echo $row['compCodigo'] ;?>"><i class="fa fa-pencil" aria-hidden="true"> Actualizar</i></a></li>
                              <!-- <a href="ver-detalle-complejo-<?php echo $row['compCodigo'] ;?>"><i class="fa fa-eye" aria-hidden="true"> Detalles</i></a> -->
                              <a href="eliminar-complejo-<?php echo $row['compCodigo'] ;?>"><i class="fa fa-trash" aria-hidden="true"> Eliminar</i></a>
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
