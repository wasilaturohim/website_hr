<?php

        $sql_cek = "SELECT * FROM tb_profil";
        $query_cek = mysqli_query($koneksi, $sql_cek);
		$data_cek = mysqli_fetch_array($query_cek,MYSQLI_BOTH);
		{

		
?>
<div class="container-fluid">
  <div class="d-sm-flex align-items-center justify-content-between mb-0 dashboard">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    <div class="date-clock" style="display: flex; align-items: center;">
      <div id="date" style="margin-right: 10px;"></div> <h>|</h>
      <div id="clock" style="margin-left: 10px;"></div>
    </div>
  </div>
  <!-- Content Row -->
</div>

<!-- Content Row -->
<?php
		}
	$sql = $koneksi->query("SELECT count(Nama_Karyawan) as total from tb_pegawai");
	while ($data= $sql->fetch_assoc()) {
	
		$total=$data['total'];
	}
?>
<div class="row">

	<!-- Earnings (Monthly) Card Example -->
	<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body" onclick="location.href='performance.php';" style="cursor: pointer;">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                        Performance Unit
                    </div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">Rp 500.000.000,00</div>
                </div>
                <div class="col-auto">
                    <i class="fas fa-calendar fa-2x text-gray" onclick="location.href='performance.php';" style="cursor: pointer;"></i>
                </div>
            </div>
        </div>
    </div>
</div>


	<!-- Total Karyawan Card Example -->
	<div class="col-xl-3 col-md-6 mb-4">
		<div class="card border-left-primary shadow h-100 py-2">
			<div class="card-body">
				<div class="row no-gutters align-items-center">
					<div class="col mr-2">
						<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
							Behavior</div>
						<div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $total;  ?></div>
					</div>
					<div class="col-auto">
						<i class="fas fa-user fa-2x text-gray"></i>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Earnings (Monthly) Card Example -->
	<div class="col-xl-3 col-md-6 mb-4">
		<div class="card border-left-info shadow h-100 py-2">
			<div class="card-body">
				<div class="row no-gutters align-items-center">
					<div class="col mr-2">
						<div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks
						</div>
						<div class="row no-gutters align-items-center">
							<div class="col-auto">
								<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
							</div>
							<div class="col">
								<div class="progress progress-sm mr-2">
									<div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-auto">
						<i class="fas fa-clipboard-list fa-2x text-gray"></i>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Pending Requests Card Example -->
	<div class="col-xl-3 col-md-6 mb-4">
		<div class="card border-left-warning shadow h-100 py-2">
			<div class="card-body">
				<div class="row no-gutters align-items-center">
					<div class="col mr-2">
						<div class="text-xs font-weight-bold text-info text-uppercase mb-1">
							Medical</div>
						<div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
					</div>
					<div class="col-auto">
						<i class="fas fa-briefcase-medical fa-2x text-gray"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script>
	function updateClock() {
		var currentTime = new Date();
		var hours = currentTime.getHours();
		var minutes = currentTime.getMinutes();
		var seconds = currentTime.getSeconds();

		// Tambahkan angka 0 di depan jam, menit, dan detik jika hanya satu digit
		hours = (hours < 10 ? "0" : "") + hours;
		minutes = (minutes < 10 ? "0" : "") + minutes;
		seconds = (seconds < 10 ? "0" : "") + seconds;

		// Tampilkan waktu dalam elemen dengan id "clock"
		document.getElementById("clock").innerHTML = hours + ":" + minutes + ":" + seconds;

		// Tampilkan tanggal dalam elemen dengan id "date"
		var days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
		var months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
		var day = days[currentTime.getDay()];
		var month = months[currentTime.getMonth()];
		var date = currentTime.getDate();
		var year = currentTime.getFullYear();
		var fullDate = day + ", " + date + " " + month + " " + year;
		document.getElementById("date").innerHTML = fullDate;
	}

	setInterval(updateClock, 1000);
</script>

<?php
	$sql = $koneksi->query("SELECT count(Nama_Karyawan) as lokal from tb_pegawai");
	while ($data= $sql->fetch_assoc()) {
	
		$lokal=$data['lokal'];
	}
?>

<?php
	$sql = $koneksi->query("SELECT count(Nama_Karyawan) as putra from tb_pegawai where jenis_kelamin='Laki-Laki'");
	while ($data= $sql->fetch_assoc()) {
	
		$putra=$data['putra'];
	}
