<!DOCTYPE html>
<html>
<head>
 <title>Contact</title>
 <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">

<nav class="navbar navbar-inverse">
 <div class="navbar-header">
  <a class="navbar-brand" href="{{ URL::to('/') }}">Home</a>
 </div>
</nav>

<h1>Tambah Pertemuan</h1>

<!-- if there are creation errors, they will show here -->

<table>
	<form action="{{ url('') }}" method="POST" enctype="multipart/form-data">

		<tr>
			<td>ID Jadwal : </td>
			<td><input type="text" name="id_jdwl" value="{{$id_jadwal}}" disabled></td>
		</tr>
		<tr>
			<td>NIP Dosen :</td>
			<td><input type="text" name="nip_dosen"></td>
		</tr>
		<tr>
			<td>Kesesuaian RKPS :</td>
			<td><input type="text" name="kesesuaian_rkps"></td>
		</tr>
		<tr>
			<td>Capaian :</td>
			<td><input type="text" name="capaian"></td>
		</tr>
		<tr>
			<td>Waktu Mulai :</td>
			<td><input type="time" name="waktu_mulai"></td>
		</tr>
    <tr>
			<td>Waktu Selesai :</td>
			<td><input type="time" name="waktu_selesai"></td>
		</tr>
    <tr>
			<td>Keterangan :</td>
			<td><input type="text" name="keterangan"></td>
		</tr>
    <tr>
			<td>Materi :</td>
			<td><input type="file" name="materi"></td>
		</tr>
			<td><input type="submit" name="aksi" value="tambah"></td>
	</form>
</table>

</div>
</body>
</html>
