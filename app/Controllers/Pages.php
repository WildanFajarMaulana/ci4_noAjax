<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data['title']="home";
        $data['css']='index.css';
        return view('pages/home',$data);
       
    }
     public function about()
    {
        $data['title']="about";
        $data['css']='about.css';
        return view('pages/about',$data);
       
    }
      public function contact()
    {
        $data['title']="contact us";
        $data['css']='contact.css';
        $data['alamat']=[
            [
                'tipe'=>'rumah',
                'alamat'=>'jl.simpang',
                'kota'=>'bandung'
            ],
            [
                'tipe'=>'perum',
                'alamat'=>'jl.sadang',
                'kota'=>'malang'
            ]
        ];
        return view('pages/contact',$data);
       
    }
}