?>

<?php
	$sql = $koneksi->query("SELECT count(Nama_Karyawan) as putri from tb_pegawai where jenis_kelamin='Perempuan'");
	while ($data= $sql->fetch_assoc()) {
	
		$putri=$data['putri'];
	}
?>

<?php
	$sql = $koneksi->query("SELECT count(id_pengguna) as boyong from tb_pengguna");
	while ($data= $sql->fetch_assoc()) {
	
		$boyong=$data['boyong'];
	}
?>

<div class="row">
	<div class="col-lg-3 col-6">
		<!-- small box -->
		<div class="small-box bg-primary">
			<div class="inner">
				<h3>
					<?php echo $lokal;  ?>
				</h3>

				<p>Jumlah Karyawan</p>
			</div>
			<div class="icon">
				<i class="ion ion-person-add"></i>
			</div>
			<a href="index.php?page=data-pegawai" class="small-box-footer">Selengkapnya
				<i class="fas fa-arrow-circle-right"></i>
			</a>
		</div>
	</div>
	<!-- ./col -->
	<div class="col-lg-3 col-6">
		<!-- small box -->
		<div class="small-box bg-success">
			<div class="inner">
				<h3>
					<?php echo $putra;  ?>
				</h3>

				<p>Laki-Laki </p>
			</div>
			<div class="icon">
				<i class="ion ion-pie-graph"></i>
			</div>
			<a href="#" class="small-box-footer">Informasi
			</a>
		</div>
	</div>
	<!-- ./col -->
	<div class="col-lg-3 col-6">
		<!-- small box -->
		<div class="small-box bg-pink">
			<div class="inner">
				<h3>
					<?php echo $putri; ?>
				</h3>

				<p>Perempuan</p>
			</div>
			<div class="icon">
				<i class="ion ion-pie-graph"></i>
			</div>
			<a href="#" class="small-box-footer">Informasi
			</a>
		</div>
	</div>
	<!-- ./col -->
	<div class="col-lg-3 col-6">
		<!-- small box -->
		<div class="small-box bg-warning">
			<div class="inner">
				<h3>
					<?php echo $boyong;  ?>
				</h3>

				<p>Pengguna Sistem</p>
			</div>
			<div class="icon">
				<i class="ion ion-android-happy"></i>
			</div>
			<a href="index.php?page=data-pengguna" class="small-box-footer">Informasi
			</a>
		</div>
	</div>
