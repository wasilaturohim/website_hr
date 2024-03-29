<?php
  include "inc/koneksi.php";
  include "inc/telegram_bot.php";
?>

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
				<form action="" method="post">
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="username" placeholder="Username" required>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-user"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" class="form-control" name="password" placeholder="Password" required>
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<button type="submit" class="btn btn-primary btn-block btn-flat" name="btnLogin" title="Masuk Sistem">
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

if (isset($_POST['btnLogin'])) {  
    // anti inject sql
    $username = mysqli_real_escape_string($koneksi, $_POST['username']);
    $password = mysqli_real_escape_string($koneksi, $_POST['password']);

    // query login
    $sql_login = "SELECT * FROM tb_pengguna WHERE BINARY username='$username' AND password='$password'";
    $result = mysqli_query($koneksi, $sql_login);
    if (mysqli_num_rows($result) > 0) {
        $data_login = mysqli_fetch_assoc($result);

        // Simpan data pengguna ke session
        // $_SESSION['username'] = $user['username'];
        // $_SESSION['nama_pengguna'] = $user['nama_pengguna'];
        // $_SESSION['id_telegram'] = $user['id_telegram'];
		$_SESSION["ses_id"]=$data_login["id_pengguna"];
		$_SESSION["ses_nama"]=$data_login["nama_pengguna"];
		$_SESSION["ses_username"]=$data_login["username"];
		$_SESSION["ses_password"]=$data_login["password"];
		$_SESSION["ses_level"]=$data_login["level"];
        $_SESSION['ses_id_telegram'] = $data_login['id_telegram'];

        function generateOTP() {
            $otpLength = 6;
            $otp = '';

            // Membangkitkan OTP acak dengan angka dari 0 hingga 9
            for ($i = 0; $i < $otpLength; $i++) {
                $otp .= mt_rand(0, 9);
            }

            return $otp;
        }

        // Menghasilkan OTP
        $otp = generateOTP();

        // Menyimpan OTP ke dalam database
        $sql_update = "UPDATE tb_pengguna SET kode_otp = '$otp' WHERE username = '$username'";
        mysqli_query($koneksi, $sql_update);

        // Mengirim OTP melalui bot Telegram
        kirimOTPviaTelegram($data_login['id_telegram'], $otp);

        // Redirect ke halaman verifikasi OTP
        header("Location: verifikasi_otp.php");
        exit();
    } else {
        $error_msg = "Username atau password salah.";
    }
}
?>

