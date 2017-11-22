<style>
  .repe{
      display: none;
  }
</style>

<!-- <div class="repe" id='alerta_repetido' > Repetido **** </div>


<script>
    // alert("Alert");
</script> -->



<?php
require_once("model/tpdc.model.php");
class TpdcController {
    private $tpdc;
    public function __CONSTRUCT(){
        $this->tpdc = new TpdcModel();
      }


    function main(){
        if(!isset($_SESSION["user"])){
            require_once 'views/modules/auth/index.php';
        }else{
            require_once 'views/include/scope.header.php';
            require_once "views/modules/tpdcs/index.php";
        }
        require_once 'views/include/scope.footer.php';
    }




    function viewsCreate(){
        require_once "views/include/scope.header.php";
        require_once "views/modules/tpdcs/createTpdc.php";
        require_once "views/include/scope.footer.php";
    }

    function viewsUpdate(){
        require_once "views/include/scope.header.php";
        require_once "views/modules/tpdcs/updateTpdc.php";
        require_once "views/include/scope.footer.php";
    }

    function viewsDetail(){
        require_once "views/include/scope.header.php";
        require_once "views/modules/tpdcs/viewTpdc.php";
        require_once "views/include/scope.footer.php";
    }


    public function newTpdc(){
        $data = $_POST['data'];
        $result = $this->tpdc->create($data);
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
        // print_r($data);
        $result = $this->tpdc->update($data);
        // die($result);
        header("Location: gestion-tpdc");
        return $result;
    }

    public function deleteTpdc(){
        $data = $_GET['data'];
        $result = $this->tpdc->delete($data);
        header("Location: gestion-tpdc");
    }
}

?>
