<?php
    $dataGender = $this -> readByGender($_GET["data"]);
 ?>
<div class="module internal-page">
    <header>
        <h1>Detalle Genero <?php echo $dataGender["nombre_gen"] ?></h1>
        <div class="breakcrums">
            <ul>
                <li>Dashboard</li>
                <li>Generos</li>
                <li>Crear Genero</li>
            </ul>
        </div>
    </header>
    <div class="wrap--detail">
        <div class="weap-image">
            <img src="views/assets/image/gender/<?php echo $dataGender["imagen"];?>">
        </div>
        <div class="wrap--content">
            <div class="item">
                </div>
                    <!-- <tr> -->
                      <label>Nombre del genero:</label>
                      <span><?php echo $dataGender["nombre_gen"];?></span>
                    <!-- </tr> -->


                </div>
                <div class="item">
                </div>
                    <label>Descripción:</label>
                    <?php echo $dataGender["descripcion"];?>
                </div>
                <div class="">
                    <a href="gestion-generos"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a>

                </div>
            </div>
        </div>
    </div>
</div>
