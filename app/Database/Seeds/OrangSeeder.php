<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;
class OrangSeeder extends Seeder
{
    public function run()
    {
        // for ($i=0; $i <200 ; $i++) { 
        // $data = [
        //     'nama' => 'wildan',
        //     'alamat'    =>'jl.simpang sulfat',
        //     'created_at'=>Time::now(),
        //     'updated_at'=>Time::now()
        // ];
        //     $this->db->table('orang')->insert($data);
        // }
        $data = [
            
            'nama' => 'adam',
            'alamat'    =>'jl.simpang sulfat',
            'created_at'=>Time::now(),
            'updated_at'=>Time::now()
            
            
        ];

        // Simple Queries
        // $this->db->query("INSERT INTO orang (nama,alamat,created_at,updated_at) VALUES(:nama:, :alamat:,:created_at:,:updated_at:)",$data);

        // Using Query Builder
         $this->db->table('orang')->insert($data);

        // insert data >1
        // $this->db->table('orang')->insertBatch($data); 
    }
}