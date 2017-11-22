<?php

    class DataBase{

        private static $dbhost = "localhost";
        private static $dbname = "whatfood";
        private static $dbuser = "root";
        private static $dbpass = "";

        private static $dbstatus = null;

        public static function openDB(){

            // Preguntamos si la conexion esta abierta
            if (self::$dbstatus==null){
                try{
                    self::$dbstatus=new PDO("mysql:host=".self::$dbhost.";dbname=".self::$dbname,self::$dbuser,self::$dbpass);
                    self::$dbstatus->exec("SET CHARACTER utf8");
                    return self::$dbstatus;
                }catch(PDOException $e){
                    die($e->getMessage());
                }
            }


        }

        public static function closeDB(){
            self::$dbstatus=null;
        }

        public static function createLog($code, $text, $file, $line){
    				 	$mylog = fopen("system.log","a");

    					switch ($code) {
    						case 'HY093':
    								$text = "Los comodines y los parametros no coinciden revise bien";
    							break;

    						case '23000':
    								$text = "Hay duplicidad de información, el PK ya existe";
    						break;

    						case '42S02':
    								$text = "La tabla no existe o la escribio mal";
    						break;
    					}

    					fwrite($mylog, date("Y-m-d h:i:s")." -- Error del Sistema: # ".$code." ".$text." En el archivo ".$file." --> ".$line."\r\n\r\n");
    					fclose($mylog);
    		}
    }

 ?>
