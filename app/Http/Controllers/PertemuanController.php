<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Pertemuan;
use Hash;
use Illuminate\Http\Request;

class PertemuanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function pertemuan(Request $request)
    {
      $pertemuan = Pertemuan::where('id_jadwal' as 'id_jadwal')->get();
      return view('jadwal.pertemuan', compact('pertemuan'));
    }

    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_jadwal)
    {
      //
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
        //
    }

    public function update(Request $request, $id_jadwal)
    {
      //

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id_jadwal)
    {
      //

    }
}
