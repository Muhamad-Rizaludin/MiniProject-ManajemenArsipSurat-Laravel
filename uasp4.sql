-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Apr 2021 pada 18.28
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uasp4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsipmasuks`
--

CREATE TABLE `arsipmasuks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `NomorSurat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NamaSurat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JenisSurat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengirim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `arsipmasuks`
--

INSERT INTO `arsipmasuks` (`id`, `tanggal`, `NomorSurat`, `NamaSurat`, `JenisSurat`, `pengirim`, `tujuan`, `surat`, `created_at`, `updated_at`) VALUES
(38, '2021-04-26', '000/Surat/IV/2021', 'surat pengantar', 'Surat Masuk', 'Stmik Bandung', 'Stmik kbb tasik', '1619536961.pdf', NULL, NULL),
(39, '2021-04-26', '001/Surat/IV/2021', 'surat akademik', 'Surat Masuk', 'Stmik Bandung', 'Stmik kbb cianjur', '1619452969.docx', NULL, NULL),
(40, '2021-04-26', '002/Surat/IV/2021', 'surat akademik', 'Surat Keluar', 'Stmik Bandung', 'Stmik kbb tasik', '1619452995.pdf', NULL, NULL),
(42, '2021-04-27', '003/Surat/IV/2021', 'surat pengantar', 'Surat Keluar', 'Stmik Bandung', 'Stmik kbb tasik', '1619538938.pdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_25_083855_create_arsipmasuks_table', 2),
(5, '2021_04_25_143946_create_arsipkeluars_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rizaludin', 'rizaludin@gmail.com', NULL, '$2y$10$h/RajHt2/CwYL44gPThZNuzbEZ2007rbwvAIw4sgoMxXSZYF/j5am', 'jcyuAt5QHSorlCOb25HrWvLrhYRTrB8T8wlt7cqTKxOw43TF7wPoo22hQmPq', '2021-04-25 01:38:01', '2021-04-25 01:38:01'),
(12, 'sundary', 'sundary@gmail.com', NULL, '$2y$10$.5hfdZf8YNIeltC4mW.tMuuRu0YvWAi58FaHN.j9Ss694rnnJxime', NULL, '2021-04-26 21:22:37', '2021-04-26 21:22:37'),
(18, 'ica', 'ica@gmail.com', NULL, '$2y$10$7ltWig.z.TDGZ/JAVs.bS.qXqf3XqKTLOGO1gPfxKusi4XRUUq5vW', NULL, '2021-04-26 21:37:05', '2021-04-26 21:37:05'),
(19, 'dedi', 'dedi@gmail.com', NULL, '$2y$10$5yN4ETC5yTiwGm4yyacbK.KKD09nnvMJsjgXGY3VP9c/w7myQCld6', NULL, '2021-04-26 21:38:19', '2021-04-26 21:38:19'),
(20, 'susanti', 'susanti@gmail.com', NULL, '$2y$10$tHXhnKDR/7D7VNRxaf6/JeWh7VV1tYJzE4TKMOdEdlDqGXRRaimbK', NULL, '2021-04-27 08:58:41', '2021-04-27 08:58:41');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `arsipmasuks`
--
ALTER TABLE `arsipmasuks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `arsipmasuks`
--
ALTER TABLE `arsipmasuks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
