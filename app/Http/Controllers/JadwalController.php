<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Jadwal;
use Hash;
use Illuminate\Http\Request;

class JadwalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function index(Request $request, $id)
     {
       $jadwal = Jadwal::WHERE('id_kls', $id)->get();
       return view('jadwal.index', compact('jadwal'));
     }

    public function create()
    {
        return view('jadwal.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $this->validate($request, [
          'hari' => 'required',
          'id_kls' => 'required',
          'id_sesi' => 'required',
          'id_ruang' => 'required',
      ]);

      $jadwal = Jadwal::create($request->all());

      return redirect()->route('jadwal.index')->with('message', 'Jadwal baru berhasil dibuat!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_jadwal)
    {
      $jadwal = Jadwal::findOrFail($id_jadwal);
      return view('jadwal.show', compact('jadwal'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

     public function edit($id_jadwal)
    {
        $jadwal = Jadwal::findOrFail($id_jadwal);
        return view('jadwal.edit', compact('jadwal'));
    }

    public function update(Request $request, $id_jadwal)
    {
      $this->validate($request, [
        'hari' => 'required',
        'id_kls' => 'required',
        'id_sesi' => 'required',
        'id_ruang' => 'required',
        ]);

        $jadwal = Jadwal::findOrFail($id_jadwal)->update($request->all());

        return redirect()->route('jadwal.index')->with('message', 'Jadwal berhasil diubah!');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_jadwal)
    {
      $jadwal = Jadwal::findOrFail($id_jadwal)->delete();
      return redirect()->route('jadwal.index')->with('message', 'Jadwal berhasil dihapus!');

    }
}
