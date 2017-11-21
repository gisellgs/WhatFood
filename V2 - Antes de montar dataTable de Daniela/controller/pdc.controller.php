<?php
require_once("model/pdc.model.php");
class PdcController {
    private $pdc;
    public function __CONSTRUCT(){
        $this->pdc = new PdcModel();
      }


    function main(){
        if(!isset($_SESSION["user"])){
            require_once 'views/modules/pcd/index.php';
        }else{
            require_once 'views/include/scope.header.php';
            require_once "views/modules/pdc/index.php";
        }
        require_once 'views/include/scope.footer.php';
    }


    function viewsCreate(){
        require_once "views/include/scope.header.php";
        require_once "views/modules/pdc/createPdc.php";
        require_once "views/include/scope.footer.php";
    }

    function viewsUpdate(){
        require_once "views/include/scope.header.php";
        require_once "views/modules/pdc/updatePdc.php";
        require_once "views/include/scope.footer.php";
    }

    function viewsDetail(){
        require_once "views/include/scope.header.php";
        require_once "views/modules/pdc/viewPdc.php";
        require_once "views/include/scope.footer.php";
    }


    public function newPdc(){
        $data = $_POST['data'];
        $result = $this->pdc->create($data);
        // die('</br>'.$result);
        header("Location: gestion-pdc");
    }

    public function readPdc(){
        $result = $this->pdc->readAll();
        return $result;
    }

    public function readByPdc($data){
        $result = $this->pdc->readBy($data);
        return $result;
    }

    public function updatePdc(){
        $data = $_POST['data'];
        $result = $this->pdc->update($data);
        // print_r($data);
        // die();
        die($result);
        header("Location: gestion-pdc");
        return $result;
    }

    public function deletePdc(){
        $data = $_GET['data'];
        $result = $this->pdc->delete($data);
        header("Location: gestion-pdc");
    }
}

?>
