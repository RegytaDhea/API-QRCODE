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
      $pertemuan = array(
       'id_jdwl'  => Input::get('id_jdwl'),
       'nip_dosen'      => Input::get('nip_dosen'),
       'kesesuaian_rkps'    => Input::get('kesesuaian_rkps'),
       'capaian'  => Input::get('capaian'),
       'waktu_mulai'      => Input::get('waktu_mulai'),
       'waktu_selesai'    => Input::get('waktu_selesai'),
       'keterangan' => Input::get('keterangan'),
       'materi' => Input::get('materi')
     );
      /*$validator = Validator::make(Input::all(), $pertemuan);
      if ($validator->fails()) {
       return Redirect::to('jadwal/create')
        ->withErrors($validator)
        ->withInput(Input);
      } else {
       // store
       $pertemuan             = new Pertemuan;
       $pertemuan->id_jdwl  = Input::get('id_jdwl');
       $pertemuan->nip_dosen      = Input::get('nip_dosen');
       $pertemuan->kesesuaian_rkps    = Input::get('kesesuaian_rkps');
       $pertemuan->capaian = Input::get('capaian');
       $pertemuan->waktu_mulai = Input::get('waktu_mulai');
       $pertemuan->waktu_selesai = Input::get('waktu_selesai');
       $pertemuan->keterangan = Input::get('keterangan');
       $pertemuan->materi = Input::get('materi');
       $pertemuan->save();*/

       // redirect
       $store = \App\Pertemuan::insert($pertemuan);
       return Redirect::to('/pertemuan/.$pertemuan->id_jdwl')->with('message', 'berhasil ditambah');
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
