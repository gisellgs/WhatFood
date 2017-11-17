<?php
require_once("model/security.model.php");
class SecurityController {
    private $security;
    public function __CONSTRUCT(){
        // $this->$security = new SecurityModel();
      }

    function main(){
        // require_once "views/include/scope.header.php";
        require_once "views/modules/security/index.php";
        // require_once "views/include/scope.footer.php";
    }

    function viewsCreate(){
        require_once "views/include/scope.header.php";
        // require_once "views/modules/tpdcs/createTpdc.php";
        require_once "views/include/scope.footer.php";
    }

    function viewsUpdate(){
        require_once "views/include/scope.header.php";
        // require_once "views/modules/tpdcs/updateTpdc.php";
        require_once "views/include/scope.footer.php";
    }

    function viewsDetail(){
        require_once "views/include/scope.header.php";
        // require_once "views/modules/tpdcs/viewTpdc.php";
        require_once "views/include/scope.footer.php";
    }

    public function newTpdc(){
        $data = $_POST['data'];
        $result = $this->tpdc->create($data);
        echo  $result;
        header("Location: gestion-tpdc");
    }

    public function readTpdc(){
        $result = $this->tpdc->readAll();
        return $result;
    }

    public function readByTpdc($data){
        $result = $this->tpdc->readBy($data);
        return $result;
    }

    public function updateTpdc(){
        $data = $_POST['data'];
        $result = $this->tpdc->update($data);
        // header("Location: gestion-tpdcs");
        return $result;
    }

    public function deleteTpdc(){
        $data = $_GET['data'];
        $result = $this->tpdc->delete($data);
        header("Location: gestion-tpdc");
    }
}
?>
