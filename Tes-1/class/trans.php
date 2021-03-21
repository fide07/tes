<?php
class trans{   
    
    private $transTable = "transactions";      
    public $id_trans;
    public $date_added;
    public $id_item;
    public $quantity;   
    private $conn;
	
    public function __construct($db){
        $this->conn = $db;
    }	
	
	function read_trans(){	
		if($this->id_trans) {
			$stmt = $this->conn->prepare("SELECT * FROM ".$this->transTable." WHERE id_trans = ?");
			$stmt->bind_param("i", $this->id_trans);					
		} else {
			$stmt = $this->conn->prepare("SELECT * FROM ".$this->transTable);		
		}		
		$stmt->execute();			
		$result = $stmt->get_result();		
		return $result;	
	}
	
	function create_trans(){
		
		$stmt = $this->conn->prepare("
			INSERT INTO ".$this->transTable."(`date_added`, `id_item`, `quantity`)
			VALUES(?,?,?)");
		
		
		$this->date_created = htmlspecialchars(strip_tags($this->date_added));
		$this->id_item = htmlspecialchars(strip_tags($this->id_item));
		$this->quantity = htmlspecialchars(strip_tags($this->quantity));
		
		
		$stmt->bind_param("sii", $this->date_added, $this->id_item, $this->quantity);
		
		if($stmt->execute()){
			return true;
		}
	 
		return false;		 
	}
	
	function delete_trans(){
		
		$stmt = $this->conn->prepare("
			DELETE FROM ".$this->transTable." 
			WHERE id_trans = ?");
			
		$this->id_trans = htmlspecialchars(strip_tags($this->id_trans));
	 
		$stmt->bind_param("i", $this->id_trans);
	 
		if($stmt->execute()){
			return true;
		}
	 
		return false;		 
	}
}
?>