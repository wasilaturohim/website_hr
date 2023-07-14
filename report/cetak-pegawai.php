<?php
	include "../inc/koneksi.php";
	
	$nip = $_GET['nip'];

	$sql_cek = "SELECT * FROM tb_profil";
	$query_cek = mysqli_query($koneksi, $sql_cek);
	$data_cek = mysqli_fetch_array($query_cek, MYSQLI_BOTH);
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<title>CETAK DATA PEGAWAI</title>
</head>

<body>
	<center>
		<h2><?php echo $data_cek['nama_profil']; ?></h2>
		<h3><?php echo $data_cek['alamat']; ?></h3>
		<hr size="2px" color="black">

		<?php
		$sql_tampil = "SELECT * FROM tb_pegawai WHERE Nama_Karyawan = '$nip'";
		$query_tampil = mysqli_query($koneksi, $sql_tampil);
		$no = 1;
		while ($data = mysqli_fetch_array($query_tampil, MYSQLI_BOTH)) {
		?>
	</center>

	<center>
		<h4><u>DATA PEGAWAI</u></h4>
	</center>

	<table border="1" style="width: 90%" align="center">
		<tbody>
			<tr>
				<td>Foto</td>
				<td>:</td>
				<td><?php echo $data['foto']; ?></td>
				<td rowspan="6" align="center">
					<img src="../foto/<?php echo $data['foto']; ?>" width="150px" />
				</td>
			</tr>
			<tr>
				<td>Nama Karyawan</td>
				<td>:</td>
				<td><?php echo $data['Nama_Karyawan']; ?></td>
			</tr>
			<tr>
				<td>Klasifikasi</td>
				<td>:</td>
				<td><?php echo $data['Klasifikasi']; ?></td>
			</tr>
			<tr>
				<td>Status Kontrak</td>
				<td>:</td>
				<td><?php echo $data['status_kontrak']; ?></td>
			</tr>
			<tr>
				<td>Pengelola</td>
				<td>:</td>
				<td><?php echo $data['pengelola']; ?></td>
			</tr>
			<tr>
				<td>Jenis Kelamin</td>
				<td>:</td>
				<td><?php echo $data['jenis_kelamin']; ?></td>
			</tr>
		<?php } ?>
		</tbody>
	</table>

	<script>
		window.print();
	</script>
</body>

</html>
