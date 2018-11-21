-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2018 at 06:06 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2018_10_22_202544_create_m_mahasiswas_table', 1),
(9, '2018_10_24_013129_create_m_matkuls_table', 1),
(10, '2018_10_24_013313_create_m_jadwals_table', 1),
(11, '2018_10_25_235915_create_m_pegawais_table', 1),
(12, '2018_10_26_002219_create_m_tahun_ajarans_table', 1),
(13, '2018_10_26_002244_create_m_mahasiswa_kelas_table', 1),
(14, '2018_10_26_002255_create_m_kelas_table', 1),
(15, '2018_10_26_002308_create_m_sesis_table', 1),
(16, '2018_10_26_002328_create_m_detail_pertemuans_table', 1),
(17, '2018_10_26_002338_create_m_pertemuans_table', 1),
(18, '2018_10_26_002359_create_m_gedungs_table', 1),
(19, '2018_10_26_002414_create_m_ruangs_table', 1),
(20, '2018_10_26_002430_create_m_statuses_table', 1),
(21, '2018_10_26_002454_create_m_sks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_detail_pertemuans`
--

CREATE TABLE `m_detail_pertemuans` (
  `id` int(10) UNSIGNED NOT NULL,
  `waktu_kehadiran` datetime NOT NULL,
  `poin` int(11) NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_mhs` int(11) NOT NULL,
  `id_pertemuan` int(10) UNSIGNED NOT NULL,
  `id_status` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_detail_pertemuans`
--

INSERT INTO `m_detail_pertemuans` (`id`, `waktu_kehadiran`, `poin`, `updated_by`, `created_at`, `updated_at`, `id_mhs`, `id_pertemuan`, `id_status`) VALUES
(1, '2018-10-27 09:00:00', 30, 'Mr.Smith', NULL, NULL, 396293, 1, 1),
(2, '2018-10-27 09:00:00', 45, 'Umar Taufiq', NULL, NULL, 103928, 2, 1),
(3, '2018-10-27 12:00:00', 50, 'Imam Fahrurrozi', NULL, NULL, 394821, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_gedungs`
--

CREATE TABLE `m_gedungs` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_gedungs`
--

INSERT INTO `m_gedungs` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'HY', 'Herman Yohanes', NULL, NULL),
(2, 'GP', 'Gedung Perpustakaan', NULL, NULL),
(3, 'SV', 'Sekolah Vokasi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_jadwals`
--

CREATE TABLE `m_jadwals` (
  `id_jadwal` int(10) UNSIGNED NOT NULL,
  `hari` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kls` int(10) UNSIGNED NOT NULL,
  `id_sesi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ruang` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_jadwals`
--

INSERT INTO `m_jadwals` (`id_jadwal`, `hari`, `id_kls`, `id_sesi`, `id_ruang`, `created_at`, `updated_at`) VALUES
(1, 'Senin', 1, '2', 'U-202', NULL, NULL),
(2, 'Selasa', 2, '3', 'GP-202', NULL, NULL),
(3, 'Rabu', 3, '2', 'SV-123', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_kelas`
--

CREATE TABLE `m_kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `kelas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `paket_semester` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_th_ajaran` int(10) UNSIGNED NOT NULL,
  `kode_mk` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_kelas`
--

INSERT INTO `m_kelas` (`id`, `kelas`, `kapasitas`, `paket_semester`, `created_at`, `updated_at`, `id_th_ajaran`, `kode_mk`, `nip_dosen`) VALUES
(1, 'Manpro-1', 40, 1, NULL, NULL, 1, 'MP101', 123456),
(2, 'BI-2', 37, 5, NULL, NULL, 3, 'BI201', 467234),
(3, 'Intero-3', 33, 3, NULL, NULL, 2, 'IN302', 193831);

-- --------------------------------------------------------

--
-- Table structure for table `m_mahasiswas`
--

CREATE TABLE `m_mahasiswas` (
  `niu` int(11) NOT NULL,
  `nif` int(11) NOT NULL,
  `angkatan` int(11) NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` double NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rek` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_rek` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` int(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_mahasiswas`
--

INSERT INTO `m_mahasiswas` (`niu`, `nif`, `angkatan`, `nama`, `prodi`, `nik`, `alamat`, `no_rek`, `nama_rek`, `npwp`, `no_telp`, `created_at`, `updated_at`) VALUES
(103928, 13029, 2018, 'Jessica', 'KOMSI', 28472649203, 'Sleman', '104927492965', 'Jessica', '038725492', 84615428, NULL, NULL),
(394821, 20394, 2017, 'Vania', 'KOMSI', 2573629, 'Bantul', '63879137', 'Vania', '27491764', 294759028, NULL, NULL),
(396293, 10506, 2016, 'Regyta Dhea', 'Komsi', 3311018298473, 'Terban', '234790002222244', 'Regyta', '3440288727739', 1839182, '2018-10-27 06:00:00', '2018-10-27 06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `m_mahasiswa_kelas`
--

CREATE TABLE `m_mahasiswa_kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_mhs` int(11) NOT NULL,
  `id_kls` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_mahasiswa_kelas`
--

INSERT INTO `m_mahasiswa_kelas` (`id`, `role`, `created_at`, `updated_at`, `id_mhs`, `id_kls`) VALUES
(1, 'Mahasiswa', NULL, NULL, 103928, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_matkuls`
--

CREATE TABLE `m_matkuls` (
  `kode_matkul` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_matkul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurikulum` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_sks` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_matkuls`
--

INSERT INTO `m_matkuls` (`kode_matkul`, `nama_matkul`, `jenis`, `singkatan`, `kurikulum`, `created_at`, `updated_at`, `id_sks`) VALUES
('BI201', 'Kecerdasan Bisnis', 'Teori wajib', 'BI', 2018, NULL, NULL, 2),
('IN302', 'Interoperabilitas', 'Teori wajib', 'Intero', 2018, NULL, NULL, 3),
('MP101', 'Manajemen Proyek', 'Teori wajib', 'Manpro', 2018, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_pegawais`
--

CREATE TABLE `m_pegawais` (
  `nip` int(11) NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` int(15) NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_pegawais`
--

INSERT INTO `m_pegawais` (`nip`, `nama`, `no_telp`, `role`, `created_at`, `updated_at`) VALUES
(123456, 'Mr.Smith', 828192812, 'Dosen', '2018-10-27 06:00:00', '2018-10-27 06:00:00'),
(193831, 'Umar Taufiq', 36581467, 'Dosen', NULL, NULL),
(467234, 'Imam Fahrurozi', 93859382, 'Dosen', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_pertemuans`
--

CREATE TABLE `m_pertemuans` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_jdwl` int(10) UNSIGNED NOT NULL,
  `nip_dosen` int(11) NOT NULL,
  `kesesuaian_rkps` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capaian` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_mulai` datetime NOT NULL,
  `waktu_selesai` datetime NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_pertemuans`
--

INSERT INTO `m_pertemuans` (`id`, `id_jdwl`, `nip_dosen`, `kesesuaian_rkps`, `capaian`, `waktu_mulai`, `waktu_selesai`, `keterangan`, `materi`, `created_at`, `updated_at`) VALUES
(1, 1, 123456, '40%', '30%', '2018-10-27 09:00:00', '2018-10-27 10:40:00', 'Masuk', 'Timeline', NULL, NULL),
(2, 2, 193831, '60%', '60%', '2018-10-27 09:00:00', '2018-10-27 10:40:00', 'Sesuai', 'Web Service', NULL, NULL),
(3, 3, 467234, '70%', '70%', '2018-10-27 12:00:00', '2018-10-27 13:40:00', 'Sesuai', 'Power BI', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_ruangs`
--

CREATE TABLE `m_ruangs` (
  `ruang` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_gedung` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_ruangs`
--

INSERT INTO `m_ruangs` (`ruang`, `id_gedung`, `created_at`, `updated_at`) VALUES
('GP-202', 2, NULL, NULL),
('SV-123', 3, NULL, NULL),
('U-202', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_sesis`
--

CREATE TABLE `m_sesis` (
  `sesi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_mulai` datetime NOT NULL,
  `waktu_selesai` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_sesis`
--

INSERT INTO `m_sesis` (`sesi`, `waktu_mulai`, `waktu_selesai`, `created_at`, `updated_at`) VALUES
('1', '2018-10-27 07:15:00', '2018-10-27 08:55:00', NULL, NULL),
('2', '2018-10-27 09:00:00', '2018-10-27 10:40:00', NULL, NULL),
('3', '2018-10-27 12:00:00', '2018-10-27 13:40:00', NULL, NULL),
('4', '2018-10-27 14:00:00', '2018-10-27 15:40:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_sks`
--

CREATE TABLE `m_sks` (
  `id` int(10) UNSIGNED NOT NULL,
  `maks_pertemuan` int(11) NOT NULL,
  `sks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_sks`
--

INSERT INTO `m_sks` (`id`, `maks_pertemuan`, `sks`, `created_at`, `updated_at`) VALUES
(1, 12, 1, NULL, NULL),
(2, 12, 1, NULL, NULL),
(3, 24, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_statuses`
--

CREATE TABLE `m_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_statuses`
--

INSERT INTO `m_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Masuk', NULL, NULL),
(2, 'Izin', NULL, NULL),
(3, 'Sakit', NULL, NULL),
(4, 'Alpha', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_tahun_ajarans`
--

CREATE TABLE `m_tahun_ajarans` (
  `id` int(10) UNSIGNED NOT NULL,
  `semester` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_tahun_ajarans`
--

INSERT INTO `m_tahun_ajarans` (`id`, `semester`, `tahun`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '2018', 'Aktif', NULL, NULL),
(2, '3', '2017', 'Aktif', NULL, NULL),
(3, '5', '2016', 'Aktif', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dhea Dhea', 'dhea@dhea.com', NULL, '$2y$10$xSZGo364Xtp9CPXsMFBppeVj7LcT0bxZaA/nJFpShNuH4LAyncsMm', NULL, '2018-10-28 23:54:27', '2018-10-28 23:54:27'),
(2, 'regyta dhea', 'rdhea@tes.com', NULL, '$2y$10$il/QwbcLI.wdV1Un2RdOVulwKdteJ8MDdpK/DAcie9RswV23e5OLi', NULL, '2018-10-29 05:01:50', '2018-10-29 05:01:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_detail_pertemuans`
--
ALTER TABLE `m_detail_pertemuans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mahasiswa` (`id_mhs`),
  ADD KEY `idx_pertemuan` (`id_pertemuan`),
  ADD KEY `idx_status` (`id_status`);

--
-- Indexes for table `m_gedungs`
--
ALTER TABLE `m_gedungs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_jadwals`
--
ALTER TABLE `m_jadwals`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_kls` (`id_kls`),
  ADD KEY `id_ruang` (`id_ruang`),
  ADD KEY `id_sesi` (`id_sesi`);

--
-- Indexes for table `m_kelas`
--
ALTER TABLE `m_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_thn` (`id_th_ajaran`),
  ADD KEY `idx_kodemk` (`kode_mk`),
  ADD KEY `idx_nipdos` (`nip_dosen`);

--
-- Indexes for table `m_mahasiswas`
--
ALTER TABLE `m_mahasiswas`
  ADD PRIMARY KEY (`niu`);

--
-- Indexes for table `m_mahasiswa_kelas`
--
ALTER TABLE `m_mahasiswa_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mhs` (`id_mhs`),
  ADD KEY `idx_kls` (`id_kls`);

--
-- Indexes for table `m_matkuls`
--
ALTER TABLE `m_matkuls`
  ADD PRIMARY KEY (`kode_matkul`),
  ADD KEY `id_sks` (`id_sks`);

--
-- Indexes for table `m_pegawais`
--
ALTER TABLE `m_pegawais`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `m_pertemuans`
--
ALTER TABLE `m_pertemuans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jdwl` (`id_jdwl`),
  ADD KEY `nipx_dosen` (`nip_dosen`);

--
-- Indexes for table `m_ruangs`
--
ALTER TABLE `m_ruangs`
  ADD PRIMARY KEY (`ruang`),
  ADD KEY `id_gedung` (`id_gedung`);

--
-- Indexes for table `m_sesis`
--
ALTER TABLE `m_sesis`
  ADD PRIMARY KEY (`sesi`);

--
-- Indexes for table `m_sks`
--
ALTER TABLE `m_sks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_statuses`
--
ALTER TABLE `m_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_tahun_ajarans`
--
ALTER TABLE `m_tahun_ajarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `m_detail_pertemuans`
--
ALTER TABLE `m_detail_pertemuans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_gedungs`
--
ALTER TABLE `m_gedungs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_jadwals`
--
ALTER TABLE `m_jadwals`
  MODIFY `id_jadwal` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_kelas`
--
ALTER TABLE `m_kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_mahasiswa_kelas`
--
ALTER TABLE `m_mahasiswa_kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_pertemuans`
--
ALTER TABLE `m_pertemuans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_sks`
--
ALTER TABLE `m_sks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_statuses`
--
ALTER TABLE `m_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_tahun_ajarans`
--
ALTER TABLE `m_tahun_ajarans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_detail_pertemuans`
--
ALTER TABLE `m_detail_pertemuans`
  ADD CONSTRAINT `m_detail_pertemuans_ibfk_2` FOREIGN KEY (`id_pertemuan`) REFERENCES `m_pertemuans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `m_detail_pertemuans_ibfk_3` FOREIGN KEY (`id_status`) REFERENCES `m_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `m_detail_pertemuans_ibfk_4` FOREIGN KEY (`id_mhs`) REFERENCES `m_mahasiswas` (`niu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_jadwals`
--
ALTER TABLE `m_jadwals`
  ADD CONSTRAINT `m_jadwals_ibfk_1` FOREIGN KEY (`id_kls`) REFERENCES `m_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `m_jadwals_ibfk_2` FOREIGN KEY (`id_ruang`) REFERENCES `m_ruangs` (`ruang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `m_jadwals_ibfk_3` FOREIGN KEY (`id_sesi`) REFERENCES `m_sesis` (`sesi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_kelas`
--
ALTER TABLE `m_kelas`
  ADD CONSTRAINT `m_kelas_ibfk_1` FOREIGN KEY (`id_th_ajaran`) REFERENCES `m_tahun_ajarans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `m_kelas_ibfk_3` FOREIGN KEY (`nip_dosen`) REFERENCES `m_pegawais` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `m_kelas_ibfk_4` FOREIGN KEY (`kode_mk`) REFERENCES `m_matkuls` (`kode_matkul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_mahasiswa_kelas`
--
ALTER TABLE `m_mahasiswa_kelas`
  ADD CONSTRAINT `m_mahasiswa_kelas_ibfk_1` FOREIGN KEY (`id_kls`) REFERENCES `m_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `m_mahasiswa_kelas_ibfk_2` FOREIGN KEY (`id_mhs`) REFERENCES `m_mahasiswas` (`niu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_matkuls`
--
ALTER TABLE `m_matkuls`
  ADD CONSTRAINT `m_matkuls_ibfk_1` FOREIGN KEY (`id_sks`) REFERENCES `m_sks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_pertemuans`
--
ALTER TABLE `m_pertemuans`
  ADD CONSTRAINT `m_pertemuans_ibfk_1` FOREIGN KEY (`id_jdwl`) REFERENCES `m_jadwals` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `m_pertemuans_ibfk_2` FOREIGN KEY (`nip_dosen`) REFERENCES `m_pegawais` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_ruangs`
--
ALTER TABLE `m_ruangs`
  ADD CONSTRAINT `m_ruangs_ibfk_1` FOREIGN KEY (`id_gedung`) REFERENCES `m_gedungs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