<body>
		<div class="container">
			<div class="row">
				<div class="col-md-6 mb-4">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Chart Bar Data Karyawan</h4>
							<canvas id="chart-bar-karyawan"></canvas>
						</div>
					</div>
				</div>
				<div class="col-md-6 mb-4">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Chart Bar (Tahun Lahir)</h4>
							<canvas id="chart-bar-tahun-lahir"></canvas>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 mb-4">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Chart Doughnut</h4>
							<canvas id="chart-doughnut"></canvas>
						</div>
					</div>
				</div>
				<div class="col-md-6 mb-4">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Chart Pie</h4>
							<canvas id="chart-pie"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
			document.addEventListener("DOMContentLoaded", function() {
				const divisiPerusahaan = ['Telkom', 'GSD', 'Telkom Akses', 'CDC', 'CS', 'Freelance', 'Infomedia', 'ISH'];
				const karyawanA = [18, 4, 7, 1, 5, 3, 9, 21, 20];
				const karyawanB = [8, 1, 0, 1, 4, 1, 9, 5, 20];

				var ctx = document.getElementById('chart-bar-karyawan').getContext('2d');
				var chart = new Chart(ctx, {
					type: 'bar',
					data: {
						labels: divisiPerusahaan,
						datasets: [{
							label: 'Laki-Laki',
							data: karyawanA,
							backgroundColor: 'rgba(54, 162, 235, 0.5)',
							borderColor: 'rgba(54, 162, 235, 1)',
							borderWidth: 1
						}, {
							label: 'Perempuan',
							data: karyawanB,
							backgroundColor: 'rgba(255, 99, 132, 0.5)',
							borderColor: 'rgba(255, 99, 132, 1)',
							borderWidth: 1
						}]
					},
					options: {
						responsive: true,
						scales: {
							x: {
								grid: {
									display: false
								}
							},
							y: {
								beginAtZero: true,
								ticks: {
									stepSize: 10
								}
							}
						},
						plugins: {
							datalabels: {
								anchor: 'end',
								align: 'top',
								formatter: function(value, context) {
									var datasetLabel = context.dataset.label || '';
									var total = 0;
									if (datasetLabel === 'Laki-Laki') {
										total = karyawanA[context.dataIndex];
									} else if (datasetLabel === 'Perempuan') {
										total = karyawanB[context.dataIndex];
									}
									if (value > 0) {
										return value + " (" + total + ")";
									} else {
										return '';
									}
								}
							}
						}
					}
				});

				// Chart Doughnut
				var ctxDoughnut = document.getElementById('chart-doughnut').getContext('2d');
				var chartDoughnut = new Chart(ctxDoughnut, {
					type: 'doughnut',
					data: {
						labels: ['Laki-Laki', 'Perempuan'],
						datasets: [{
							data: [
								karyawanA.reduce((a, b) => a + b, 0),
								karyawanB.reduce((a, b) => a + b, 0)
							],
							backgroundColor: ['rgba(54, 162, 235, 0.8)', 'rgba(255, 99, 132, 0.8)'],
							borderColor: 'rgba(255, 255, 255, 1)',
							borderWidth: 1
						}]
					},
					options: {
						responsive: true
					}
				});

				// Pie Chart
				var ctxPie = document.getElementById('chart-pie').getContext('2d');
				var chartPie = new Chart(ctxPie, {
					type: 'pie',
					data: {
						labels: ['Telkom', 'GSD', 'Telkom Akses', 'CDC', 'CS', 'Freelance', 'Infomedia', 'ISH'],
						datasets: [{
							data: [26, 5, 7, 2, 9, 4, 18, 26],
							backgroundColor: ['rgba(245, 41, 39, 0.8)', 'rgba(34, 54, 243, 0.8)', 'rgba(238, 245, 42, 0.8)', 'rgba(243, 123, 34, 0.8)', 'rgba(58, 243, 34, 0.8)', 'rgba(54, 162, 235, 0.8)', 'rgba(255, 99, 132, 0.8)', 'rgba(75, 192, 192, 0.8)'],
							borderColor: 'rgba(255, 255, 255, 1)',
							borderWidth: 1
						}]
					},
					options: {
						responsive: true
					}
				});

				// Chart Bar (Tahun Lahir)
				var ctxBarTahunLahir = document.getElementById('chart-bar-tahun-lahir').getContext('2d');
				var chartBarTahunLahir = new Chart(ctxBarTahunLahir, {
					type: 'horizontalBar',
					data: {
						labels: ['Gen X', 'Gen Y', 'Gen Z'],
						datasets: [{
							label: 'Jumlah',
							data: [85, 80, 70, 50],
							backgroundColor: 'rgba(75, 192, 192, 0.8)',
							borderColor: 'rgba(75, 192, 192, 1)',
							borderWidth: 1
						}]
					},
					options: {
						responsive: true,
						indexAxis: 'y',
						scales: {
							x: {
								beginAtZero: true,
								min: 0,
								max: 100
							}
						}
					}
				});
			});
		</script>
</body>
<style>
	.dashboard {
    padding: 10px;
}

	.dashboard .label {
    margin-right: 5px;
}

    #date {
        margin-right: 10px;
}

</style>

</html>

<!-- Bootstrap core JavaScript-->
<script src="assets/dashboard/vendor/jquery/jquery.min.js"></script>
<script src="assets/dashboard/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="assets/dashboard/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="assets/dashboard/js/sb-admin-2.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>

<!-- Jquery JS-->
<script src="vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="vendor/bootstrap-4.1/popper.min.js"></script>
<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="vendor/slick/slick.min.js">
</script>
<script src="vendor/wow/wow.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="vendor/circle-progress/circle-progress.min.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="vendor/select2/select2.min.js">
</script>
<script src="vendor/vector-map/jquery.vmap.js"></script>
<script src="vendor/vector-map/jquery.vmap.min.js"></script>
<script src="vendor/vector-map/jquery.vmap.sampledata.js"></script>
<script src="vendor/vector-map/jquery.vmap.world.js"></script>

<!-- Main JS-->
<script src="js/main.js"></script>
</body>

</html>