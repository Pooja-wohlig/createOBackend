<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Json extends CI_Controller 
{
	
	public function test(){
     
//        // get uri
        $dblname='test';
           $urlfordatabase=$_SERVER["SCRIPT_FILENAME"];
        // C:/xampp/htdocs/createOBackend/index.php
        $urlfordatabase=substr($urlfordatabase,0,-9);
        //C:/xampp/htdocs/createOBackend/    
        $databaseurl=$urlfordatabase.'admins/test/application/config/database.php';
              // C:/xampp/htdocs/createOBackend/admins//application/config/autoload.php
       
              $databaseurl = read_file($databaseurl);
                    $parts = explode('/* dbstarts */', $databaseurl);
        $partsmain=substr($parts[1],0,-15);
         $databaseline = $partsmain.$dblname."';";
          $databaseline =$parts[0]."\n".$databaseline."\n".$parts[2];
                    if (write_file($urlfordatabase.'admins/test/application/config/database.php', $databaseline)) {
                         echo 'File written!';
                    }
                    else{
                         echo 'Unable to write the file';
                    }
      
    }
 
}
?>