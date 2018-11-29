<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Pertemuan;
use Hash;
use Illuminate\Http\Request;
use DB;
use Input;
use Redirect;

class PertemuanController extends Controller
{

  public function contoh(Request $request)
  {
    dd($request);
  }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function pertemuan(Request $request, $id)
    {
      $id_jadwal = $id;
      $pertemuan = Pertemuan::WHERE('id_jdwl', $id)->get();
      return view('jadwal.pertemuan',['pertemuan' => $pertemuan,'id_jadwal'=>$id_jadwal]);
    }

    public function create($id_jadwal)
    {

        return view('jadwal.create',['id_jadwal' => $id_jadwal]);
    }

    /*public function save(Request $request)
    {
      $this->validate($request, [
        'id_jdwl' => 'required|max:10|pertemuan|int',
        'nip_dosen' => 'required|max:11|$\pertemuan|int',
        'kesesuaian_rkps' => 'required|max:100|pertemuan|varchar',
        'capaian' => 'required|max:100|pertemuan|varchar',
        'waktu_mulai' => 'required|pertemuan|DateTime',
        'waktu_selesai' => 'required|pertemuan|DateTime',
        'keterangan' => 'required|max:191|pertemuan|varchar',
        'materi' => 'required|max:191|pertemuan|varchar',
      ]);

        $pertemuan = Pertemuan::create(['id_jdwl' => $request->id_jdwl, 'nip_dosen' => $request->nip_dosen, 'kesesuaian_rkps' => $request->kesesuaian_rkps,
        'capaian' => $request->capaian, 'waktu_mulai' => $request->waktu_mulai, 'waktu_selesai' => $request->waktu_selesai, 'keterangan' => $request->keterangan,
        'materi' => $request->materi]);
        return redirect(route('jadwal.pertemuan.create'));

    }*/

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $pertemuan = Pertemuan::create([
          'id_jdwl' => $request->id_jdwl,
          'nip_dosen' => $request->nip_dosen,
          'kesesuaian_rkps' => $request->kesesuaian_rkps,
          'capaian' => $request->capaian,
          'waktu_mulai' => $request->waktu_mulai,
          'waktu_selesai' => $request->waktu_selesai,
          'keterangan' => $request->keterangan,
          'materi' => $request->file('materi'),
      ]);

       return Redirect::to('/pertemuan/show/'.$request->id_jdwl)->with('message', 'berhasil ditambah');
      }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    /*public function show($id_jadwal)
    {
      //
    }*?

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
/*
     public function edit($id_jadwal)
    {
        //
    }

    public function update(Request $request, $id_jadwal)
    {
      //

    }*/

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
     /*
    public function destroy($id_jadwal)
    {
      //

    }
}*/
