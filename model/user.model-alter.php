<?php

class UserModel{

	private $pdo;

	public function __CONSTRUCT(){
		try {
		  // $this->pdo = DataBase::connect();
		  $this->pdo = DataBase::openDB();
		  $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		} catch (PDOException $e) {
			$code = $e->getCode();
			$text = $e->getMessage();
			$file = $e->getFile();
			$line = $e->getLine();

			DataBase::createLog($code, $text, $file, $line);
		}
	}

	/*********************************************
	** CreateUser
	********************************************/
	public function createUser($data){
		 try{
					$data[4] = 'USU'.time();
					$data[5] = 0; //El asume el automatico incremental de la DB
					$data[6] = "offline";
					$data[3] = password_hash($data[3], PASSWORD_DEFAULT);
					// print_r($data);
					// echo '</br>';
					$sql = "INSERT INTO users VALUES (?,?,?,?)";
					$query = $this->pdo->prepare($sql);
					$query->execute(array($data[4],$data[0],$data[1],$data[2]));

					$sql = "INSERT INTO access VALUES (?,?,?,0,?)";
					$query = $this->pdo->prepare($sql);
					$query->execute(array($data[5],$data[4],$data[3],$data[6]));
					$msn = "Guardo con exito";
			}catch (PDOException $e) {
					$code = $e->getCode();
					$text = $e->getMessage();
					$file = $e->getFile();
					$line = $e->getLine();
					$msn = "Ocurrio un error, notificarle al administrador";
					/*
					echo $code;
					echo '</br>';
					echo $text;
					echo '</br>';
					echo $file;
					echo '</br>';
					echo $line;
					echo '</br>';
					*/
					DataBase::createLog($code, $text, $file, $line);

			  }

				return $msn;
		 }


		 public function readAll(){
			 try {
					 $sql="SELECT users.user_id, user_name, user_lastname, user_email
								 FROM users
								 INNER JOIN access ON access.user_id = users.user_id";
					 $query=$this->pdo->prepare($sql);
					 $query->execute();
					 $result = $query->fetchALL(PDO::FETCH_BOTH);
			 } catch (PDOException $e) {
					 $result = $e->getMessage();
			 }
			 return $result;
		 }




		 /*********************************************
	 	 ** updateUser
	 	 ********************************************/
	 	 public function updateUserFail($data){
	 		 try{
	 			 	$sql = "UPDATE access SET acc_failed_att = (acc_failed_att + 1) WHERE user_id = (SELECT user_id FROM users WHERE user_email = ?) ";
	 				$query = $this->pdo->prepare($sql);
	 				$query->execute(array($data));
	 				}catch (PDOException $e) {
						$code = $e->getCode();
						$text = $e->getMessage();
						$file = $e->getFile();
						$line = $e->getLine();
						DataBase::createLog($code, $text, $file, $line);
	 			  }
	 		 }


			 /*********************************************
			 ** ReadbyEmail
			 ********************************************/
			//  * Se busca un usuario por medio del correo
			 public function readUserbyEmail($data){
				 	$email = $data[2];
					print_r($email);
					die();
					try{
							$sql = "SELECT * FROM users WHERE user_email = $data[2]";
							$query = $this->pdo->prepare($sql);
							$query->execute(array($data[2]));
							$result = $query->fetch(PDO::FETCH_BOTH);
						}catch (PDOException $e) {
							$code = $e->getCode();
							$text = $e->getMessage();
							$file = $e->getFile();
							$line = $e->getLine();
							DataBase::createLog($code, $text, $file, $line);
							$result = 'No Existe.';
							// die(print_r($result));

					}

					return $result;
				}


				public function delete($data){
						// print_r($data);
            try {
                $sql="DELETE FROM access WHERE user_id = ?";
                $query=$this->pdo->prepare($sql);
                $query->execute(array($data));
                $msn ="Eliminado Exitosamente";

								$sql="DELETE FROM users WHERE user_id = ?";
                $query=$this->pdo->prepare($sql);
                $query->execute(array($data));
                $msn ="Eliminado Exitosamente";
            } catch (PDOException $e) {
                $msn = $e->getMessage();
            }
            return $msn;
        }




				public function __DESTRUCT(){
				    DataBase::closeDB();
				}
			}
?>
