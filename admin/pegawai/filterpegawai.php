<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
    
    <script>
        $(document).ready(function() {
            $('#karyawanTable').DataTable();
        });
    </script>
</head>
<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0 text-dark">Filter Karyawan </h1>
			</div><!-- /.col -->
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="index.php">Home</a></li>
					<li class="breadcrumb-item active">Filter Karyawan</li>
				</ol>
			</div><!-- /.col -->
		</div><!-- /.row -->
	</div><!-- /.container-fluid -->
</div>
<body>
    <style>
        /* Tambahkan gaya CSS di bawah ini */
        .table.table-bordered {
            background-color: white;
        }
    </style>

    <div class="container mt-2">
        <div class="row">
            <div class="col">
                <table id="karyawanTable" class="table table-bordered">
                    <thead style="background-color: lightgray;">
                        <tr>
                            <th>Unit</th>
                            <th>Jumlah Karyawan</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
    
                        if ($koneksi->connect_error) {
                            die("Koneksi gagal: " . $koneksi->connect_error);
                        }

                        $query = "
                            SELECT 
                                Unit,
                                COUNT(*) AS JumlahKaryawan
                            FROM 
                                tb_pegawai
                            GROUP BY 
                                Unit
                        ";

                        $result = $koneksi->query($query);

                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo "<tr>
                                        <td>" . $row["Unit"] . "</td>
                                        <td>" . $row["JumlahKaryawan"] . "</td>
                                      </tr>";
                            }
                        } else {
                            echo "<tr><td colspan='2'>Tidak ada data.</td></tr>";
                        }

                        $koneksi->close();
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>