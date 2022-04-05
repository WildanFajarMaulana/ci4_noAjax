-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Feb 2022 pada 16.13
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(15, 'Naruto  ', 'naruto', 'sassa joni wawa', 'sasa  ', 'foto.jpg', '2022-01-29 03:31:40', '2022-01-29 03:48:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-01-31-014343', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1643593964, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(5) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'wildan', 'jl.simpang sulfat', NULL, NULL),
(2, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:14:23', '2022-01-30 20:14:23'),
(3, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:15:56', '2022-01-30 20:15:56'),
(4, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:18:55', '2022-01-30 20:18:55'),
(5, 'adam', 'jl.simpang sulfat', '2022-01-30 20:18:55', '2022-01-30 20:18:55'),
(6, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:38', '2022-01-30 20:59:38'),
(7, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:40', '2022-01-30 20:59:40'),
(8, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:40', '2022-01-30 20:59:40'),
(9, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:40', '2022-01-30 20:59:40'),
(10, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:40', '2022-01-30 20:59:40'),
(11, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:40', '2022-01-30 20:59:40'),
(12, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:40', '2022-01-30 20:59:40'),
(13, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:40', '2022-01-30 20:59:40'),
(14, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:41', '2022-01-30 20:59:41'),
(15, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:41', '2022-01-30 20:59:41'),
(16, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:41', '2022-01-30 20:59:41'),
(17, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:41', '2022-01-30 20:59:41'),
(18, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:41', '2022-01-30 20:59:41'),
(19, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:41', '2022-01-30 20:59:41'),
(20, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:41', '2022-01-30 20:59:41'),
(21, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:41', '2022-01-30 20:59:41'),
(22, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:41', '2022-01-30 20:59:41'),
(23, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:41', '2022-01-30 20:59:41'),
(24, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:42', '2022-01-30 20:59:42'),
(25, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:42', '2022-01-30 20:59:42'),
(26, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:42', '2022-01-30 20:59:42'),
(27, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:42', '2022-01-30 20:59:42'),
(28, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:42', '2022-01-30 20:59:42'),
(29, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:42', '2022-01-30 20:59:42'),
(30, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:42', '2022-01-30 20:59:42'),
(31, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:42', '2022-01-30 20:59:42'),
(32, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:42', '2022-01-30 20:59:42'),
(33, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:43', '2022-01-30 20:59:43'),
(34, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:43', '2022-01-30 20:59:43'),
(35, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:43', '2022-01-30 20:59:43'),
(36, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:43', '2022-01-30 20:59:43'),
(37, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:43', '2022-01-30 20:59:43'),
(38, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:43', '2022-01-30 20:59:43'),
(39, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:43', '2022-01-30 20:59:43'),
(40, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:43', '2022-01-30 20:59:43'),
(41, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:43', '2022-01-30 20:59:43'),
(42, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:44', '2022-01-30 20:59:44'),
(43, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:44', '2022-01-30 20:59:44'),
(44, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:45', '2022-01-30 20:59:45'),
(45, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:45', '2022-01-30 20:59:45'),
(46, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:45', '2022-01-30 20:59:45'),
(47, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:45', '2022-01-30 20:59:45'),
(48, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:45', '2022-01-30 20:59:45'),
(49, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:45', '2022-01-30 20:59:45'),
(50, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:45', '2022-01-30 20:59:45'),
(51, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:45', '2022-01-30 20:59:45'),
(52, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:45', '2022-01-30 20:59:45'),
(53, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:45', '2022-01-30 20:59:45'),
(54, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:45', '2022-01-30 20:59:45'),
(55, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:46', '2022-01-30 20:59:46'),
(56, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:46', '2022-01-30 20:59:46'),
(57, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:46', '2022-01-30 20:59:46'),
(58, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:46', '2022-01-30 20:59:46'),
(59, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:46', '2022-01-30 20:59:46'),
(60, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:46', '2022-01-30 20:59:46'),
(61, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:46', '2022-01-30 20:59:46'),
(62, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:46', '2022-01-30 20:59:46'),
(63, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:46', '2022-01-30 20:59:46'),
(64, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:46', '2022-01-30 20:59:46'),
(65, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:47', '2022-01-30 20:59:47'),
(66, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:47', '2022-01-30 20:59:47'),
(67, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:47', '2022-01-30 20:59:47'),
(68, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:47', '2022-01-30 20:59:47'),
(69, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:47', '2022-01-30 20:59:47'),
(70, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:47', '2022-01-30 20:59:47'),
(71, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:47', '2022-01-30 20:59:47'),
(72, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:47', '2022-01-30 20:59:47'),
(73, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:47', '2022-01-30 20:59:47'),
(74, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:47', '2022-01-30 20:59:47'),
(75, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:47', '2022-01-30 20:59:47'),
(76, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:48', '2022-01-30 20:59:48'),
(77, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:48', '2022-01-30 20:59:48'),
(78, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:48', '2022-01-30 20:59:48'),
(79, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:48', '2022-01-30 20:59:48'),
(80, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:48', '2022-01-30 20:59:48'),
(81, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:48', '2022-01-30 20:59:48'),
(82, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:48', '2022-01-30 20:59:48'),
(83, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:48', '2022-01-30 20:59:48'),
(84, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:48', '2022-01-30 20:59:48'),
(85, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:48', '2022-01-30 20:59:48'),
(86, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:49', '2022-01-30 20:59:49'),
(87, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:49', '2022-01-30 20:59:49'),
(88, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:49', '2022-01-30 20:59:49'),
(89, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:49', '2022-01-30 20:59:49'),
(90, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:49', '2022-01-30 20:59:49'),
(91, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:49', '2022-01-30 20:59:49'),
(92, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:49', '2022-01-30 20:59:49'),
(93, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:49', '2022-01-30 20:59:49'),
(94, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:49', '2022-01-30 20:59:49'),
(95, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:49', '2022-01-30 20:59:49'),
(96, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:50', '2022-01-30 20:59:50'),
(97, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:50', '2022-01-30 20:59:50'),
(98, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:50', '2022-01-30 20:59:50'),
(99, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:50', '2022-01-30 20:59:50'),
(100, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:50', '2022-01-30 20:59:50'),
(101, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:50', '2022-01-30 20:59:50'),
(102, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:50', '2022-01-30 20:59:50'),
(103, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:50', '2022-01-30 20:59:50'),
(104, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:51', '2022-01-30 20:59:51'),
(105, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:51', '2022-01-30 20:59:51'),
(106, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:51', '2022-01-30 20:59:51'),
(107, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:51', '2022-01-30 20:59:51'),
(108, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:51', '2022-01-30 20:59:51'),
(109, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:51', '2022-01-30 20:59:51'),
(110, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:51', '2022-01-30 20:59:51'),
(111, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:51', '2022-01-30 20:59:51'),
(112, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:51', '2022-01-30 20:59:51'),
(113, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:51', '2022-01-30 20:59:51'),
(114, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:52', '2022-01-30 20:59:52'),
(115, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:52', '2022-01-30 20:59:52'),
(116, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:52', '2022-01-30 20:59:52'),
(117, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:52', '2022-01-30 20:59:52'),
(118, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:52', '2022-01-30 20:59:52'),
(119, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:52', '2022-01-30 20:59:52'),
(120, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:52', '2022-01-30 20:59:52'),
(121, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:52', '2022-01-30 20:59:52'),
(122, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:52', '2022-01-30 20:59:52'),
(123, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:52', '2022-01-30 20:59:52'),
(124, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:53', '2022-01-30 20:59:53'),
(125, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:53', '2022-01-30 20:59:53'),
(126, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:53', '2022-01-30 20:59:53'),
(127, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:54', '2022-01-30 20:59:54'),
(128, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:54', '2022-01-30 20:59:54'),
(129, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:54', '2022-01-30 20:59:54'),
(130, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:54', '2022-01-30 20:59:54'),
(131, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:54', '2022-01-30 20:59:54'),
(132, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:54', '2022-01-30 20:59:54'),
(133, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:54', '2022-01-30 20:59:54'),
(134, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:54', '2022-01-30 20:59:54'),
(135, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:54', '2022-01-30 20:59:54'),
(136, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:55', '2022-01-30 20:59:55'),
(137, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:55', '2022-01-30 20:59:55'),
(138, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:55', '2022-01-30 20:59:55'),
(139, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:55', '2022-01-30 20:59:55'),
(140, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:55', '2022-01-30 20:59:55'),
(141, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:55', '2022-01-30 20:59:55'),
(142, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:55', '2022-01-30 20:59:55'),
(143, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:55', '2022-01-30 20:59:55'),
(144, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:55', '2022-01-30 20:59:55'),
(145, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:55', '2022-01-30 20:59:55'),
(146, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:56', '2022-01-30 20:59:56'),
(147, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:56', '2022-01-30 20:59:56'),
(148, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:56', '2022-01-30 20:59:56'),
(149, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:56', '2022-01-30 20:59:56'),
(150, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:56', '2022-01-30 20:59:56'),
(151, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:56', '2022-01-30 20:59:56'),
(152, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:56', '2022-01-30 20:59:56'),
(153, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:56', '2022-01-30 20:59:56'),
(154, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:56', '2022-01-30 20:59:56'),
(155, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:56', '2022-01-30 20:59:56'),
(156, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:57', '2022-01-30 20:59:57'),
(157, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:57', '2022-01-30 20:59:57'),
(158, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:57', '2022-01-30 20:59:57'),
(159, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:57', '2022-01-30 20:59:57'),
(160, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:57', '2022-01-30 20:59:57'),
(161, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:57', '2022-01-30 20:59:57'),
(162, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:57', '2022-01-30 20:59:57'),
(163, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:57', '2022-01-30 20:59:57'),
(164, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:57', '2022-01-30 20:59:57'),
(165, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:58', '2022-01-30 20:59:58'),
(166, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:58', '2022-01-30 20:59:58'),
(167, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:58', '2022-01-30 20:59:58'),
(168, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:58', '2022-01-30 20:59:58'),
(169, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:58', '2022-01-30 20:59:58'),
(170, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:58', '2022-01-30 20:59:58'),
(171, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:58', '2022-01-30 20:59:58'),
(172, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:58', '2022-01-30 20:59:58'),
(173, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:59', '2022-01-30 20:59:59'),
(174, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:59', '2022-01-30 20:59:59'),
(175, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:59', '2022-01-30 20:59:59'),
(176, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:59', '2022-01-30 20:59:59'),
(177, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:59', '2022-01-30 20:59:59'),
(178, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:59', '2022-01-30 20:59:59'),
(179, 'wildan', 'jl.simpang sulfat', '2022-01-30 20:59:59', '2022-01-30 20:59:59'),
(180, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:00', '2022-01-30 21:00:00'),
(181, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:00', '2022-01-30 21:00:00'),
(182, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:00', '2022-01-30 21:00:00'),
(183, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:00', '2022-01-30 21:00:00'),
(184, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:00', '2022-01-30 21:00:00'),
(185, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:00', '2022-01-30 21:00:00'),
(186, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:00', '2022-01-30 21:00:00'),
(187, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:00', '2022-01-30 21:00:00'),
(188, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:01', '2022-01-30 21:00:01'),
(189, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:01', '2022-01-30 21:00:01'),
(190, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:01', '2022-01-30 21:00:01'),
(191, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:02', '2022-01-30 21:00:02'),
(192, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:02', '2022-01-30 21:00:02'),
(193, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:02', '2022-01-30 21:00:02'),
(194, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:03', '2022-01-30 21:00:03'),
(195, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:03', '2022-01-30 21:00:03'),
(196, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:03', '2022-01-30 21:00:03'),
(197, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:03', '2022-01-30 21:00:03'),
(198, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:04', '2022-01-30 21:00:04'),
(199, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:04', '2022-01-30 21:00:04'),
(200, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:04', '2022-01-30 21:00:04'),
(201, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:04', '2022-01-30 21:00:04'),
(202, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:05', '2022-01-30 21:00:05'),
(203, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:05', '2022-01-30 21:00:05'),
(204, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:05', '2022-01-30 21:00:05'),
(205, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:00:05', '2022-01-30 21:00:05'),
(206, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:07', '2022-01-30 21:01:07'),
(207, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:07', '2022-01-30 21:01:07'),
(208, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:07', '2022-01-30 21:01:07'),
(209, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:07', '2022-01-30 21:01:07'),
(210, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:08', '2022-01-30 21:01:08'),
(211, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:08', '2022-01-30 21:01:08'),
(212, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:08', '2022-01-30 21:01:08'),
(213, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:08', '2022-01-30 21:01:08'),
(214, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:08', '2022-01-30 21:01:08'),
(215, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:08', '2022-01-30 21:01:08'),
(216, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:09', '2022-01-30 21:01:09'),
(217, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:09', '2022-01-30 21:01:09'),
(218, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:09', '2022-01-30 21:01:09'),
(219, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:09', '2022-01-30 21:01:09'),
(220, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:10', '2022-01-30 21:01:10'),
(221, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:10', '2022-01-30 21:01:10'),
(222, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:10', '2022-01-30 21:01:10'),
(223, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:10', '2022-01-30 21:01:10'),
(224, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:11', '2022-01-30 21:01:11'),
(225, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:11', '2022-01-30 21:01:11'),
(226, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:11', '2022-01-30 21:01:11'),
(227, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:11', '2022-01-30 21:01:11'),
(228, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:11', '2022-01-30 21:01:11'),
(229, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:12', '2022-01-30 21:01:12'),
(230, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:12', '2022-01-30 21:01:12'),
(231, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:12', '2022-01-30 21:01:12'),
(232, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:12', '2022-01-30 21:01:12'),
(233, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:13', '2022-01-30 21:01:13'),
(234, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:13', '2022-01-30 21:01:13'),
(235, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:13', '2022-01-30 21:01:13'),
(236, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:13', '2022-01-30 21:01:13'),
(237, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:13', '2022-01-30 21:01:13'),
(238, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:14', '2022-01-30 21:01:14'),
(239, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:14', '2022-01-30 21:01:14'),
(240, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:14', '2022-01-30 21:01:14'),
(241, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:14', '2022-01-30 21:01:14'),
(242, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:14', '2022-01-30 21:01:14'),
(243, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:15', '2022-01-30 21:01:15'),
(244, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:15', '2022-01-30 21:01:15'),
(245, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:15', '2022-01-30 21:01:15'),
(246, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:15', '2022-01-30 21:01:15'),
(247, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:16', '2022-01-30 21:01:16'),
(248, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:16', '2022-01-30 21:01:16'),
(249, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:16', '2022-01-30 21:01:16'),
(250, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:16', '2022-01-30 21:01:16'),
(251, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:16', '2022-01-30 21:01:16'),
(252, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:17', '2022-01-30 21:01:17'),
(253, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:17', '2022-01-30 21:01:17'),
(254, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:17', '2022-01-30 21:01:17'),
(255, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:17', '2022-01-30 21:01:17'),
(256, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:18', '2022-01-30 21:01:18'),
(257, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:18', '2022-01-30 21:01:18'),
(258, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:18', '2022-01-30 21:01:18'),
(259, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:18', '2022-01-30 21:01:18'),
(260, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:18', '2022-01-30 21:01:18'),
(261, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:19', '2022-01-30 21:01:19'),
(262, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:20', '2022-01-30 21:01:20'),
(263, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:21', '2022-01-30 21:01:21'),
(264, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:21', '2022-01-30 21:01:21'),
(265, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:21', '2022-01-30 21:01:21'),
(266, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:21', '2022-01-30 21:01:21'),
(267, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:22', '2022-01-30 21:01:22'),
(268, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:22', '2022-01-30 21:01:22'),
(269, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:22', '2022-01-30 21:01:22'),
(270, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:22', '2022-01-30 21:01:22'),
(271, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:22', '2022-01-30 21:01:22'),
(272, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:23', '2022-01-30 21:01:23'),
(273, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:23', '2022-01-30 21:01:23'),
(274, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:23', '2022-01-30 21:01:23'),
(275, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:23', '2022-01-30 21:01:23'),
(276, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:24', '2022-01-30 21:01:24'),
(277, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:24', '2022-01-30 21:01:24'),
(278, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:24', '2022-01-30 21:01:24'),
(279, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:24', '2022-01-30 21:01:24'),
(280, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:25', '2022-01-30 21:01:25'),
(281, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:25', '2022-01-30 21:01:25'),
(282, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:25', '2022-01-30 21:01:25'),
(283, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:25', '2022-01-30 21:01:25'),
(284, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:26', '2022-01-30 21:01:26'),
(285, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:26', '2022-01-30 21:01:26'),
(286, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:26', '2022-01-30 21:01:26'),
(287, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:26', '2022-01-30 21:01:26'),
(288, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:26', '2022-01-30 21:01:26'),
(289, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:27', '2022-01-30 21:01:27'),
(290, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:27', '2022-01-30 21:01:27'),
(291, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:27', '2022-01-30 21:01:27'),
(292, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:28', '2022-01-30 21:01:28'),
(293, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:28', '2022-01-30 21:01:28'),
(294, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:28', '2022-01-30 21:01:28'),
(295, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:28', '2022-01-30 21:01:28'),
(296, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:28', '2022-01-30 21:01:28'),
(297, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:28', '2022-01-30 21:01:28'),
(298, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:28', '2022-01-30 21:01:28'),
(299, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:28', '2022-01-30 21:01:28'),
(300, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:29', '2022-01-30 21:01:29'),
(301, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:29', '2022-01-30 21:01:29'),
(302, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:29', '2022-01-30 21:01:29'),
(303, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:29', '2022-01-30 21:01:29'),
(304, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:29', '2022-01-30 21:01:29'),
(305, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:29', '2022-01-30 21:01:29'),
(306, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:30', '2022-01-30 21:01:30'),
(307, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:30', '2022-01-30 21:01:30'),
(308, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:30', '2022-01-30 21:01:30'),
(309, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:30', '2022-01-30 21:01:30'),
(310, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:30', '2022-01-30 21:01:30'),
(311, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:30', '2022-01-30 21:01:30'),
(312, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:30', '2022-01-30 21:01:30'),
(313, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:30', '2022-01-30 21:01:30'),
(314, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:31', '2022-01-30 21:01:31'),
(315, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:31', '2022-01-30 21:01:31'),
(316, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:31', '2022-01-30 21:01:31'),
(317, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:31', '2022-01-30 21:01:31'),
(318, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:31', '2022-01-30 21:01:31'),
(319, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:31', '2022-01-30 21:01:31'),
(320, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:31', '2022-01-30 21:01:31'),
(321, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:31', '2022-01-30 21:01:31'),
(322, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:32', '2022-01-30 21:01:32'),
(323, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:32', '2022-01-30 21:01:32'),
(324, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:32', '2022-01-30 21:01:32'),
(325, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:32', '2022-01-30 21:01:32'),
(326, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:32', '2022-01-30 21:01:32'),
(327, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:32', '2022-01-30 21:01:32'),
(328, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:32', '2022-01-30 21:01:32'),
(329, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:33', '2022-01-30 21:01:33'),
(330, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:33', '2022-01-30 21:01:33'),
(331, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:33', '2022-01-30 21:01:33'),
(332, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:33', '2022-01-30 21:01:33'),
(333, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:33', '2022-01-30 21:01:33'),
(334, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:33', '2022-01-30 21:01:33'),
(335, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:33', '2022-01-30 21:01:33'),
(336, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:34', '2022-01-30 21:01:34'),
(337, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:34', '2022-01-30 21:01:34'),
(338, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:34', '2022-01-30 21:01:34'),
(339, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:34', '2022-01-30 21:01:34'),
(340, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:34', '2022-01-30 21:01:34'),
(341, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:35', '2022-01-30 21:01:35'),
(342, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:35', '2022-01-30 21:01:35'),
(343, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:35', '2022-01-30 21:01:35'),
(344, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:35', '2022-01-30 21:01:35'),
(345, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:35', '2022-01-30 21:01:35'),
(346, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:35', '2022-01-30 21:01:35'),
(347, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:35', '2022-01-30 21:01:35'),
(348, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:35', '2022-01-30 21:01:35'),
(349, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:36', '2022-01-30 21:01:36'),
(350, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:36', '2022-01-30 21:01:36'),
(351, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:36', '2022-01-30 21:01:36'),
(352, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:36', '2022-01-30 21:01:36'),
(353, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:36', '2022-01-30 21:01:36'),
(354, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:36', '2022-01-30 21:01:36'),
(355, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:36', '2022-01-30 21:01:36'),
(356, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:36', '2022-01-30 21:01:36'),
(357, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:37', '2022-01-30 21:01:37'),
(358, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:37', '2022-01-30 21:01:37'),
(359, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:37', '2022-01-30 21:01:37'),
(360, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:37', '2022-01-30 21:01:37'),
(361, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:37', '2022-01-30 21:01:37'),
(362, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:38', '2022-01-30 21:01:38'),
(363, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:38', '2022-01-30 21:01:38'),
(364, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:38', '2022-01-30 21:01:38'),
(365, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:38', '2022-01-30 21:01:38'),
(366, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:38', '2022-01-30 21:01:38'),
(367, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:38', '2022-01-30 21:01:38'),
(368, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:39', '2022-01-30 21:01:39'),
(369, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:39', '2022-01-30 21:01:39'),
(370, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:39', '2022-01-30 21:01:39'),
(371, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:39', '2022-01-30 21:01:39'),
(372, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:39', '2022-01-30 21:01:39'),
(373, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:39', '2022-01-30 21:01:39'),
(374, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:39', '2022-01-30 21:01:39'),
(375, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:40', '2022-01-30 21:01:40'),
(376, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:40', '2022-01-30 21:01:40'),
(377, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:40', '2022-01-30 21:01:40'),
(378, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:40', '2022-01-30 21:01:40'),
(379, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:40', '2022-01-30 21:01:40'),
(380, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:40', '2022-01-30 21:01:40'),
(381, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:40', '2022-01-30 21:01:40'),
(382, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:41', '2022-01-30 21:01:41'),
(383, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:41', '2022-01-30 21:01:41'),
(384, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:41', '2022-01-30 21:01:41'),
(385, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:41', '2022-01-30 21:01:41'),
(386, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:41', '2022-01-30 21:01:41'),
(387, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:41', '2022-01-30 21:01:41'),
(388, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:41', '2022-01-30 21:01:41'),
(389, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:42', '2022-01-30 21:01:42'),
(390, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:42', '2022-01-30 21:01:42'),
(391, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:42', '2022-01-30 21:01:42'),
(392, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:42', '2022-01-30 21:01:42'),
(393, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:42', '2022-01-30 21:01:42'),
(394, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:42', '2022-01-30 21:01:42'),
(395, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:43', '2022-01-30 21:01:43'),
(396, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:43', '2022-01-30 21:01:43'),
(397, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:43', '2022-01-30 21:01:43'),
(398, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:43', '2022-01-30 21:01:43'),
(399, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:43', '2022-01-30 21:01:43'),
(400, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:43', '2022-01-30 21:01:43'),
(401, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:44', '2022-01-30 21:01:44'),
(402, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:44', '2022-01-30 21:01:44'),
(403, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:44', '2022-01-30 21:01:44'),
(404, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:44', '2022-01-30 21:01:44'),
(405, 'wildan', 'jl.simpang sulfat', '2022-01-30 21:01:44', '2022-01-30 21:01:44'),
(406, 'wildan lastttttttt', 'jl.simpang sulfat', '2022-01-30 21:28:16', '2022-01-30 21:28:16'),
(407, 'adam', 'jl.simpang sulfat', '2022-01-30 22:29:56', '2022-01-30 22:29:56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
