<?php 

namespace App\Controllers;
use App\Models\OrangModel;
class Orang extends BaseController
{
    protected $OrangModel;
    public function __construct(){
         $this->OrangModel = new OrangModel();
    }
    public function index()
    {
        session();
        $data['title']='komik';
        $data['validation']=\Config\Services::validation();
        $data['css']='style.css';
        $keyword= $this->request->getVar('keyword');


        if($keyword){
             $dorang=$this->OrangModel->search($keyword);
        }else{
             $dorang=$this->OrangModel;
        }
        
        // cara konek db tanpa model
        // $db=\Config\Database::connect();
        // $komik=$db->query("SELECT * FROM komik");
        // $komik->getResultArray();
        // dd($komik);

        $currentPage=$this->request->getVar('page_orang')?$this->request->getVar('page_orang'):1;
        $data['cP']=$currentPage;
        $data['orang']=$dorang->paginate(10,'orang');
        $data['pager']=$this->OrangModel->pager;

        return view('orang/index',$data);
    }
    public function cariData(){
      
        
       
    }
   
}
