-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2023 pada 06.32
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id` int(11) NOT NULL,
  `Nama_Karyawan` varchar(50) NOT NULL,
  `Klasifikasi` enum('ORGANIK','ORGANIK AP','NON ORGANIK AP') NOT NULL,
  `status_kontrak` enum('PWKT','PWKTT') NOT NULL,
  `pengelola` enum('TELKOM','GSD','TELKOM AKSES','CDC','CS','FREELANCE','INFOMEDIA','ISH') NOT NULL,
  `NIK_Karyawan` varchar(255) NOT NULL,
  `jenis_kelamin` enum('PEREMPUAN','LAKI-LAKI') NOT NULL,
  `Unit` varchar(255) NOT NULL,
  `Posisi` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id`, `Nama_Karyawan`, `Klasifikasi`, `status_kontrak`, `pengelola`, `NIK_Karyawan`, `jenis_kelamin`, `Unit`, `Posisi`, `foto`) VALUES
(1, 'ABDUL RAHMAN', 'ORGANIK', 'PWKTT', 'TELKOM', '860004', 'LAKI-LAKI', 'SHARED SERVICE OPERATION - HUMAN CAPITAL & CDC', 'MANAGER SHARED SERVICE', 'user (1).png'),
(2, 'ANGGA BAYU HARYANTO', 'ORGANIK', 'PWKTT', 'TELKOM', '960264', 'LAKI-LAKI', 'SHARED SERVICE OPERATION - HUMAN CAPITAL & CDC', 'OFF 3 HUMAN CAPITAL & CDC', 'user (1).png'),
(3, 'INDRA MARTINUS', 'ORGANIK', 'PWKTT', 'TELKOM', '655368', 'LAKI-LAKI', 'SHARED SERVICE OPERATION - FINANCE', 'SENIOR STAFF REHIRE FINANCE', 'user (1).png'),
(4, 'SITI RAMDHIANTY', 'ORGANIK', 'PWKTT', 'TELKOM', '970238', 'PEREMPUAN', 'SHARED SERVICE OPERATION - FINANCE', 'OFF 3 PAYMENT COLLECTION & CONSUMER', 'women.png'),
(5, 'HABIBILAH', 'NON ORGANIK AP', 'PWKT', 'CDC', '28611', 'LAKI-LAKI', 'SHARED SERVICE OPERATION - HUMAN CAPITAL & CDC', 'ADMIN CDC II', 'user (1).png'),
(6, 'MONICA NOPRIANTY', 'NON ORGANIK AP', 'PWKT', 'CDC', '112654', 'PEREMPUAN', 'SHARED SERVICE OPERATION - HUMAN CAPITAL & CDC', 'ADMIN CDC II', 'women.png'),
(7, 'FAISAL WAHYU DHARMAWAN', 'NON ORGANIK AP', 'PWKT', 'INFOMEDIA', '168742', 'LAKI-LAKI', 'SHARED SERVICE OPERATION - FINANCE', 'CARING TERRITORY BASED', 'user (1).png'),
(8, 'M. FURMAWANTO WARDANI', 'NON ORGANIK AP', 'PWKT', 'INFOMEDIA', '56785', 'LAKI-LAKI', 'SHARED SERVICE OPERATION - FINANCE', 'CARING TERRITORY BASED', 'user (1).png'),
(9, 'MUHAMMAD EGA SYAHPUTRA', 'NON ORGANIK AP', 'PWKT', 'INFOMEDIA', '171940', 'LAKI-LAKI', 'SHARED SERVICE OPERATION - FINANCE', 'CARING TERRITORY BASED', 'user (1).png'),
(10, 'RAHMAT FITRAH. R', 'NON ORGANIK AP', 'PWKT', 'INFOMEDIA', '101273', 'LAKI-LAKI', 'SHARED SERVICE OPERATION - FINANCE', 'CARING TERRITORY BASED', 'user (1).png'),
(11, 'TAUFIK RIDHO AS SIDDIQI', 'NON ORGANIK AP', 'PWKT', 'ISH', '201358', 'LAKI-LAKI', 'SHARED SERVICE OPERATION - FINANCE', 'HELPDESK', 'user (1).png'),
(12, 'FATHINAH QADIRIYAH', 'NON ORGANIK AP', 'PWKT', 'ISH', '200318', 'PEREMPUAN', 'SHARED SERVICE OPERATION - FINANCE', 'HELPDESK', 'women.png'),
(13, 'ADELIA PUTRI PRATIWI', 'ORGANIK', 'PWKTT', 'TELKOM', '940464', 'PEREMPUAN', 'CONSUMER SERVICE', 'OFF 3 DIGITAL & WIFI SERVICE', 'women.png'),
(14, 'CORRY SUTRISNA', 'ORGANIK', 'PWKTT', 'TELKOM', '940518', 'PEREMPUAN', 'CONSUMER SERVICE', 'OFF 3 HOME SERVICE', 'women.png'),
(15, 'SARI NOVIYENI', 'NON ORGANIK AP', 'PWKT', 'CS', '153022', 'PEREMPUAN', 'CONSUMER SERVICE', 'CANVASSER WMS', 'women.png'),
(16, 'MUHAMMAD FITRA', 'NON ORGANIK AP', 'PWKT', 'ISH', '200546', 'LAKI-LAKI', 'CONSUMER SERVICE', 'ACCOUNT MANAGER', 'user (1).png'),
(17, 'ALDAFI SALSABILLAH', 'ORGANIK', 'PWKTT', 'TELKOM', '990026', 'LAKI-LAKI', 'LOGISTIK & GENERAL SUPPORT', 'OFF 3 LOGISTIK', 'user (1).png'),
(18, 'M. RIDWAN', 'ORGANIK', 'PWKTT', 'TELKOM', '840049', 'LAKI-LAKI', 'LOGISTIK & GENERAL SUPPORT', 'MANAGER LOGISTIK & GENERAL SUPPORT', 'user (1).png'),
(19, 'ANDI SYAPUTRA ', 'ORGANIK', 'PWKTT', 'TELKOM', '850024', 'LAKI-LAKI', 'ACCESS, OPTIMA, DATA & MAINTENANCE', 'MANAGER ACCESS OPTIMA DATA & MAINTENANCE', 'user (1).png'),
(20, 'RIZVALDO RIVAI', 'ORGANIK', 'PWKTT', 'TELKOM', '940477', 'LAKI-LAKI', 'ACCESS, OPTIMA, DATA & MAINTENANCE', 'OFF 3 ACCESS MAINTENANCE & QE', 'user (1).png'),
(21, 'DEDI ARIANSYAH', 'NON ORGANIK AP', 'PWKT', 'ISH', '199102', 'LAKI-LAKI', 'ACCESS, OPTIMA, DATA & MAINTENANCE', 'ADMIN', 'user (1).png'),
(22, 'IMAN FAJAR MAULANA', 'NON ORGANIK AP', 'PWKT', 'ISH', '212088', 'LAKI-LAKI', 'ACCESS, OPTIMA, DATA & MAINTENANCE', 'TEKNISI', 'user (1).png'),
(23, 'INDRA ISKANDAR MUDA', 'NON ORGANIK AP', 'PWKT', 'ISH', '199093', 'LAKI-LAKI', 'ACCESS, OPTIMA, DATA & MAINTENANCE', 'TEAM LEADER', 'user (1).png'),
(24, 'KEFIN PUTRA YANDITO', 'NON ORGANIK AP', 'PWKT', 'ISH', '199100', 'LAKI-LAKI', 'ACCESS, OPTIMA, DATA & MAINTENANCE', 'ADMIN', 'user (1).png'),
(25, 'ARIFAN KESUMA PUTRA', 'ORGANIK', 'PWKTT', 'TELKOM', '940183', 'LAKI-LAKI', 'HEAD OF REPRESENTATIVE OFFICE', 'HEAD OF REPRESENTATIVE OFFICE (HERO) MUARA BUNGO', 'user (1).png'),
(26, 'EZRA MELIORA NAINGGOLAN', 'ORGANIK', 'PWKTT', 'TELKOM', '930276', 'PEREMPUAN', 'HEAD OF REPRESENTATIVE OFFICE', 'HEAD OF REPRESENTATIVE OFFICE (HERO) KOTA BARU', 'women.png'),
(27, 'M. RENDY', 'ORGANIK', 'PWKTT', 'TELKOM', '950467', 'LAKI-LAKI', 'HEAD OF REPRESENTATIVE OFFICE', 'HEAD OF REPRESENTATIVE OFFICE (HERO) SUNGAI PENUH', 'user (1).png'),
(28, 'MOHAMMAD YASIN RAMADHAN', 'ORGANIK', 'PWKTT', 'TELKOM', '980084', 'LAKI-LAKI', 'HEAD OF REPRESENTATIVE OFFICE', 'HEAD OF REPRESENTATIVE OFFICE (HERO) MANDALO', 'user (1).png'),
(29, 'ARUQMAANA RASYID', 'ORGANIK', 'PWKTT', 'TELKOM', '950128', 'PEREMPUAN', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'ACCOUNT MANAGER I', 'women.png'),
(30, 'ILHAM DWI KUSUMA', 'ORGANIK', 'PWKTT', 'TELKOM', '936157', 'LAKI-LAKI', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'ACCOUNT MANAGER 2', 'user (1).png'),
(31, 'IWAN SITOHANG', 'ORGANIK', 'PWKTT', 'TELKOM', '960232', 'LAKI-LAKI', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'ACCOUNT MANAGER 1', 'user (1).png'),
(32, 'RIYANDHANI', 'ORGANIK', 'PWKTT', 'TELKOM', '910170', 'LAKI-LAKI', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'MANAGER BUSINESS, GOVERMENT AND ENTERPRISE SERVICE', 'user (1).png'),
(33, 'DEDDY SAPUTRA', 'NON ORGANIK AP', 'PWKT', 'ISH', '101272', 'LAKI-LAKI', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'ADMIN', 'user (1).png'),
(34, 'FADLI SETIAWAN', 'NON ORGANIK AP', 'PWKT', 'ISH', '30159', 'LAKI-LAKI', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'ADMIN', 'user (1).png'),
(35, 'I GEDE MERTHA', 'NON ORGANIK AP', 'PWKT', 'ISH', '51392', 'LAKI-LAKI', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'ADMIN', 'user (1).png'),
(36, 'JERI', 'NON ORGANIK AP', 'PWKT', 'ISH', '213574', 'LAKI-LAKI', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'AMEX', 'user (1).png'),
(37, 'JIMMY BANI SUSANTO', 'NON ORGANIK AP', 'PWKT', 'ISH', '203045', 'LAKI-LAKI', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'AMEX', 'user (1).png'),
(38, 'MARDONI', 'NON ORGANIK AP', 'PWKT', 'ISH', '212857', 'LAKI-LAKI', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'ACCOUNT MANAGER', 'user (1).png'),
(39, 'FADHILLAH RISKA', 'ORGANIK', 'PWKT', 'ISH', '211798', 'PEREMPUAN', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'SALES', 'women.png'),
(40, 'IGA SUCI KANDELA', 'NON ORGANIK AP', 'PWKT', 'ISH', '216697', 'PEREMPUAN', 'BUSINESS, GOVT & ENTERPRISE SERVICE', 'ACCOUNT MANAGER', 'women.png'),
(41, 'EDY FAISAL', 'ORGANIK', 'PWKTT', 'TELKOM', '645398', 'LAKI-LAKI', 'ENGINE GROUP', 'SENIOR STAFF REHIRE WITEL OPERATION CENTER', 'user (1).png'),
(42, 'FAHMI ISKANDAR LUBIS', 'ORGANIK', 'PWKTT', 'TELKOM', '800035', 'LAKI-LAKI', 'NETWORK AREA & IS OPERATION', 'MANAGER NETWORK AREA & IS OPERATION', 'user (1).png'),
(43, 'RENAL FRANATA', 'ORGANIK', 'PWKTT', 'TELKOM', '850040', 'LAKI-LAKI', 'NETWORK AREA & IS OPERATION', 'ASMAN DATA CENTER & DEFA', 'user (1).png'),
(44, 'MARIA ULPAH', 'NON ORGANIK AP', 'PWKT', 'ISH', '29905', 'PEREMPUAN', 'NETWORK AREA & IS OPERATION', 'TEKNISI', 'women.png'),
(45, 'HASNUL ARIF RANGKUTI, M.Si', 'ORGANIK', 'PWKTT', 'TELKOM', '800012', 'LAKI-LAKI', 'GM WITEL JAMBI', 'GENERAL MANAGER WITEL JAMBI', 'user (1).png'),
(46, 'HASRIL EFFENDI', 'ORGANIK', 'PWKTT', 'TELKOM', '700426', 'LAKI-LAKI', 'KAKANDATEL', 'KAKANDATEL MUARA BUNGO', 'user (1).png'),
(47, 'HERDIN SURYA DWI PUTRA', 'ORGANIK', 'PWKTT', 'TELKOM', '970201', 'LAKI-LAKI', 'CUSTOMER CARE', 'OFF 3 CUSTOMER CARE', 'user (1).png'),
(48, 'MITA PUSPASARI', 'ORGANIK', 'PWKTT', 'TELKOM', '900097', 'PEREMPUAN', 'CUSTOMER CARE', 'JM CUSTOMER CARE', 'women.png'),
(49, 'ARIF GILANG SURYA HARAHAP', 'NON ORGANIK AP', 'PWKT', 'FREELANCE', '211554', 'LAKI-LAKI', 'CUSTOMER CARE', 'HELPDESK', 'user (1).png'),
(50, 'DHINI MARDIA', 'NON ORGANIK AP', 'PWKT', 'ISH', '114621', 'PEREMPUAN', 'CUSTOMER CARE', 'HELPDESK', 'women.png'),
(51, 'MAULANA HIZBULLAH', 'ORGANIK', 'PWKTT', 'TELKOM', '980172', 'LAKI-LAKI', 'OPERATION BGES, WAN & WIFI', 'OFF 3 BGES & WIFI FULFILLMENT & ASSURANCE', 'user (1).png'),
(52, 'MUHAMMAD SYIFA A HADI', 'ORGANIK', 'PWKTT', 'TELKOM', '970130', 'LAKI-LAKI', 'OPERATION BGES, WAN & WIFI', 'OFF 3 WAN FULFILLMENT & ASSURANCE', 'user (1).png'),
(53, 'NURSEPMA RISMAWATI', 'ORGANIK', 'PWKTT', 'TELKOM', '950378', 'PEREMPUAN', 'ACCESS SERVICE OPERATION', 'OFF 3 FULFILLMENT', 'women.png'),
(54, 'QORIRA RETNO ARDHINI', 'ORGANIK', 'PWKTT', 'TELKOM', '950356', 'PEREMPUAN', 'WARROOM', 'OFF 2 COMMAND CONTROL', 'women.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('Administrator','Sekretaris') NOT NULL,
  `foto_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`, `foto_user`) VALUES
