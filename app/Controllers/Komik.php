<?php 

namespace App\Controllers;
use App\Models\KomikModel;
class Komik extends BaseController
{
    protected $komikModel;
    public function __construct(){
         $this->komikModel = new KomikModel();
    }
    public function index()
    {
        session();
        $data['title']='komik';
        $data['validation']=\Config\Services::validation();
        $data['css']='style.css';
 

        // cara konek db tanpa model
        // $db=\Config\Database::connect();
        // $komik=$db->query("SELECT * FROM komik");
        // $komik->getResultArray();
        // dd($komik);


       
        $data['komik']=$this->komikModel->getKomik();

        return view('komik/index',$data);
    }
    public function detail($slug){
         session();
          $data['validation']=\Config\Services::validation();
        $data['title']='detail komik'; 
        $data['css']='style.css';
        $data['komikDetail']=$this->komikModel->getKomik($slug);
         if(empty($data['komikDetail'])){
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Link'.$slug.'tidak ada');
        }
        return view('komik/detail',$data);
    }
    public function create(){
        if(!$this->validate([
            'judul'=>[
                'rules'=>'required|is_unique[komik.judul]',
                'errors'=>[
                    'required'=>'{field} komik harus diisi',
                    'is_unique'=>'{field} komik sudah terdaftar'
                ]
            ],
            'sampul'=>[
                    'rules'=>'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                    'errors'=>[
                        'max_size'=>'ukuran gambar terlalu besar',
                        'is_image'=>'yg anda pilih bukan gambar',
                        'mime_in'=>'yang anda pilih bukan gambar'
                    ]
            ]
        ])){
            // $validation = \Config\Services::validation();

            // return redirect()->to('/komik')->withInput()->with('validation',$validation);

             return redirect()->to('/komik')->withInput();
        }
        // ambil gambar
        $fileSampul=$this->request->getFile('sampul');
        if($fileSampul==''){
            $namaSampul='foto.jpg';
        }else{
        // generate nama sampul random
        $namaSampul=$fileSampul->getRandomName();
        // pindahkan file ke folder image
        $fileSampul->move('image',$namaSampul);
        // ambil nama file
        // $namaSampul=$fileSampul->getName();
        }
        $slug=url_title($this->request->getVar("judul"),'-',true);
        $data=[
            'judul'=>$this->request->getVar("judul"),
            'slug'=>$slug,
            'penulis'=>$this->request->getVar("penulis"),
            'penerbit'=>$this->request->getVar("penerbit"),
            'sampul'=>$namaSampul

        ];
        $this->komikModel->insert($data);
        session()->setFlashdata('pesan','Data Berhasil Ditambahkan');
        return redirect()->to('/komik');
        
    }
    public function delete($id){
        $komikPerId=$this->komikModel->find($id);
        if($komikPerId['sampul']!='foto.jpg'){
            unlink('image/'.$komikPerId['sampul']);
        }
        
        $this->komikModel->delete($id);
        session()->setFlashdata('pesan','Data Berhasil Dihapus');
        return redirect()->to('/komik');
    }
    public function getDataKomik(){

        $show=$this->komikModel->getKomik();

        echo json_encode($show);
    }
    public function update($id){

        $slug_link=$this->request->getVar('slug');
        $komikLama=$this->komikModel->getKomik($slug_link);
    
        if(url_title($komikLama['judul'],'-',true)==url_title($this->request->getVar("judul"),'-',true)){
            $rules='required';
        }else{
            $rules='required|is_unique[komik.judul]';
        }
       

        if(!$this->validate([
            'judul'=>[
                'rules'=>$rules,
                'errors'=>[
                    'required'=>'{field} komik harus diisi',
                    'is_unique'=>'{field} komik sudah terdaftar'
                ]
            ],
            'sampul'=>[
                    'rules'=>'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                    'errors'=>[
                        'max_size'=>'ukuran gambar terlalu besar',
                        'is_image'=>'yg anda pilih bukan gambar',
                        'mime_in'=>'yang anda pilih bukan gambar'
                    ]
            ]
        ])){
            

            return redirect()->to('/komik/'.$slug_link)->withInput();
        }

        $fileSampul=$this->request->getFile('sampul');
        if($fileSampul==''){
            $namaSampul=$this->request->getVar('sampulLama');
        }else{

        // generate nama sampul random
        $namaSampul=$fileSampul->getRandomName();
        // pindahkan file ke folder image
        $fileSampul->move('image',$namaSampul);
        }
        $slug=url_title($this->request->getVar("judul"),'-',true);
        $data=[
            'id'=>$id,
            'judul'=>$this->request->getVar("judul"),
            'slug'=>$slug,
            'penulis'=>$this->request->getVar("penulis"),
            'penerbit'=>$this->request->getVar("penerbit"),
            'sampul'=>$namaSampul

        ];
        $this->komikModel->save($data);
         session()->setFlashdata('pesan','Data Berhasil diubah');
        return redirect()->to('/komik');
    }
}
