<div class="card card-primary">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-edit"></i> Tambah Data</h3>
	</div>
	<form action="" method="post" enctype="multipart/form-data">
		<div class="card-body">
		<div class="form-group row">
				<label class="col-sm-2 col-form-label">Nama Karyawan</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="Nama_Karyawan" name="Nama_Karyawan" placeholder="Isi Nama Karyawan" required>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Klasifikasi</label>
				<div class="col-sm-5">
                    <select name="Klasifikasi" id="Klasifikasi" class="form-control">
                    <option>- Pilih Klasifikasi -</option>
						<option>ORGANIK</option>
						<option>ORGANIK AP</option>
                        <option>NON ORGANIK AP</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Status Kontrak</label>
				<div class="col-sm-5">
                    <select name="status_kontrak" id="status_kontrak" class="form-control">
                    <option>- Pilih Status Kontrak -</option>
						<option>PWKT</option>
						<option>PWKTT</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Pengelola</label>
				<div class="col-sm-5">
					<select name="pengelola" id="pengelola" class="form-control">
                    <option>- Pilih Pengelola -</option>
						<option>TELKOM</option>
						<option>GSD</option>
                        <option>TELKOM AKSES</option>
                        <option>CDC</option>
                        <option>CS</option>
                        <option>FREELANCE</option>
                        <option>INFOMEDIA</option>
                        <option>ISH</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Jenis Kelamin</label>
				<div class="col-sm-5">
					<select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
						<option>- Pilih -</option>
						<option>Perempuan</option>
						<option>Laki-Laki</option>
					</select>
				</div>
			</div>
            <div class="form-group row">
				<label class="col-sm-2 col-form-label">NIK Karyawan</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="NIK_Karyawan" name="NIK_Karyawan" placeholder="Isi NIK Karyawan" required>
				</div>
			</div>
            <div class="form-group row">
				<label class="col-sm-2 col-form-label">Unit</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="Unit" name="Unit" placeholder="Isi Unit" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Posisi</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="Posisi" name="Posisi" placeholder="Isi Posisi" required>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Foto Karyawan</label>
				<div class="col-sm-6">
					<input type="file" id="foto" name="foto">
					<p class="help-block">
						<font color="red">"Format file Jpg/Png"</font>
					</p>
				</div>
			</div>


		</div>
		<div class="card-footer">
			<input type="submit" name="Simpan" value="Simpan" class="btn btn-info">
			<a href="?page=data-pegawai" title="Kembali" class="btn btn-secondary">Batal</a>
		</div>
	</form>
</div>

<?php
	$sumber = @$_FILES['foto']['tmp_name'];
	$target = 'foto/';
	$nama_file = @$_FILES['foto']['name'];
	$pindah = move_uploaded_file($sumber, $target.$nama_file);

    if (isset ($_POST['Simpan'])){

		if(!empty($sumber)){
        $sql_simpan = "INSERT INTO tb_pegawai (Nama_Karyawan, Klasifikasi, status_kontrak, pengelola, jenis_kelamin, NIK_Karyawan, Unit, Posisi, foto) VALUES (
		'".$_POST['Nama_Karyawan']."',
		'".$_POST['Klasifikasi']."',
		'".$_POST['status_kontrak']."',
		'".$_POST['pengelola']."',
		'".$_POST['jenis_kelamin']."',
		'".$_POST['NIK_Karyawan']."',
		'".$_POST['Unit']."',
		'".$_POST['Posisi']."',
		'".$nama_file."')";
        $query_simpan = mysqli_query($koneksi, $sql_simpan);
        mysqli_close($koneksi);

    if ($query_simpan) {
		echo "<script>
		Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
		}).then((result) => {if (result.value){
			window.location = 'index.php?page=data-pegawai';
			}
		})</script>";
		}else{
		echo "<script>
		Swal.fire({title: 'Tambah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
		}).then((result) => {if (result.value){
			window.location = 'index.php?page=add-pegawai';
			}
		})</script>";
	}
	}elseif(empty($sumber)){
		echo "<script>
		Swal.fire({title: 'Gagal, Foto Wajib Diisi',text: '',icon: 'error',confirmButtonText: 'OK'
		}).then((result) => {
			if (result.value) {
				window.location = 'index.php?page=add-pegawai';
			}
		})</script>";
	}
	}
     //selesai proses simpan data
