<?php
    session_start();
    
    // print_r($_SESSION["user"][name]);
    require_once "model/conn.model.php";
      if (isset($_REQUEST['c'])) {
          //requerir archivo
          $controller=strtolower($_REQUEST['c']);

          require_once "controller/$controller.controller.php";
          //requerir clase
          $controller = ucwords($controller)."Controller";
          $controller = new $controller;
          //preguntamos si hay accion si no hay por defecto es main
          $action = isset($_REQUEST['a']) ? $_REQUEST['a']:'main';
          call_user_func(array($controller,$action));
      }else {
          $controller = "views";
              //requerir archivo
          require_once "controller/$controller.controller.php";
              //requerir clase
          $controller = ucwords($controller)."Controller";
          $controller = new $controller;
          $controller->main();

          // if(!isset($_SESSION["user"])){
          //         require_once 'views/modules/auth/index.php';
          //     }else{
          //         // require_once 'views/include/scope.header.php';
          //         // require_once "views/modules/tpdcs/index.php";
          //         // console.log("control sesion desde index.php ppl.");
          //         $controller->main();
          //     }
          //     // require_once 'views/include/scope.footer.php';

      }
?>
