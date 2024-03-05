-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Des 2023 pada 14.02
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas-rpl-manpro`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$12$q07ivs7sOt0wUFu/eL3Lm.uiNnTtr66uOuhU2aB3iF0B1uW8y5OKW', '2023-12-21 08:23:53', '2023-12-21 08:23:53'),
(2, 'admin1', 'admin@gmail.com', '$2y$12$4aX0FmFOj0.wvGHIWb/YQOI3CBaRaJaI5XfZpOwvrTGb7BEEQqF/a', '2023-12-21 08:37:07', '2023-12-21 08:37:07'),
(3, 'admin12', 'admin@gmail.com', '$2y$12$JvcriBmGxUihXOQ4hWF0KuL8Qmd4Wz5WDlglmhiZT/P3beOHPigSK', '2023-12-21 08:38:46', '2023-12-21 08:38:46'),
(4, 'adminhabib', 'adminhabib@gmail.com', '$2y$12$T36v2HFiW1C5Na9903gQbO5.lPFhGHRTYTDPe27DCdgzvO1Zh.pV2', '2023-12-31 05:20:36', '2023-12-31 05:20:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pemyewa` varchar(100) DEFAULT NULL,
  `tanggal_sewa` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `no_telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `ktp` varchar(100) DEFAULT NULL,
  `metode_pembayaran` varchar(50) NOT NULL,
  `bayar` varchar(100) DEFAULT NULL,
  `sewa` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\User', 15, 'token-name', '268f1194d38af79aa7b47980e92e2e2898ea3594616e0f1dfe838410070fa7ce', '[\"*\"]', NULL, NULL, '2023-11-19 07:50:52', '2023-11-19 07:50:52'),
(8, 'App\\Models\\User', 17, 'token-name', 'f1b664b4c115d6913e73da1a1bbf1e0b66e8349e8bc15637c3f988bec5e16042', '[\"*\"]', NULL, NULL, '2023-11-19 07:52:49', '2023-11-19 07:52:49'),
(9, 'App\\Models\\User', 18, 'token-name', '3aaa4de9ebc7cdb14c6adc74675d1b605e6b7f950e25e2c55edb207edc374f06', '[\"*\"]', NULL, NULL, '2023-11-21 03:55:07', '2023-11-21 03:55:07'),
(10, 'App\\Models\\User', 18, 'token-name', 'b2e0679e38e884dd4dc468da0ce9bf7e5ac7a006ea7fe5ad5a8b4c6912eab202', '[\"*\"]', NULL, NULL, '2023-11-21 03:55:09', '2023-11-21 03:55:09'),
(16, 'App\\Models\\User', 15, 'token-name', 'af0d77cda503bb7abc9f0e63d705f275fbc0272ff650bebdade43ca70071dd1e', '[\"*\"]', NULL, NULL, '2023-11-25 05:12:23', '2023-11-25 05:12:23'),
(17, 'App\\Models\\User', 24, 'token-name', '66ffad1218db8766f220f0b59bb5be0d6fa5fa86a87fd9f4168a5c751c26a9a3', '[\"*\"]', NULL, NULL, '2023-11-25 05:23:10', '2023-11-25 05:23:10'),
(18, 'App\\Models\\User', 24, 'token-name', '507693799d1177f2d81c9207c4b9af32f655b969d64de83fd70dcd1aaad9ecd7', '[\"*\"]', NULL, NULL, '2023-11-25 05:23:23', '2023-11-25 05:23:23'),
(19, 'App\\Models\\User', 24, 'token-name', '063b57d0a1f45c6c116559e1d6c1db49978f80d4f03b76b0afb96eb69d3e3d36', '[\"*\"]', NULL, NULL, '2023-11-25 05:28:45', '2023-11-25 05:28:45'),
(20, 'App\\Models\\User', 24, 'token-name', '02ed69a5de1d8971eaa6e3dade30c76eeb17f61de218435d96e982c42c179764', '[\"*\"]', NULL, NULL, '2023-11-25 05:56:41', '2023-11-25 05:56:41'),
(22, 'App\\Models\\User', 26, 'token-name', '4131eb4b9ac00360758f7f4285b1d9b7e7a937d176e7ff81d46d907b9421af62', '[\"*\"]', NULL, NULL, '2023-11-25 19:17:54', '2023-11-25 19:17:54'),
(23, 'App\\Models\\User', 26, 'token-name', '369e4c08644a5b720c32d76e0a7df5e76fc82fa8c81853609d26d58b4b14b8e2', '[\"*\"]', NULL, NULL, '2023-11-25 19:20:26', '2023-11-25 19:20:26'),
(26, 'App\\Models\\User', 15, 'token-name', 'e9c66474ba45d7481949083bb0328822d5030ed0b03f20a1eec6cfeea859b933', '[\"*\"]', NULL, NULL, '2023-11-25 19:57:28', '2023-11-25 19:57:28'),
(31, 'App\\Models\\User', 27, 'token-name', '536b08c7234f64ec7c527e34c20e440f4bba878cb293bd3c8cbca89bb8ed32d1', '[\"*\"]', NULL, NULL, '2023-11-25 22:09:48', '2023-11-25 22:09:48'),
(32, 'App\\Models\\User', 27, 'token-name', '700758bd9601bf1b93568f242554c988a7eace490c503479cf71db87c2730b67', '[\"*\"]', NULL, NULL, '2023-11-25 22:09:49', '2023-11-25 22:09:49'),
(34, 'App\\Models\\User', 32, 'token-name', 'ad4645654b69a0fccff3115b1af210a3446a6c73cc2bd3255c2f654861742e70', '[\"*\"]', NULL, NULL, '2023-11-25 22:16:52', '2023-11-25 22:16:52'),
(35, 'App\\Models\\User', 32, 'token-name', 'bc0d2043a6e2e7196f74f611fdfbcc59dbe2a172f5b9612525580b6f2844150f', '[\"*\"]', NULL, NULL, '2023-11-27 00:35:38', '2023-11-27 00:35:38'),
(36, 'App\\Models\\User', 32, 'token-name', '4d94f71a54c9def746a67c7cce2cd17e976c8b6ba2ba29e2d6d0741381eef6bb', '[\"*\"]', NULL, NULL, '2023-12-13 08:02:43', '2023-12-13 08:02:43'),
(37, 'App\\Models\\User', 15, 'token-name', '2aa386429c1979be22d65a9a4bba455125138491373d222a29dd26f8085e31f7', '[\"*\"]', NULL, NULL, '2023-12-13 08:21:23', '2023-12-13 08:21:23'),
(38, 'App\\Models\\User', 15, 'token-name', '601bb6787f1e48732349fed289ec6a495ae7856a8b0a91224b5d3454aa31b455', '[\"*\"]', NULL, NULL, '2023-12-13 08:30:36', '2023-12-13 08:30:36'),
(39, 'App\\Models\\User', 15, 'token-name', 'b1323c889c7d1b96bbfa7de8505976a503c41550d5af90622cf8c5c4dcb6bc64', '[\"*\"]', NULL, NULL, '2023-12-13 08:34:14', '2023-12-13 08:34:14'),
(40, 'App\\Models\\User', 15, 'token-name', '919c4cd14f364859e3875f4b21edaeb8b115a9538b170c4fc2e515dea7b27188', '[\"*\"]', NULL, NULL, '2023-12-13 08:34:50', '2023-12-13 08:34:50'),
(41, 'App\\Models\\User', 15, 'token-name', 'f8aedb38f6064acad2c7282942eed4ba8a16c9e1f7b17840d451ffac36741c46', '[\"*\"]', NULL, NULL, '2023-12-13 08:35:55', '2023-12-13 08:35:55'),
(42, 'App\\Models\\User', 32, 'token-name', '768e207516f8fb275c4bbec9d003181ab7b605b5286abd9483b174c9a8a307fb', '[\"*\"]', NULL, NULL, '2023-12-13 09:35:01', '2023-12-13 09:35:01'),
(43, 'App\\Models\\User', 32, 'token-name', '230ab23438f557b2bae6b423346ace8728d2bad8647ebb7ebd99bab574a0e070', '[\"*\"]', NULL, NULL, '2023-12-13 09:38:56', '2023-12-13 09:38:56'),
(44, 'App\\Models\\User', 32, 'token-name', '8f574af7e17ce0a23b416b0fec35cbfa0a4ab752f1799cc158964984bf3b956c', '[\"*\"]', NULL, NULL, '2023-12-13 17:11:30', '2023-12-13 17:11:30'),
(45, 'App\\Models\\User', 32, 'token-name', 'ce7dedcf11988f71f7f9f3491f54bd88e589f9efbe5b933086bcb2fae0daef90', '[\"*\"]', NULL, NULL, '2023-12-13 17:12:22', '2023-12-13 17:12:22'),
(46, 'App\\Models\\User', 32, 'token-name', '7745c399f1905c90417a54d6881b12d0ac185bdf917762c6da250ff6a7be56aa', '[\"*\"]', NULL, NULL, '2023-12-13 17:15:37', '2023-12-13 17:15:37'),
(48, 'App\\Models\\User', 34, 'token-name', '3e43388d0baa108449b98801e7ab17f41e336c80ab48e5d019da1ae32a8791a1', '[\"*\"]', NULL, NULL, '2023-12-18 23:19:59', '2023-12-18 23:19:59'),
(51, 'App\\Models\\User', 4, 'token-name', 'ba492f37cc21a85d912f1737ce31687836a7ad9fd149ced9ccafca2a74045caf', '[\"*\"]', NULL, NULL, '2023-12-19 10:12:07', '2023-12-19 10:12:07'),
(54, 'App\\Models\\User', 2, 'token-name', 'db40b6d424a403129296f832026d999624fed64b9366f511f2fb9aca05d1a793', '[\"*\"]', NULL, NULL, '2023-12-19 17:58:05', '2023-12-19 17:58:05'),
(55, 'App\\Models\\User', 2, 'token-name', '2b32a91add6abe71d15eca10eadb787964e394bcdec972a7fd4636c4e324c718', '[\"*\"]', NULL, NULL, '2023-12-19 20:05:25', '2023-12-19 20:05:25'),
(56, 'App\\Models\\User', 2, 'token-name', '77b28644c6cd27f14428428963ba21594d4373325aaea628c5620acdabbd4a06', '[\"*\"]', NULL, NULL, '2023-12-19 20:22:13', '2023-12-19 20:22:13'),
(61, 'App\\Models\\User', 2, 'token-name', 'f9c21a2e1c406377e18d21c3c931bc2fd805718f621d29e9b34f818af2e07105', '[\"*\"]', NULL, NULL, '2023-12-19 21:47:40', '2023-12-19 21:47:40'),
(63, 'App\\Models\\User', 7, 'token-name', '62500d365fa205fcf5c4d0ef0d285cde262eda8db4052f909afa96ca925fca5b', '[\"*\"]', NULL, NULL, '2023-12-19 21:52:09', '2023-12-19 21:52:09'),
(74, 'App\\Models\\User', 12, 'token-name', '198ba62bc067e7f9d0831e66d325379692de6900990c5c36150a4d19c4329502', '[\"*\"]', NULL, NULL, '2023-12-20 02:05:56', '2023-12-20 02:05:56'),
(82, 'App\\Models\\User', 5, 'token-name', 'c4d8765dabba5ff13bb05b7a06abe87d0b8ebaab2d7d6247f0667b1d16e87a88', '[\"*\"]', NULL, NULL, '2023-12-24 02:55:23', '2023-12-24 02:55:23'),
(83, 'App\\Models\\User', 5, 'token-name', 'a2218fbf4d2a4bb24babfce703608c0b0d58d35d5a670cd782d7fdf5fcba1685', '[\"*\"]', NULL, NULL, '2023-12-24 02:57:39', '2023-12-24 02:57:39'),
(84, 'App\\Models\\User', 5, 'token-name', '960b770de5aa6cf6c20d74e47b821efa77ad3e1eece4aba460c91c0b978ce53e', '[\"*\"]', NULL, NULL, '2023-12-24 03:22:32', '2023-12-24 03:22:32'),
(85, 'App\\Models\\User', 5, 'token-name', '0b416fbd2a5f4464ade7fa41ee804df74d74cc23848ba2a591050116316fa3cc', '[\"*\"]', NULL, NULL, '2023-12-24 03:30:16', '2023-12-24 03:30:16'),
(86, 'App\\Models\\User', 5, 'token-name', '94cfc9ab47c524c4b8d6c61a12c4d82a3712876544c50369b1bcd625bfc8301b', '[\"*\"]', NULL, NULL, '2023-12-24 03:30:16', '2023-12-24 03:30:16'),
(87, 'App\\Models\\User', 5, 'token-name', '6fab3b7a7ed8f8a8d0ee4ff17ef1aab163a9a36a83bd877ea203ee24e1d0e147', '[\"*\"]', NULL, NULL, '2023-12-24 04:38:25', '2023-12-24 04:38:25'),
(88, 'App\\Models\\User', 5, 'token-name', '87f6280d86b4acd82371e79c013f40b54456e213b48dd8eb956fcddd8a559893', '[\"*\"]', NULL, NULL, '2023-12-24 04:45:39', '2023-12-24 04:45:39'),
(89, 'App\\Models\\User', 5, 'token-name', '990c54a8325297407fed571d7b0ff28a213d3e5f3f00cced321bff8a7974b646', '[\"*\"]', NULL, NULL, '2023-12-24 04:45:40', '2023-12-24 04:45:40'),
(90, 'App\\Models\\User', 5, 'token-name', 'c2adf40bce46c8c8fe0281e63a1d117d2c701c82675b0a0160557f46ac6452e2', '[\"*\"]', NULL, NULL, '2023-12-24 04:45:46', '2023-12-24 04:45:46'),
(91, 'App\\Models\\User', 5, 'token-name', '7d6a570a669e5d58854fe545202b2b18cf4b46833dfe8a253cdad1a00af9067e', '[\"*\"]', NULL, NULL, '2023-12-24 20:07:19', '2023-12-24 20:07:19'),
(92, 'App\\Models\\User', 5, 'token-name', '5b7b34887f177dff61991d11009da357090201917b1dd0ee034129b4403c9db4', '[\"*\"]', NULL, NULL, '2023-12-25 16:49:11', '2023-12-25 16:49:11'),
(93, 'App\\Models\\User', 5, 'token-name', 'efea28d45a964059f62fb554dde2ac4ee5670079fa71e011016216cfb3af2f6a', '[\"*\"]', NULL, NULL, '2023-12-25 20:01:04', '2023-12-25 20:01:04'),
(94, 'App\\Models\\User', 5, 'token-name', '551752d10810b205c12ad493cfbcf837229b06738ca90ee0aaeeec0cffad791e', '[\"*\"]', NULL, NULL, '2023-12-25 20:01:05', '2023-12-25 20:01:05'),
(95, 'App\\Models\\User', 5, 'token-name', 'a82a808a25ecf55f53ce668b47efc1b28de7b9f174c22b2c62f682fa088a16fa', '[\"*\"]', NULL, NULL, '2023-12-25 20:01:06', '2023-12-25 20:01:06'),
(96, 'App\\Models\\User', 5, 'token-name', '182d33b0d5f3218ab65042a645bd9d1c26eb82144628958608eef37e1076a21c', '[\"*\"]', NULL, NULL, '2023-12-25 20:01:15', '2023-12-25 20:01:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga_sewa` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `stok` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `nama_barang`, `harga_sewa`, `deskripsi`, `stok`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Tenda Camping Raung', '25.000', 'Tenda Camping Raung B Kapasitas 4 Orang merupakan pilihan ideal untuk petualangan alam terbuka Anda.  Tenda ini dirancang dengan cermat untuk memenuhi kebutuhan penggemar camping dan aktivitas luar ruangan. Dengan harga  yang terjangkau sebesar Rp 25.000 perhari, produk ini menawarkan banyak fitur dan keunggulan yang akan meningkatkan pengalaman camping Anda.', '5', 'tenda1.jpg', '2023-12-24 03:08:42', '2023-12-24 03:08:42'),
(2, 'Jaket Gunung', '15.000', 'Jaket Gunung merupakan pilihan ideal untuk petualangan alam terbuka Anda.  Jaket ini dirancang dengan cermat untuk memenuhi kebutuhan penggemar camping dan aktivitas luar ruangan. Dengan harga yang terjangkau sebesar Rp 15.000 perhari, produk ini menawarkan banyak fitur dan keunggulan yang akan meningkatkan pengalaman camping Anda.', '7', 'jaket.jpg', '2023-12-24 03:10:05', '2023-12-24 03:10:05'),
(3, 'Kompor Portable Bunga', '10.000', 'Kompor Portable Bunga merupakan pilihan ideal untuk petualangan alam terbuka Anda.  Kompor ini dirancang dengan cermat untuk memenuhi kebutuhan penggemar camping dan aktivitas luar ruangan. Dengan harga yang terjangkau sebesar Rp 10.000 perhari, produk ini menawarkan banyak fitur dan keunggulan yang akan meningkatkan pengalaman camping Anda.', '9', 'kompor2.jpg', '2023-12-24 03:11:27', '2023-12-24 03:11:27'),
(4, 'Sleeping Bag', '10.000', 'Sleeping Bag merupakan pilihan ideal untuk petualangan alam terbuka Anda. Sleeping Bag ini dirancang dengan cermat untuk memenuhi kebutuhan penggemar camping dan aktivitas luar ruangan. Dengan harga yang terjangkau sebesar Rp 10.000 perhari, produk ini menawarkan banyak fitur dan keunggulan yang akan meningkatkan pengalaman camping Anda.', '6', 'sb4.jpg', '2023-12-31 05:58:46', '2023-12-31 05:58:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$12$fER9rPi5luys9yqLjrd.l.u0/iCiBz5p4zse.t4mvWYt3wFVSzZki', '2023-12-21 08:23:24', '2023-12-21 08:23:24'),
(2, 'habib', 'habib@gmail.com', '$2y$12$a2kAcLWYzH8gAQiAXcsbIOgj6MuuiSZDkxa2pjt9YrUiGe9P5jJDu', '2023-12-24 02:37:00', '2023-12-24 02:37:00'),
(3, 'habibaa', 'habib@gmail.com', '$2y$12$NyAq5oSWIZA0aNzfiGxhYOlBUNdSH/1J.TwipuAXbRMEIizUFdHly', '2023-12-24 02:37:53', '2023-12-24 02:37:53'),
(4, 'habibaaaaaaa', 'habib@gmail.com', '$2y$12$GFzm.YaNrBmZ5Ug7ascoJucutLizSDJOrHuyh6JlDa91.QpxbazSW', '2023-12-24 02:38:19', '2023-12-24 02:38:19'),
(5, 'habibaaa', 'habib12@gmail.com', '$2y$12$GFzm.YaNrBmZ5Ug7ascoJucutLizSDJOrHuyh6JlDa91.QpxbazSW', '2023-12-24 02:38:19', '2023-12-24 02:38:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
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
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