(1, 'Angga Bayu', 'admin', '1', 'Administrator', ''),
(2, 'Somat', 'sek', '1', 'Sekretaris', ''),
(4, 'Sila', 'sila', '20', 'Administrator', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penghasilan`
--

CREATE TABLE `tb_penghasilan` (
  `Jumlah` int(255) NOT NULL,
  `Bulan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id_profil` int(11) NOT NULL,
  `nama_profil` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `bidang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_profil`
--

INSERT INTO `tb_profil` (`id_profil`, `nama_profil`, `alamat`, `bidang`) VALUES
(1, 'TELKOM WITEL JAMBI', 'JAMBI', 'TELEKOMUNIKASI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_resume`
--

CREATE TABLE `tb_resume` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` int(255) NOT NULL,
  `education1` varchar(255) NOT NULL,
  `education2` varchar(255) NOT NULL,
  `education3` varchar(255) NOT NULL,
  `experience1` varchar(255) NOT NULL,
  `experience2` varchar(255) NOT NULL,
  `experience3` varchar(255) NOT NULL,
  `skills1` varchar(255) NOT NULL,
  `skills2` varchar(255) NOT NULL,
  `skills3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_resume`
--

INSERT INTO `tb_resume` (`id`, `image`, `nama`, `pekerjaan`, `tanggal_lahir`, `alamat`, `email`, `no_hp`, `education1`, `education2`, `education3`, `experience1`, `experience2`, `experience3`, `skills1`, `skills2`, `skills3`) VALUES
(1, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Abdul Rahman', 'Manager Shared Service PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'abdulrahman@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(2, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Angga Bayu Haryanto', 'Karyawan PT. Telkom Jambi', '1996-02-11', 'Indonesia, Jambi', 'Anggabayu@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(3, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Indra Martinus', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Indramartinus@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing\r\n'),
(4, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Siti Ramdhianty', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Sitiramdhianty@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Web Content Writing', 'Marketing Intern', 'Search Engine Optimazation', 'Social Media Management'),
(5, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Habibilah', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Habibilah@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Contect Writing'),
(6, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Monica Noprianty', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Monica@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Markting Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing\r\n'),
(7, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Faisal Wahyu Dharmawan', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Faisalwahyu@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Markting Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(8, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'M. Furwanto Wardani', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Furwantowardani@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(9, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Muhammad Ega Syahputra', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Muhammadega@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(10, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Rahmat Fitrah', 'Karyawa PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Muhammadfitrah@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(11, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Taufiq Ridho As Siddiqi', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Taufiqridho@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Managament', 'Web Content Writing'),
(12, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Fathinah Qadiriyah', 'Karyawan Pt. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Fathinah@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Managament', 'Web Content Writing'),
(13, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Adelia Putri Pratiwi', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Adeliaputrigmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(14, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Corry Sutrisna', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Corrysutrisna@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Managament', 'Web Content Writing'),
(15, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Sari Noviyeni', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Sarinoviyeni@gmail.com', 0, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Managament', 'Web Content Writing'),
(16, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Muhammad Fitra', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Muhammadfitra@gmail.com', 2147483647, 'Prmary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Specialist', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(17, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Aldafi Salsabillah', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Aldafisalsabillah@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Managament', 'Web Content Writing'),
(18, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'M Ridwan', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Mridwan@gmail.com', 811343422, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(19, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Andi Syaputra', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Andisyaputra@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Managament', 'Web Content Writing'),
(20, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Rizvaldo Rivai', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Rizvaldorivai@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Managament', 'Web Content Writing'),
(21, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Dedy Ariansyah', 'Karyawan PT. Telkom jambi', '0000-00-00', 'Indonesia, Jambi', 'Dedyariansyah@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(22, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Iman Fajar Maulana', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Imanfajar@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(23, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Indra Iskandar Muda', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Indraiskanadar@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(24, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Kefin Putra Yandito', 'Karyawan Pt. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Kefinputra@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(25, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Arifan Kesuma Putra', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Arifankesuma@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(26, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Ezra Meliora Nainggolan ', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Ezrameliora@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(27, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'M. Rendy', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Mrendy@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(28, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Mohammad Yasin Ramadhan', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Mohammadyasin@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Managament', 'Web Content Writing'),
(29, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Aruqmaana Rasyid', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Aruqmaanarasyid@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(30, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Ilham Dwi Kusuma', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Ilhamdwi@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(31, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Iwan Sitohang', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Iwansitohang@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(32, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Riyandhani', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Riyandhani@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(33, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Deddy Syaputra', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Deddysyaputra@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(34, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Fadli Setiawan', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Fadlisetiawan@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(35, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'I Gede Mertha', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Gedemertha@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media Management', 'Web Content Writing'),
(36, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Jeri', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Jeri@gmail.com', 2147483647, 'Primary School', 'Junior High School', 'Senior High School', 'Digital Marketing Specialist', 'Sales and Marketing Specialist', 'Marketing Intern', 'Search Engine Optimization', 'Social Media management', 'web content writing'),
(37, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Jimmy Bani Susanto', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Jimmybani@gmail.com', 2147483647, 'Primary School', 'Junior high school', 'Senior high School', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(38, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Mardoni', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Mardoni@gmail.com', 2147483647, 'Primary School', 'Junior high school', 'Senior high school ', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing '),
(39, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Fadhillah Riska', 'Kryawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Fadhillahriska@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales adn marketing specialist', 'Marketing Inter', 'Search enine optimization', 'Social media management', 'Web content writing'),
(40, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Iga Suci Kandela', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Igasuci@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(41, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Edy Faisal', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Edyfaisal@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(42, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Fahmi Iskandar Lubis', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Fahmiiskandar@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(43, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Renal Franata', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Renalfranata@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales dan Marketing Specialist', 'Marketing Intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(44, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Maria Ulpha', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Mariaulpha@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(45, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Hasnul Arif Rangkuti', 'General Manager Writel Jambi', '0000-00-00', 'Indonesia, Jambi', 'Hasnularif@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(46, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Hasril Effendi', 'Karyawan PT. Telkom jambi', '0000-00-00', 'Indonesia, Jambi', 'Hasrileffendi@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(47, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Herdin Surya Dwi Putra', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Herdinsurya@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing itern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(48, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Mita Puspasari', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Mitapuspasari@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(49, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Arif Gilang Surya Harahap', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Arifgilang@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(50, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Dhini Mardia', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Dhinimardia@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(51, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Maulana Hizbullah', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Maulanahizbullah@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(52, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Muhammad Syifa A Hadi', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Muhammadsyifa@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(53, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Nursepma Rismawati', 'Karyawan PT. Telkom Jambi', '0000-00-00', 'Indonesia, Jambi', 'Nursepma@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing'),
(54, '????\0JFIF\0\0\0\0\0\0??\0?\0		\Z\Z&\"\"&0-0>>T		\Z\Z&\"\"&0-0>>T??\0\0? \"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0	\0??\0\0\0\0\0?i?$?J ?$?آ?????F?HaEE??H ??\"r\n????zP', 'Qorira Retno Ardhini', 'Karyawan PT. Telkom Jmabi', '0000-00-00', 'Indonesia, Jambi', 'Qoriraretno@gmail.com', 2147483647, 'Primary school', 'Junior high school', 'Senior high school', 'Digital marketing specialist', 'Sales and marketing specialist', 'Marketing intern', 'Search engine optimization', 'Social media management', 'Web content writing');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `tb_resume`
--
ALTER TABLE `tb_resume`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_resume`
--
ALTER TABLE `tb_resume`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
