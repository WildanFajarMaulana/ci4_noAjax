<?php


namespace App\Models;
use CodeIgniter\Model;

class OrangModel extends Model{
	protected $table='orang';
	protected $useTimestamps= true ;
	protected $allowedFields=['nama','alamat'];
	public function getOrang($id=false){
		if($id==false){
			return $this->findAll();
		}else{
			return $this->where(['id'=>$id])->first();
		}
	}
	public function search($keyword){
		if($keyword==''){
			return 'gaada';
			exit;
			
		}else{
			return $this->table('orang')->like('nama',$keyword);
		}
		
		
	}

}

 ?>