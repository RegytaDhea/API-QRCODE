@extends('layouts.app')

@section('content')


    @if ($message = Session::get('message'))
        <div class="alert alert-success martop-sm">
            <p>{{ $message }}</p>
        </div>
    @endif
    <a href="{{ url('/') }}"><i class="fa fa-dashboard fa-fw"></i>Home</a>
    <table class="table table-responsive martop-sm">
        <thead>
            <th>ID</th>
            <th>ID Jadwal</th>
            <th>NIP Dosen</th>
            <th>Kesesuaian RKPS</th>
            <th>Capaian</th>
            <th>Waktu Mulai</th>
            <th>Waktu Selesai</th>
            <th>Keterangan</th>
            <th>Materi</th>
        </thead>
        <tbody>
            @foreach ($pertemuan as $pertemuan)
                <tr>
                    <td>{{ $pertemuan->id }}</td>
                    <td>{{ $pertemuan->id_jdwl }}</a></td>
                    <td>{{ $pertemuan->nip_dosen }}</a></td>
                    <td>{{ $pertemuan->kesesuaian_rkps }}</a></td>
                    <td>{{ $pertemuan->capaian }}</a></td>
                    <td>{{ $pertemuan->waktu_mulai }}</a></td>
                    <td>{{ $pertemuan->waktu_selesai }}</a></td>
                    <td>{{ $pertemuan->keterangan }}</a></td>
                    <td>{{ $pertemuan->materi }}</a></td>
                </tr>
            @endforeach
        </tbody>
        <a href="/create">Tambah Pertemuan</a>
    </table>
@endsection
