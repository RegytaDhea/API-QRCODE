@extends('layouts.app')

@section('content')
<h4>{{ $jadwal->hari }}</h4>
<p>{{ $jadwal->id_kls }}</p>
<p>{{ $jadwal->id_sesi }}</p>
<p>{{ $jadwal->id_ruang }}</p>
<a href="{{ route('jadwal.index') }}" class="btn btn-default">Kembali</a>
@endsection
