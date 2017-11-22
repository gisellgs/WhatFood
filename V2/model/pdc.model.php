<?php
/*
@user: Fredy Luján
@dateCreate:10/08/2017
@params: id_tpdc,nombre_gen,descripcion,imagen
@nameMethod:Create();
@description:este metodo es para crear  un tpdc y los parametros los pasamos en arreglo llamado data
@dataUpdate:
@userUpdate:
*/
    class PdcModel{
        private $pdo;
        public function __CONSTRUCT(){
            try {
                $this->pdo=DataBase::openDB();
                $this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            } catch (PDOException $e) {
                die($e->getMessage());
            }
        }


        public function create($data){
            try {
                $sql="INSERT INTO pdc(tipo_pdc_Codigo, pdc_nit, pdc_nombre, pdc_direccion, pdc_hora_apertura, pdc_hora_cierre, pdc_latitud, pdc_longitud, pdc_estado, pdc_telefono, pdc_celular)
                      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                $query=$this->pdo->prepare($sql);
                $query->execute(array($data[0],$data[1],$data[2],$data[3],$data[4],$data[5],$data[6],$data[7],$data[8],$data[9],$data[10]));
                $msn ="Guardado Exitosamente.";
            } catch (PDOException $e) {
                $msn = $e->getMessage();
            }
            // echo $msn;
            return $msn;
        }


        public function readAll(){
            try {
                $sql="SELECT * FROM pdc";
                $query=$this->pdo->prepare($sql);
                $query->execute();
                $result = $query->fetchALL(PDO::FETCH_BOTH);
            } catch (PDOException $e) {
                $result = $e->getMessage();
            }
            return $result;
        }


        public function readAlltpdc(){
            try {
                $sql="SELECT * FROM tipo_pdc";
                $query=$this->pdo->prepare($sql);
                $query->execute();
                $result = $query->fetchALL(PDO::FETCH_BOTH);
            } catch (PDOException $e) {
                $result = $e->getMessage();
            }
            return $result;
        }


        public function readBy($data){
            try {
                $sql="SELECT * FROM pdc WHERE pdc_id = ?";
                $query=$this->pdo->prepare($sql);
                $query->execute(array($data));
                $result = $query->fetch(PDO::FETCH_BOTH);
            } catch (PDOException $e) {
                $result = $e->getMessage();
            }
            return $result;
        }


        public function update($data){
          print_r($data);
          // var_dump($data);
          // die();
          for ($i = 0; $i < 12; $i++) {
              echo '</br> '.$i.' :  ' ;
              echo ($data[$i]);
          }

          echo '</br>';

          // die();
          try {
                // $sql="UPDATE pdc SET pdc_nit=8464229, tipo_pdc_Codigo=1, pdc_nombre='empa', pdc_direccion='clle', pdc_hora_apertura='10:20', pdc_hora_cierre='12:10', pdc_latitud='6.0000', pdc_longitud='-7.000', pdc_estado='0', pdc_telefono='8401234', pdc_celular='300' WHERE pdc_id=1";
                $sql="UPDATE pdc SET pdc_nit=?, tipo_pdc_Codigo=?, pdc_nombre=?, pdc_direccion=?, pdc_hora_apertura=?, pdc_hora_cierre=?, pdc_latitud=?, pdc_longitud=?, pdc_estado=?, pdc_telefono=?', pdc_celular=? WHERE pdc_id=?";
                $query=$this->pdo->prepare($sql);
                $query->execute(array($data[1],$data[2],$data[3],$data[4],$data[5],$data[6],$data[7],$data[8],$data[9],$data[10],$data[11],$data[0]));
                $msn ="Modificado Exitosamente.";
                // echo $msn;
            } catch (PDOException $e) {
                $msn = $e->getMessage();
            }
            die($msn);
            return $msn;
        }


        public function delete($data){
            try {
                $sql="DELETE FROM pdc WHERE pdc_id = ?";
                $query=$this->pdo->prepare($sql);
                $query->execute(array($data));
                $msn ="Eliminado Exitosamente";
            } catch (PDOException $e) {
                $msn = $e->getMessage();
            }
            return $msn;
        }
    }
?>
