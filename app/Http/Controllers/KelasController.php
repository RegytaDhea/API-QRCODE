<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Kelas;
use Hash;
use Illuminate\Http\Request;

class KelasController extends Controller
{
  public function kelas(Request $request)
  {
      $kelas = Kelas::orderBy('id', 'ASC')->paginate(5);
      return view('jadwal.kelas', compact('kelas'));
  }
}
