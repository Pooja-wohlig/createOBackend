<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Json extends CI_Controller 
{
	
	public function test(){
        $getmodels=$this->db->query("SELECT * FROM `table` WHERE `project`=4")->result();
//        print_r($tablenames);
          // get comma separated
        
//        $arrayformodels="(";
//        foreach($tablenames as  $key=>$value)
//        {
//            if($key==0)
//                {
//                    $arrayformodels.=$value->tablename;
//                }
//                else
//                {
//                    $arrayformodels.=",".$value->tablename;
//                }
//            
//        }
//        $arrayformodels=")";
        
         $arrayformodels="(";
            foreach($getmodels as $key=>$value)
            {
//            $catid=$row->id;
                if($key==0)
                {
                    $arrayformodels.="'".$value->tablename."_model'";
                }
                else
                {
                    $arrayformodels.=","."'".$value->tablename."_model'";
                }
            }
            $arrayformodels.=")";
        
        echo $arrayformodels;
        "$autoload['model'] = array".$arrayformodels;
//        // get uri
//           $urlforcreatepage=$_SERVER["SCRIPT_FILENAME"];
//        echo "   server path  ";
//        echo $urlforcreatepage;
//        $urlforcreatepage=substr($urlforcreatepage,0,-9);
//         echo "   server substring  ";
//        echo $urlforcreatepage;
//        $urlcreatepage=$urlforcreatepage.'admins/'.$databasename.'/application/config/autoload.php';
//        echo "                  ";
//        echo $urlcreatepage;
//       
//              $controllerfile = read_file($urlcontrollertest);
//                    $mnutext = explode('//start', $controllerfile);
//        
        
//      $urlforcontrollertest = $_SERVER['SCRIPT_FILENAME'];
//        $urlforcontrollertest = substr($urlforcontrollertest, 0, -9);
//        $urlcontrollertest = $urlforcontrollertest.'application/config/hybridauthlib.php';
//        for ($i = 0; $i < sizeOf($newtext); ++$i) {
//            $comp = $newtext[$i]->name;
//            switch ($comp) {
//            case 'Google':
//                {
//                    $controllerfile = read_file($urlcontrollertest);
//                    $mnutext = explode('//google', $controllerfile);
//                    $googletext = "'Google' => array (
//				'enabled' => true,
//				'keys'    => array ( 'id' => '".$newtext[$i]->appid."', 'secret' => '".$newtext[$i]->secret."' )
//			),";
//                    $googletext = $mnutext[0]."//google\n".$googletext.'//google'.$mnutext[2];
//                    if (write_file($urlforcontrollertest.'application/config/hybridauthlib.php', $googletext)) {
//                    }
//                }
      
    }
 
}
?>