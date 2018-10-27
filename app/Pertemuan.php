<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pertemuan extends Model
{
    // Digunakan untuk menggunakan soft delete secara default saat menghapus data

    protected $table = 'm_pertemuans';

    protected $fillable = [
        'id','id_jadwal', 'nip_dosen', 'kesesuaian_rkps', 'capaian', 'waktu_mulai', 'waktu_selesai', 'keterangan', 'materi'
    ];
}
