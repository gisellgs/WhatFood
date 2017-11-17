<?php
class ViewsController{

    function main(){
        // header("Location: dashboard");
        // Para logín
        // require_once 'views/include/scope.header.php';

        if(!isset($_SESSION["user"])){
            // echo 'Debe autenticarse...';
            // require_once 'views/include/scope.header.php';
            require_once 'views/modules/auth/index.php';
        }else{
            require_once 'views/include/scope.header.php';
            require_once 'views/dashboard.php';
        }
        require_once 'views/include/scope.footer.php';
    }


    // public function dashboard(){
        // require_once "views/include/scope.header.php";
        // require_once "views/dashboard.php";
        // require_once "views/include/scope.footer.php";
    // }

    // Implementado para login
    public function registerGuest(){
        require_once 'views/include/header.php';
        require_once 'views/modules/auth/register.php';
        require_once 'views/include/footer.php';
    }

}
?>
