<?php


    if(isset($_GET['kode'])){
        $sql_cek = "SELECT * FROM tb_pegawai WHERE Nama_Karyawan='".$_GET['kode']."'";
        $query_cek = mysqli_query($koneksi, $sql_cek);
        $data_cek = mysqli_fetch_array($query_cek,MYSQLI_BOTH);
    }
?>

<div class="card card-success">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-edit"></i> Ubah Data</h3>
	</div>
	<form action="" method="post" enctype="multipart/form-data">
		<div class="card-body">

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Nama Karyawan</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="Nama_Karyawan" name="Nama_Karyawan" value="<?php echo $data_cek['Nama_Karyawan']; ?>"
					 readonly/>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Klasifikasi</label>
				<div class="col-sm-5">
					<select name="Klasifikasi" id="Klasifikasi" class="form-control">
						<option value="">-- Pilih --</option>
						<?php
                //cek data yg dipilih sebelumnya
                if ($data_cek['Klasifikasi'] == "ORGANIK") echo "<option value='ORGANIK' selected>ORGANIK</option>";
                else echo "<option value='ORGANIK'>ORGANIK</option>";

                if ($data_cek['Klasifikasi'] == "ORGANIK AP") echo "<option value='ORGANIK AP' selected>ORGANIK AP</option>";
                else echo "<option value='ORGANIK AP'>ORGANIK AP</option>";

				if ($data_cek['Klasifikasi'] == "NON ORGANIK AP") echo "<option value='NON ORGANIK AP' selected>NON ORGANIK AP</option>";
                else echo "<option value='NON ORGANIK AP'>NON ORGANIK AP</option>";
            			?>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Status Kontrak</label>
				<div class="col-sm-5">
				<select name="status_kontrak" id="status_kontrak" class="form-control">
						<option value="">-- Pilih --</option>
						<?php
                //cek data yg dipilih sebelumnya
                if ($data_cek['status_kontrak'] == "PWKT") echo "<option value='PWKT' selected>PWKT</option>";
                else echo "<option value='PWKT'>PWKT</option>";

                if ($data_cek['status_kontrak'] == "PWKTT") echo "<option value='PWKTT' selected>PWKTT</option>";
                else echo "<option value='PWKTT'>PWKTT</option>";
            			?>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Pengelola</label>
				<div class="col-sm-5">
				<select name="pengelola" id="pengelola" class="form-control">
						<option value="">-- Pilih --</option>
						<?php
                //cek data yg dipilih sebelumnya
                if ($data_cek['pengelola'] == "TELKOM") echo "<option value='TELKOM' selected>TELKOM</option>";
                else echo "<option value='TELKOM'>TELKOM</option>";

                if ($data_cek['pengelola'] == "GSD") echo "<option value='GSD' selected>GSD</option>";
                else echo "<option value='GSD'>GSD</option>";

				if ($data_cek['pengelola'] == "TELKOM AKSES") echo "<option value='TELKOM AKSES' selected>TELKOM AKSES</option>";
                else echo "<option value='TELKOM AKSES'>TELKOM AKSES</option>";

				if ($data_cek['pengelola'] == "CDC") echo "<option value='CDC' selected>CDC</option>";
                else echo "<option value='CDC'>CDC</option>";

				if ($data_cek['pengelola'] == "CS") echo "<option value='CS' selected>CS</option>";
                else echo "<option value='CS'>CS</option>";

				if ($data_cek['pengelola'] == "FREELANCE") echo "<option value='FREELANCE' selected>FREELANCE</option>";
                else echo "<option value='FREELANCE'>FREELANCE</option>";

				if ($data_cek['pengelola'] == "INFOMEDIA") echo "<option value='INFOMEDIA' selected>INFOMEDIA</option>";
                else echo "<option value='INFOMEDIA'>INFOMEDIA</option>";

				if ($data_cek['pengelola'] == "ISH") echo "<option value='ISH' selected>ISH</option>";
                else echo "<option value='ISH'>ISH</option>";
            			?>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Jenis Kelamin</label>
				<div class="col-sm-5">
				<select name="jenis_kelamin" id="jenis_kelamin" class="form-control">
						<option value="">-- Pilih --</option>
						<?php
                //cek data yg dipilih sebelumnya
                if ($data_cek['jenis_kelamin'] == "PEREMPUAN") echo "<option value='PEREMPUAN' selected>PEREMPUAN</option>";
                else echo "<option value='PEREMPUAN'>PEREMPUAN</option>";

                if ($data_cek['jenis_kelamin'] == "LAKI-LAKI") echo "<option value='LAKI-LAKI' selected>LAKI-LAKI</option>";
                else echo "<option value='LAKI-LAKI'>LAKI-LAKI</option>";
            			?>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">NIK Karyawan</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="NIK_Karyawan" name="NIK_Karyawan" value="<?php echo $data_cek['NIK_Karyawan']; ?>"
					/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Unit</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="Unit" name="Unit" value="<?php echo $data_cek['Unit']; ?>"
					/>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Posisi</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="Posisi" name="Posisi" value="<?php echo $data_cek['Posisi']; ?>"
					/>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Foto Karyawan</label>
				<div class="col-sm-6">
					<img src="foto/<?php echo $data_cek['foto']; ?>" width="160px" />
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Ubah Foto</label>
				<div class="col-sm-6">
					<input type="file" id="foto" name="foto">
					<p class="help-block">
						<font color="red">"Format file Jpg/Png"</font>
					</p>
				</div>
			</div>
		</div>

		<div class="card-footer">
			<input type="submit" name="Ubah" value="Simpan" class="btn btn-success">
			<a href="?page=data-pegawai" title="Kembali" class="btn btn-secondary">Batal</a>
		</div>
	</form>
