<div class="card card-primary">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-edit"></i> Tambah Data</h3>
	</div>
	<form action="" method="post" enctype="multipart/form-data">
		<div class="card-body">

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Nama User</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="nama_pengguna" name="nama_pengguna" placeholder="Nama user" required>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Username</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Password</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">ID Telegram</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="id_telegram" name="id_telegram" onkeyup="validateNama()" placeholder="ID Telegram" required>
					<p id="namaValidasi" style="font-size: .8rem;"></p>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Level</label>
				<div class="col-sm-4">
					<select name="level" id="level" class="form-control" required>
						<option>- Pilih -</option>
						<option>Administrator</option>
						<option>Sekretaris</option>
					</select>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Foto User</label>
				<div class="col-sm-6">
					<input type="file" id="foto_user" name="foto_user" required>
					<p class="help-block">
						<font color="red">"Format file Jpg/Png"</font>
					</p>
				</div>
			</div>

		</div>
		<div class="card-footer">
			<input type="submit" name="Simpan" value="Simpan" id="submitButton" class="btn btn-info">
			<a href="?page=data-pengguna" title="Kembali" class="btn btn-secondary">Batal</a>
		</div>
	</form>
</div>
<script>
	    const disableSubmitButton = () => {
      document.getElementById('submitButton').disabled = true;
    }

    const enableSubmitButton = () => {
      document.getElementById('submitButton').disabled = false;
    }

	const validateNama = () => {
  nama = document.getElementById('id_telegram').value;
  validasi = document.getElementById('namaValidasi');

  cond = /^\d+$/;

  if (nama.match(cond)) {
    validasi.setAttribute('style', 'color: blue;');
    validasi.innerText = 'Valid';

    enableSubmitButton();

  } else {
    validasi.setAttribute('style', 'color: red;');
    validasi.innerText = 'Mohon hanya masukkan angka';

    disableSubmitButton();

  }
}
</script>
<?php

    if (isset ($_POST['Simpan'])){
    //mulai proses simpan data
        $sql_simpan = "INSERT INTO tb_pengguna (nama_pengguna,username,password,level,id_telegram) VALUES (
        '".$_POST['nama_pengguna']."',
        '".$_POST['username']."',
        '".$_POST['password']."',
        '".$_POST['level']."',
        '".$_POST['id_telegram']."')";
        $query_simpan = mysqli_query($koneksi, $sql_simpan);
        mysqli_close($koneksi);

    if ($query_simpan) {
      echo "<script>
      Swal.fire({title: 'Tambah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
      }).then((result) => {if (result.value){
          window.location = 'index.php?page=data-pengguna';
          }
      })</script>";
      }else{
      echo "<script>
      Swal.fire({title: 'Tambah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
      }).then((result) => {if (result.value){
          window.location = 'index.php?page=add-pengguna';
          }
      })</script>";
    }}
     //selesai proses simpan data
