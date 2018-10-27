@extends('layouts.app')

@section('content')
<h4>Artikel Baru</h4>
<form action="{{ route('jadwal.store') }}" method="post">
    {{csrf_field()}}
    <div class="form-group {{ $errors->has('hari') ? 'has-error' : '' }}">
        <label for="hari" class="control-label">Hari</label>
        <input type="text" class="form-control" name="hari" placeholder="Hari">
        @if ($errors->has('hari'))
            <span class="help-block">{{ $errors->first('hari') }}</span>
        @endif
    </div>
    <div class="form-group {{ $errors->has('id_kls') ? 'has-error' : '' }}">
        <label for="id_kls" class="control-label">ID Kelas</label>
        <input type="int" class="form-control" name="id_kls" placeholder="ID Kelas">
        @if ($errors->has('id_kls'))
            <span class="help-block">{{ $errors->first('id_kls') }}</span>
        @endif
    </div>
    <div class="form-group {{ $errors->has('id_sesi') ? 'has-error' : '' }}">
        <label for="id_sesi" class="control-label">ID Sesi</label>
        <input type="int" class="form-control" name="id_sesi" placeholder="ID Sesi">
        @if ($errors->has('id_sesi'))
            <span class="help-block">{{ $errors->first('id_sesi') }}</span>
        @endif
    </div>
    <div class="form-group {{ $errors->has('id_ruang') ? 'has-error' : '' }}">
        <label for="id_ruang" class="control-label">ID Ruang</label>
        <input type="int" class="form-control" name="id_ruang" placeholder="ID Ruang">
        @if ($errors->has('id_ruang'))
            <span class="help-block">{{ $errors->first('id_ruang') }}</span>
        @endif
    </div>

    <div class="form-group">
        <button type="submit" class="btn btn-info">Simpan</button>
        <a href="{{ route('jadwal.index') }}" class="btn btn-default">Kembali</a>
    </div>
</form>
@endsection
