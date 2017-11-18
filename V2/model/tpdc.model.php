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
    class TpdcModel{
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
                $sql="INSERT INTO tipo_pdc(tipoPdcNombre, tipoPdcDescripcion) VALUES (?,?)";
                $query=$this->pdo->prepare($sql);
                $query->execute(array($data[0],$data[1]));
                $msn ="Guardado Exitosamente.";
            } catch (PDOException $e) {
                $msn = $e->getMessage();
            }
            // echo $msn;
            return $msn;
        }


        public function readAll(){
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
                $sql="SELECT * FROM tipo_pdc WHERE tipoPdcCodigo = ?";
                $query=$this->pdo->prepare($sql);
                $query->execute(array($data));
                $result = $query->fetch(PDO::FETCH_BOTH);
            } catch (PDOException $e) {
                $result = $e->getMessage();
            }
            return $result;
        }


        public function update($data){
          try {
                $sql="UPDATE tipo_pdc SET tipoPdcNombre=?, tipoPdcDescripcion=? WHERE tipoPdcCodigo= ?";
                $query=$this->pdo->prepare($sql);
                $query->execute(array($data[1],$data[2],$data[0]));
                $msn ="Modificado Exitosamente.";
                // echo $msn;
            } catch (PDOException $e) {
                $msn = $e->getMessage();
            }
            return $msn;
        }


        public function delete($data){
            try {
                $sql="DELETE FROM tipo_pdc WHERE tipoPdcCodigo = ?";
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
