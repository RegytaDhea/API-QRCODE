<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kelas extends Model
{
    // Digunakan untuk menggunakan soft delete secara default saat menghapus data

    protected $table = 'm_kelas';

    protected $fillable = [
        'id', 'kelas', 'kapasitas', 'paket_semester', 'id_th_ajaran', 'kode_mk', 'nip_dosen',  
    ];
}
