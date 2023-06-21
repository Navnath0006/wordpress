<?php 
// MySQL database connection code
$connection = mysqli_connect("localhost","root","","dbtonehealth") or die("Error " . mysqli_error($connection));
//Fetch sports data
$sql = "SELECT * FROM disease_data";
$result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));
//create an array
$array = array();
$i = 0;
while($row = mysqli_fetch_assoc($result))
{  

   $statename = $row['STATE_NAME'];
    $count = $row['TEST_RESULT'];
    $array['cols'][] = array('type' => 'string'); 
    $array['rows'][] = array('c' => array( array('v'=> $statename), array('v'=>(int)$count) );


    /*$orgname = $row['sports'];
    $count = $row['participants'];
    $array['cols'][] = array('type' => 'string'); 
    $array['rows'][] = array('c' => array( array('v'=> $orgname), array('v'=>(int)$count)) );*/
}
$data = json_encode($array);
echo $data;
?>