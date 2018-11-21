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
            <th>Kelas</th>
            <th>Kapasitas</th>
            <th>Paket Semester</th>
            <th>ID Tahun Ajaran</th>
            <th>Kode Mata Kuliah</th>
            <th>NIP Dosen</th>
            <th>Action</th>
        </thead>
        <tbody>
            @foreach ($kelas as $kelas)
                <tr>
                    <td>{{ $kelas->id }}</td>
                    <td>{{ $kelas->kelas }}</a></td>
                    <td>{{ $kelas->kapasitas }}</a></td>
                    <td>{{ $kelas->paket_semester }}</a></td>
                    <td>{{ $kelas->id_th_ajaran }}</a></td>
                    <td>{{ $kelas->kode_mk }}</a></td>
                    <td>{{ $kelas->nip_dosen }}</a></td>
                    <td>
                            <a href="{{ url('/index/'.$kelas->id) }}" button type="submit" class="btn btn-danger btn-sm">Pilih</button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