</div>

<?php
	$sumber = @$_FILES['foto']['tmp_name'];
	$target = 'foto/';
	$nama_file = @$_FILES['foto']['name'];
	$pindah = move_uploaded_file($sumber, $target.$nama_file);

	
	if (isset($_POST['Ubah'])) {
		if (!empty($sumber)) {
			$foto = $data_cek['foto'];
			$path_foto = "foto/$foto";
			if (file_exists($path_foto)) {
				unlink($path_foto);
			}

        $sql_ubah = "UPDATE tb_pegawai SET
			Nama_Karyawan='".$_POST['Nama_Karyawan']."',
			Klasifikasi='".$_POST['Klasifikasi']."',
			status_kontrak='".$_POST['status_kontrak']."',
			pengelola='".$_POST['pengelola']."',
			jenis_kelamin='".$_POST['jenis_kelamin']."',
			NIK_Karyawan='".$_POST['NIK_Karyawan']."',
			Unit='".$_POST['Unit']."',
			Posisi='".$_POST['Posisi']."',
			foto='".$nama_file."'		
            WHERE Nama_Karyawan='".$_POST['Nama_Karyawan']."'";
        $query_ubah = mysqli_query($koneksi, $sql_ubah);

    }elseif(empty($sumber)){
		$sql_ubah = "UPDATE tb_pegawai SET
			Nama_Karyawan='".$_POST['Nama_Karyawan']."',
			Klasifikasi='".$_POST['Klasifikasi']."',
			status_kontrak='".$_POST['status_kontrak']."',
			pengelola='".$_POST['pengelola']."',
			jenis_kelamin='".$_POST['jenis_kelamin']."',
			NIK_Karyawan='".$_POST['NIK_Karyawan']."',
			Unit='".$_POST['Unit']."',
			Posisi='".$_POST['Posisi']."',
			foto='".$nama_file."'
			WHERE Nama_Karyawan='".$_POST['Nama_Karyawan']."'";
		$query_ubah = mysqli_query($koneksi, $sql_ubah);
        }

    if ($query_ubah) {
        echo "<script>
        Swal.fire({title: 'Ubah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=data-pegawai';
            }
        })</script>";
        }else{
        echo "<script>
        Swal.fire({title: 'Ubah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=data-pegawai';
            }
        })</script>";
    }
}

