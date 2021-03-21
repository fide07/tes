<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../config/Database.php';
include_once '../class/trans.php';

$database = new Database();
$db = $database->getConnection();
 
$trans = new trans($db);

$trans->id_trans = (isset($_GET['id_trans']) && $_GET['id_trans']) ? $_GET['id_trans'] : '0';

$result = $trans->read_trans();

if($result->num_rows > 0){    
    $transRecords=array();
    $transRecords["trans"]=array(); 
	while ($trans = $result->fetch_assoc()) { 	
        extract($trans); 
        $transDetails=array(
            "id_trans" => $id_trans,
            "date_added" => $date_added,
            "id_item" => $id_item,
			"quantity" => $quantity			
        ); 
       array_push($transRecords["trans"], $transDetails);
    }    
    http_response_code(200);     
    echo json_encode($transRecords);
}else{     
    http_response_code(404);     
    echo json_encode(
        array("message" => "No transaction found.")
    );
} 