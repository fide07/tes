<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
include_once '../config/Database.php';
include_once '../class/trans.php';
 
$database = new Database();
$db = $database->getConnection();
 
$trans = new trans($db);
 
$data = json_decode(file_get_contents("php://input"));

if(!empty($data->date_added) && !empty($data->id_item) &&
!empty($data->quantity) ){    

    $trans->date_added = date('Y-m-d H:i:s'); 
    $trans->id_item = $data->id_item;
    $trans->quantity = $data->quantity;
    
    if($trans->create_trans()){         
        http_response_code(201);         
        echo json_encode(array("message" => "Transaction was created."));
        require_once ('../class/Items.php');
        {
            $items = new Items($db);    
            $item->id = $data->id_item;          
            $item->quantity = $data->quantity;
            
    
    
    if($items->update_after_trans()){     
        http_response_code(200);   
        echo json_encode(array("message" => "Item was updated."));
    }else{    
        http_response_code(503);     
        echo json_encode(array("message" => "Unable to update items."));
    }
    

        }
    } else{         
        http_response_code(503);        
        echo json_encode(array("message" => "Unable to create transaction."));
    }
}else{    
    http_response_code(400);    
    echo json_encode(array("message" => "Unable to create transaction. Data is incomplete."));
}
?>