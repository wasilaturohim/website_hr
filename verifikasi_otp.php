<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>login | Human Resource</title>
	<link rel="icon" href="https://www.telkom.co.id/data/image_upload/page/1594112895830_compress_PNG%20Icon%20Telkom.png">
	<!-- Tell the browser to be responsive to screen width -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Font Awesome -->
	<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- icheck bootstrap -->
	<link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="dist/css/adminlte.min.css">
	<!-- Google Font: Source Sans Pro -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition login-page">
	<div class="login-box">

		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<div class="login-logo">
					<a href="login.php">
						<font color="black">
							<b>LOGIN</b>
						</font>
					</a>
				</div>
				<center>
					<img src="https://www.telkom.co.id/data/image_upload/page/1594112895830_compress_PNG%20Icon%20Telkom.png" width=180px />
					<br>
					<br>
				</center>
				<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="kode_otp" placeholder="Kode OTP" required>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-user"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<button type="submit" class="btn btn-primary btn-block btn-flat" name="proses" title="Masuk Sistem">
								<b>Masuk</b>
							</button>
						</div>
				</form>

			</div>
		</div>
	</div>
	<!-- /.login-box -->

	<!-- jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- Alert -->
	<script src="plugins/alert.js"></script>

</body>

</html>
<?php
session_start();
include "inc/koneksi.php";

// Cek apakah pengguna sudah login atau belum
if (!isset($_SESSION['ses_username'])) {
	header("Location: login.php");
	exit();
}

if (isset($_POST['proses'])) {
	$kode_otp   = $_POST['kode_otp'];
	$username  = $_SESSION['ses_username'];
	// chek
	$sql = mysqli_query($koneksi, "SELECT * FROM tb_pengguna where username='$username' and kode_otp='$kode_otp'");
	$chek = mysqli_num_rows($sql);
	if ($chek > 0) {
		$_SESSION['status_login'] = TRUE;
		echo "<script>
			Swal.fire({title: 'Login Berhasil',text: 'Mengalihkan Halaman Anda',icon: 'success',confirmButtonText: 'OK'
			}).then((result) => {if (result.value)
				{window.location = 'index.php';}
			})</script>";
	} else {
		echo "KODE OTP SALAH";
	}
}
?>