<?php

    if(isset($_GET['kode'])){
        $sql_cek = "SELECT * from tb_pegawai WHERE Nama_Karyawan='".$_GET['kode']."'";
        $query_cek = mysqli_query($koneksi, $sql_cek);
        $data_cek = mysqli_fetch_array($query_cek,MYSQLI_BOTH);
    }
?>
<div class="row">

	<div class="col-md-8">
		<div class="card card-info">
			<div class="card-header">
				<h3 class="card-title">Detail Pegawai</h3>

				<div class="card-tools">
				</div>
			</div>
			<div class="card-body p-0">
				<table class="table">
					<tbody>
						<tr>
							<td style="width: 150px">
								<b>Nama Karyawan</b>
							</td>
							<td>:
								<?php echo $data_cek['Nama_Karyawan']; ?>
							</td>
						</tr>
						<tr>
							<td style="width: 150px">
								<b>Klasifikasi</b>
							</td>
							<td>:
								<?php echo $data_cek['Klasifikasi']; ?>
							</td>
						</tr>
						<tr>
							<td style="width: 150px">
								<b>Status Kontrak</b>
							</td>
							<td>:
								<?php echo $data_cek['status_kontrak']; ?>
							</td>
						</tr>
						<tr>
							<td style="width: 150px">
								<b>Pengelola</b>
							</td>
							<td>:
								<?php echo $data_cek['pengelola']; ?>
							</td>
						</tr>
						<tr>
							<td style="width: 150px">
								<b>Jenis Kelamin</b>
							</td>
							<td>:
								<?php echo $data_cek['jenis_kelamin']; ?>
							</td>
						</tr>
						<tr>
							<td style="width: 150px">
								<b>NIK Karyawan</b>
							</td>
							<td>:
								<?php echo $data_cek['NIK_Karyawan']; ?>
							</td>
						</tr>
						<tr>
							<td style="width: 150px">
								<b>Unit</b>
							</td>
							<td>:
								<?php echo $data_cek['Unit']; ?>
							</td>
						</tr>
						<tr>
							<td style="width: 150px">
								<b>Posisi</b>
							</td>
							<td>:
								<?php echo $data_cek['Posisi']; ?>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="card-footer">
					<a href="?page=data-pegawai" class="btn btn-warning">Kembali</a>

					<a href="./report/cetak-pegawai.php?nip=<?php echo $data_cek['Nama_Karyawan']; ?>" target=" _blank"
					 title="Cetak Data Pegawai" class="btn btn-primary">Print</a>
				</div>
			</div>
		</div>
	</div>

	<div class="col-md-4">
		<div class="card card-success">
			<div class="card-header">
				<center>
					<h3 class="card-title">
						Foto Pegawai
					</h3>
				</center>

				<div class="card-tools">
				</div>
			</div>
			<div class="card-body">
				<div class="text-center">
					<img src="foto/<?php echo $data_cek['foto']; ?>" width="280px" />
				</div>

				<h3 class="profile-username text-center">
					<?php echo $data_cek['NIK_Karyawan']; ?>
					-
					<?php echo $data_cek['Nama_Karyawan']; ?>
				</h3>
			</div>
		</div>
	</div>

</div>