
<script>
    if ( <?php echo $_GET['p'] <> '' ?>){
        alert("<?php echo $_GET['p'] ?>");
    }
</script>

<div class="modules">
    <header>
        <h1>Gestion de usuarios </h1>
        <p>Este es el modulo de gestion de usuarios</p>
        <div class="wrap--btns">
            <ul>
                <!-- <li><a href="crear-auth" class="magenta" >Nuevo Usuario</a></li> -->
                <!-- <li><a href="crear-auth-visitor" class="magenta" >Nuevo Usuario</a></li> -->
                <!-- <li><a href="crear-user" class="magenta" >Nuevo Usuario</a></li> -->



                <!-- crear-auth$ index.php?c=auth&a=viewsCreate
                RewriteRule ^crear-auth-visitor$ -->
                <!-- <li><a href="reporte-genero" class="magentaRep" >Reportes de Película</a></li> -->
                <!-- <li><a href="imprimir-generos" class="magentaImp" >Imprimir Películas</a></li> -->
            </ul>
        </div>
        <div class="wrap--btns">
          <ul>
              <li><a href="crear-user" > <i class="fa fa-user-plus" aria-hidden="true"></i> </a></li>
          </ul>

        </div>
    </header>
    <div class="wrap--datagrid">
        <table id="dataGrid">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Usuario</th>
                    <th>Apellido</th>
                    <th>Correo</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
            <?php
            $item =1;
                foreach ($this->readUser() as $row) {?>
                    <tr>
                        <td><?php echo $item;?></td>
                        <td><?php echo $row['user_name'] ?></td>
                        <td><?php echo $row['user_lastname'] ?></td>
                        <td><?php echo $row['user_email'] ?></td>
                        <td>
                          <div class="menu--top2" >
                             <ul>
                              <li><a href="actualizar-user-<?php echo $row['user_id'] ?>"><i class="fa fa-pencil" aria-hidden="true"> Actualizar</i></a></li>
                              <a href="ver-detalle-user-<?php echo $row['user_id'] ?>"><i class="fa fa-eye" aria-hidden="true"> Detalles</i></a>
                              <a href="eliminar-user-<?php echo $row['user_id'] ?>"><i class="fa fa-trash" aria-hidden="true"> Eliminar</i></a>
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
