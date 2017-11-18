<div class="modules">
    <header>
        <h1>Gestion de Complejos </h1>
        <p>Este es el modulo de complejos</p>
        <div class="wrap--btns">
            <?php require_once "views/include/scope.menu--basicos.php" ?>
        </div>
        <div class="wrap--btns">
            <ul>
                <li><a href="crear-complejo"> <i class="fa fa-plus" aria-hidden="true"> Agregar</i> </a></li>
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
