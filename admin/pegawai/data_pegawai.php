<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0 text-dark">Database Karyawan </h1>
			</div><!-- /.col -->
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="index.php">Home</a></li>
					<li class="breadcrumb-item active">Database Karyawan</li>
				</ol>
			</div><!-- /.col -->
		</div><!-- /.row -->
	</div><!-- /.container-fluid -->
</div>
<div class="card card-info">
	<div class="card-header">
		<h3 class="card-title">
			<i class="fa fa-table"></i> Data Karyawan</h3>
	</div>
	<!-- /.card-header -->
	<div class="card-body">
		<div class="table-responsive">
			<div>
				<a href="?page=add-pegawai" class="btn btn-primary">
					<i class="fa fa-edit"></i> Tambah Data</a>
			</div>
			<br>
			<table id="example1" class="table">
				<thead class="text-center" style="background-color: lightgray;">
					<tr>
						<th style="color: black;">No</th>
						<th style="color: black;">Nama Karyawan</th>
						<th style="color: black;">Pengelola</th>
						<th style="color: black;">Unit</th>
						<th style="color: black;">Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$no = 1;
						$sql = $koneksi->query("SELECT * from tb_pegawai");
						while ($data= $sql->fetch_assoc()) {
					?>

					<tr class="row-color">
						<td class="align-middle text-center">
							<?php echo $no++; ?>
						</td>
						<td class="align-left" >
							<div class="employee-info">
								<div class="employee-details">
									<div class="employee-image mr-5 justify-content-center">
										<img src="foto/<?php echo $data['foto']; ?>" width="50px" style="text-align: left;" />
									</div>
									<div class="employee-data">
										<?php if ($data['jenis_kelamin'] == 'LAKI-LAKI'): ?>
											<div class="employee-name" style="color: blue;">
												<?php echo $data['Nama_Karyawan']; ?>
											</div>
										<?php else: ?>
											<div class="employee-name" style="color: hotpink;">
												<?php echo $data['Nama_Karyawan']; ?>
											</div>
										<?php endif; ?>
										<div class="employee-position"><?php echo $data['Posisi']; ?></div>
										<div class="employee-nik"><?php echo $data['NIK_Karyawan']; ?></div>
									</div>
								</div>
							</div>
						</td>
						<td class="align-middle text-center">
							<?php echo $data['pengelola']; ?>
						</td>
						<td class="align-middle text-center">
							<?php echo $data['Unit']; ?>
						</td>

						<td class="align-middle d-flex justify-content-center">
							<a href="?page=view-pegawai&kode=<?php echo $data['Nama_Karyawan']; ?>" title="Detail" class="btn btn-info btn-sm mr-1">
								<i class="fa fa-eye"></i>
							</a>
							<a href="?page=edit-pegawai&kode=<?php echo $data['Nama_Karyawan']; ?>" title="Ubah" class="btn btn-success btn-sm mr-1">
								<i class="fa fa-edit"></i>
							</a>
							<a href="?page=del-pegawai&kode=<?php echo $data['Nama_Karyawan']; ?>" onclick="return confirm('Apakah anda yakin hapus data ini ?')"
							 title="Hapus" class="btn btn-danger btn-sm">
								<i class="fa fa-trash"></i>
						</td>
					</tr>

					<?php
              }
            ?>
				</tbody>
				</tfoot>
			</table>
		</div>
	</div>
	<!-- /.card-body -->
</div>

<style>
  .employee-name,
  .employee-position,
  .employee-nik {
    text-transform: uppercase;
  }
</style>
<style>
	.employee-details {
		display: flex;
		align-items: center;
	}
	.employee-image img {
        width: 50px;
        height: 50px;
        object-fit: cover;
        border-radius: 50%;
  	}
</style>
<style>
    .row-color:nth-child(even) {
        background-color: #f2f2f2;
    }
    .row-color:nth-child(odd) {
        background-color: #f7f7f7;
    }
	.row-color:hover {
        background-color: #e6e6e6;
	}
</style>


