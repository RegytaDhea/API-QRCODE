<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jadwal extends Model
{
    // Digunakan untuk menggunakan soft delete secara default saat menghapus data

    protected $table = 'm_jadwals';

    protected $fillable = [
        'hari', 'id_kls', 'id_sesi', 'id_ruang'
    ];
}
