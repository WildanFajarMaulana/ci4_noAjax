<?php


namespace App\Models;
use CodeIgniter\Model;

class komikModel extends Model{
	protected $table='komik';
	protected $useTimestamps= true ;
	protected $allowedFields=['judul','slug','penulis','penerbit','sampul'];
	public function getKomik($slug=false){
		if($slug==false){
			return $this->findAll();
		}else{
			return $this->where(['slug'=>$slug])->first();
		}
	}

}

 ?>