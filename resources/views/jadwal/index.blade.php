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
            <th>Hari</th>
            <th>ID kelas</th>
            <th>ID sesi</th>
            <th>ID ruang</th>
            <th>Action</th>
        </thead>
        <tbody>
            @foreach ($jadwal as $jadwal)
                <tr>
                    <td>{{ $jadwal->id_jadwal }}</td>
                    <td>{{ $jadwal->hari }}</a></td>
                    <td>{{ $jadwal->id_kls }}</a></td>
                    <td>{{ $jadwal->id_sesi }}</a></td>
                    <td>{{ $jadwal->id_ruang }}</a></td>
                    <td>
                            <a href="{{ url('/pertemuan/'.$jadwal->id_jadwal) }}" button type="submit" class="btn btn-danger btn-sm">Pilih</button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
