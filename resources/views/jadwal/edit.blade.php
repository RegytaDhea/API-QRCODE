@extends('layouts.app')

@section('content')
<h4>Ubah Jadwal</h4>
<form action="{{ route('jadwal.update', $jadwal->id_jadwal) }}" method="post">
    {{csrf_field()}}
    {{ method_field('PUT') }}
    <div class="form-group {{ $errors->has('hari') ? 'has-error' : '' }}">
        <label for="hari" class="control-label">Hari</label>
        <input type="text" class="form-control" name="hari" placeholder="Hari" value="{{ $jadwal->hari }}">
        @if ($errors->has('hari'))
            <span class="help-block">{{ $errors->first('hari') }}</span>
        @endif
    </div>
    <div class="form-group {{ $errors->has('id_kls') ? 'has-error' : '' }}">
        <label for="id_kls" class="control-label">ID Kelas</label>
        <input type="int" class="form-control" name="id_kls" placeholder="ID Kelas" value="{{ $jadwal->id_kls }}">
        @if ($errors->has('id_kls'))
            <span class="help-block">{{ $errors->first('id_kls') }}</span>
        @endif
    </div>
    <div class="form-group {{ $errors->has('id_sesi') ? 'has-error' : '' }}">
        <label for="id_sesi" class="control-label">ID Sesi</label>
        <input type="int" class="form-control" name="id_sesi" placeholder="ID Sesi" value="{{ $jadwal->id_sesi }}">
        @if ($errors->has('id_sesi'))
            <span class="help-block">{{ $errors->first('id_sesi') }}</span>
        @endif
    </div>
    <div class="form-group {{ $errors->has('id_ruang') ? 'has-error' : '' }}">
        <label for="id_ruang" class="control-label">ID Ruang</label>
        <input type="int" class="form-control" name="id_ruang" placeholder="ID Ruang" value="{{ $jadwal->id_ruang }}">
        @if ($errors->has('id_ruang'))
            <span class="help-block">{{ $errors->first('id_ruang') }}</span>
        @endif
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-info">Simpan</button>
        <a href="{{ route('article.index') }}" class="btn btn-default">Kembali</a>
    </div>
</form>
@endsection
