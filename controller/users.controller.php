<?php
require_once 'model/user.model.php';

// require_once '../../function-random/random.php';


class UsersController{

    private $users;

    public function __CONSTRUCT(){
        $this->users = new UserModel();
    }

    function main(){
        if(!isset($_SESSION["user"])){
            require_once 'views/modules/auth/index.php';
        }else{
            require_once 'views/include/scope.header.php';
            require_once 'views/modules/users/index.php';
        }
        require_once 'views/include/scope.footer.php';
    }



    // Creador de usuarios DE GUILLE - Despues de dejar todo como estaba - guardando nuevos usuarios PROBAR ESTE
    // public function create(){
    //     $data = $_POST["data"];
    //     // Indice4 = id usuario
    //     // Indice5 = token
    //     // Indice6 = status
    //
    //     $data[3] = password_hash($data[3], PASSWORD_DEFAULT);
    //     $data[4] = "USU-".date('Ymd').'-'.date('hms');
    //     $data[5] = randAlphanum(50);
    //     $data[6] = "Inactivo";
    //
    //     // print_r($data);
    //     $response = $this->users->createUser($data);
    //     echo $response;
    //
    // }


    public function viewsCreate(){
        require_once "views/include/scope.header.php";
        require_once "views/modules/users/register.php";
        require_once "views/include/scope.footer.php";
    }

    public function nuewUser(){
        require_once "views/include/scope.header.php";
        require_once "views/modules/auth/register.php";
        require_once "views/include/scope.footer.php";

    }


    public function newUser(){
        $data = $_POST['data'];
        // print_r($data[2]);
        $email = $data[2];
        echo $email;

        // die();
        $result = $this->users->readUserbyEmail($data);
        // $prueba = 'Mensaje de prueba';
        header("Location: dashboard?p=$result");

        die();

        $result = $this->users->createUser($data);
        // header("Location: dashboard?p=$result");

        // header("Location: gestion-users ");
    }


    public function readUser(){
        $result = $this->users->readAll();
        // print_r($result);
        // die();
        return $result;
    }

    public function deleteUser(){
        $data = $_GET['data'];
        $result = $this->users->delete($data);
        header("Location: gestion-users");
    }

    // public function readEmail(){
    //     $result = $this->users->readUserbyEmail();
    //     return $result;
    // }



}
?>
