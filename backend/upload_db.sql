-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Des 2023 pada 16.52
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upload_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `name`, `address`, `price`, `image`, `url`, `createdAt`, `updatedAt`, `desc`) VALUES
(1, 'andra', 'jogja', 50, '7ed29fbf6adb1454ffd34ca3639d58b3.jpg', 'http://localhost:5000/images/7ed29fbf6adb1454ffd34ca3639d58b3.jpg', '2022-05-25 21:54:51', '2022-05-25 21:54:51', 'jual murah sekali'),
(7, 'Aigner No 1 OUD', 'yogyakarta', 123, 'aa256da03a5eae1f969787f212996af8.jpg', 'http://localhost:5000/images/aa256da03a5eae1f969787f212996af8.jpg', '2022-05-24 02:38:13', '2022-05-25 21:31:33', ''),
(8, 'Aigner Platinum', 'yogyakarta', 123, 'c454370ed7cc1bcd9c1b47cabc5b70b3.jpg', 'http://localhost:5000/images/c454370ed7cc1bcd9c1b47cabc5b70b3.jpg', '2022-05-25 21:32:01', '2022-05-25 21:34:29', ''),
(9, 'Aigner Pur Home', 'yogyakarta', 123, '2623de7f063ee72f4eca495ff1a90169.jpg', 'http://localhost:5000/images/2623de7f063ee72f4eca495ff1a90169.jpg', '2022-05-25 21:35:04', '2022-05-25 21:35:04', ''),
(10, 'Bulgari White', 'yogyakarta', 123, '5c060424c5c6956be047c830733d91c7.jpg', 'http://localhost:5000/images/5c060424c5c6956be047c830733d91c7.jpg', '2022-05-25 21:35:45', '2022-05-25 21:35:45', ''),
(11, 'Bulgari Home Soir', 'yogyakarta', 123, '99f518ec6a505089f50b9352c3649990.jpg', 'http://localhost:5000/images/99f518ec6a505089f50b9352c3649990.jpg', '2022-05-25 21:36:20', '2022-05-25 21:36:20', ''),
(12, 'Lacoste Black', 'yogyakarta', 123, 'ea7a85c8e38401b2416e679cee4412e3.jpg', 'http://localhost:5000/images/ea7a85c8e38401b2416e679cee4412e3.jpg', '2022-05-25 21:53:45', '2022-05-25 21:53:45', ''),
(13, 'Bulgari Men', 'yogyakarta', 123, 'b50095152339425fa77783100f35bc9d.jpg', 'http://localhost:5000/images/b50095152339425fa77783100f35bc9d.jpg', '2022-05-25 21:54:08', '2022-05-25 21:54:08', ''),
(14, 'Bulgari Jasmine', 'yogyakarta', 123, '0541bf43a8994e6f30ffa43bd2d73ee3.jpg', 'http://localhost:5000/images/0541bf43a8994e6f30ffa43bd2d73ee3.jpg', '2022-05-25 21:54:32', '2022-05-25 21:54:32', ''),
(15, 'Charlie Revlon', 'yogyakarta', 123, '7ed29fbf6adb1454ffd34ca3639d58b3.jpg', 'http://localhost:5000/images/7ed29fbf6adb1454ffd34ca3639d58b3.jpg', '2022-05-25 21:54:51', '2022-05-25 21:54:51', ''),
(16, 'zaki', 'bekasi', 30, 'd40212e38fac4022b2410abe5f1637d2.jpg', 'http://localhost:5000/images/d40212e38fac4022b2410abe5f1637d2.jpg', '2023-12-11 05:57:42', '2023-12-11 05:57:42', 'ini anak dijual saja'),
(17, 'nabraska', 'sleman', 123, 'e982579c339da281595e899ebdddbb7a.jpg', 'http://localhost:5000/images/e982579c339da281595e899ebdddbb7a.jpg', '2023-12-11 06:02:27', '2023-12-11 06:02:27', 'anak bawell dijual cepat'),
(18, 'zaskia gotik', 'yogyakarta', 50, '7f8d80c824b3ccb319725dc4d1a4d1e5.png', 'http://localhost:5000/images/7f8d80c824b3ccb319725dc4d1a4d1e5.png', '2023-12-11 06:16:37', '2023-12-11 06:16:37', 'gatau mau kasih deskripsi apaan'),
(19, 'fftrtwsfsfs', 'yogyakarta', 30, 'cc423f90a3af47341d40096d87e0db65.png', 'http://localhost:5000/images/cc423f90a3af47341d40096d87e0db65.png', '2023-12-11 15:18:19', '2023-12-11 15:18:19', 'aduasygfwebfgww'),
(20, 'ee', 'e', 30000, '20f2fe850bc908ed2415d3ce9ddba7c6.png', 'http://localhost:5000/images/20f2fe850bc908ed2415d3ce9ddba7c6.png', '2023-12-11 15:21:48', '2023-12-11 15:21:48', 'rerw'),
(21, 'ewwt', 's', 30, '20f2fe850bc908ed2415d3ce9ddba7c6.png', 'http://localhost:5000/images/20f2fe850bc908ed2415d3ce9ddba7c6.png', '2023-12-11 15:22:19', '2023-12-11 15:22:19', 'adadA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-CX7PwCyqDQD-du3XWm1icKfeWGaa7ym', '2023-12-12 06:52:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:50', '2023-12-11 06:52:50'),
('-Ftoq-OeowEwzbE41ZFQRKynGyNHfTgy', '2023-12-12 06:52:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:30', '2023-12-11 06:52:30'),
('-kGDfWXam25hzXJxhYTsVElx2t4XzVyw', '2023-12-12 04:54:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:48', '2023-12-11 04:54:48'),
('-YI5WjumzBiZ-9IPWszLMsUf_kbu0q35', '2023-12-12 06:07:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:07:24', '2023-12-11 06:07:24'),
('0NHYcGH3lvutByYG94V2QmZ4D2qucx11', '2023-12-12 06:11:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:11:07', '2023-12-11 06:11:07'),
('0SEfk9XR3LY04nlTSN509LFVKiv6hB7e', '2023-12-12 04:54:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:29', '2023-12-11 04:54:29'),
('16NhpKto1KU2x-izOwp-735G3CgA9_sy', '2023-12-12 06:19:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:19:37', '2023-12-11 06:19:37'),
('1hx-CeMw6PQKnf-o5AeHkQEXQjNYJ5G4', '2023-12-12 04:54:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:38', '2023-12-11 04:54:38'),
('2ka3TAQMEjLO9zc6-XPW_fKN3A2JTe3a', '2023-12-12 15:29:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:29:15', '2023-12-11 15:29:15'),
('2l3MAGzlP2S9Xjp6VTKDIMtspcRTYTo-', '2023-12-12 06:05:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04a31f0e-52ee-4eae-9d25-338a126cd151\"}', '2023-12-11 06:05:20', '2023-12-11 06:05:20'),
('2Mwq5lM3I8KjsznEHAdcoty0PCbl90EX', '2023-12-12 15:34:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:34:33', '2023-12-11 15:34:33'),
('2P5fyrOBFG9IlFtWi-YZ2Q7jxAgp2Egf', '2023-12-12 15:29:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:29:14', '2023-12-11 15:29:14'),
('2VQb3rg0wPF3A5Dmurk9lWZyYNzv0DIR', '2023-12-12 06:12:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:12:30', '2023-12-11 06:12:30'),
('3EHeXNaHlOmGs5H_arLj_-dJ0gGhup4c', '2023-12-12 05:55:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:55:08', '2023-12-11 05:55:08'),
('3gYgQWYi3FcypLbhNJGNlvCqcw7SbKRc', '2023-12-12 03:19:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04a31f0e-52ee-4eae-9d25-338a126cd151\"}', '2023-12-11 03:19:23', '2023-12-11 03:19:23'),
('3SMMOgHwEXWVqdb0rIAPn9J5uYavew_Z', '2023-12-12 06:55:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:33', '2023-12-11 06:55:33'),
('3w2mYfufJ0nonL8TGAGAParPJbA1QwQj', '2023-12-12 06:07:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:07:24', '2023-12-11 06:07:24'),
('4T5pAlIcBKOIGqyumz2wcLziZwlPIzGU', '2023-12-12 15:14:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:14:14', '2023-12-11 15:14:14'),
('5KTVDTiM1evFt9d4gQ-ioR2myXm5YWHT', '2023-12-12 06:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:56:09', '2023-12-11 06:56:09'),
('5NhxPx3zFZe3aUN3OFB_YyJrQnIUK29g', '2023-12-12 14:55:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04a31f0e-52ee-4eae-9d25-338a126cd151\"}', '2023-12-11 14:55:16', '2023-12-11 14:55:16'),
('6ueYFfpsmXe9aP-GyNrxSwN6K_c-YDJ-', '2023-12-12 15:36:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:36:51', '2023-12-11 15:36:51'),
('6wVL_56Q2hxvdIp_zz1TN7Xg7u_6qom2', '2023-12-12 06:47:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:47:42', '2023-12-11 06:47:42'),
('7yYARtpgsp_lTloXAkBW8ShMpbiA76hk', '2023-12-12 06:55:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:52', '2023-12-11 06:55:52'),
('8XAonPZNTtyRkP4Mc67TJTkLs8Ncf78m', '2023-12-12 05:21:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:21:19', '2023-12-11 05:21:19'),
('8YYQGC-tSdR9Ae0DLaVJkbsbyRJ1noXn', '2023-12-12 06:56:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:56:02', '2023-12-11 06:56:02'),
('94Hx9nzNqd9gnWEXqjQVH5jV8dy0r-Zv', '2023-12-12 15:21:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:21:48', '2023-12-11 15:21:48'),
('97Ojg9kCFzTbOWhrY4y-yXDw8adkfRBu', '2023-12-12 04:53:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:53:03', '2023-12-11 04:53:03'),
('9MBMNFoS1iwv33xpXMxJSjOg50VT0QMu', '2023-12-12 15:22:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:22:47', '2023-12-11 15:22:47'),
('9ZAh5xLij59VTmrTNECXkwbk8vNwdJRE', '2023-12-12 06:19:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:19:17', '2023-12-11 06:19:17'),
('aAPA8WAZUVTIzP5MK0IZ2yktmjfUT-z2', '2023-12-12 06:11:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:11:19', '2023-12-11 06:11:19'),
('aix8Q6Y_mPSjKpufM8B9nIvEhGNT8BfP', '2023-12-12 06:03:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:03:17', '2023-12-11 06:03:17'),
('AJtRTEaOKLfQVoref3AprjBz-L7HymKz', '2023-12-12 15:29:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:29:08', '2023-12-11 15:29:08'),
('aop7T8JpMT4JkyfRuLMf85CvP1ckkQ8L', '2023-12-12 06:57:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04a31f0e-52ee-4eae-9d25-338a126cd151\"}', '2023-12-11 06:57:07', '2023-12-11 06:57:07'),
('aP_xv7ZI9MImcq4OTsvWxvevNId_EHO1', '2023-12-12 06:52:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:26', '2023-12-11 06:52:26'),
('AuxPxAzVvFlYmO_tcHWSlTqDgjkgYsFM', '2023-12-12 15:32:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:32:17', '2023-12-11 15:32:17'),
('b03gXlfAGJWLPR8Z3_K1Efd6BiuPpFum', '2023-12-12 15:21:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:21:01', '2023-12-11 15:21:01'),
('b1WEVIqFPdlxtN4flZohGl9ZyLT_Bgs6', '2023-12-12 03:15:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 03:15:14', '2023-12-11 03:15:14'),
('B3f0qB-2uwbXCuM81IrxT-CMk8O01aMF', '2023-12-12 06:19:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:19:17', '2023-12-11 06:19:17'),
('bEdw9CbHYAyn3tQoDw3msDQ3uo_l3O34', '2023-12-12 04:54:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:46', '2023-12-11 04:54:46'),
('bJjwfC5C8Ac4EcxBN1VRLZIDS7DPPzrY', '2023-12-12 15:21:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:21:01', '2023-12-11 15:21:01'),
('BMAH6DSAFszoW24uc4d8EWNGJ3VwyAfJ', '2023-12-12 04:54:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:42', '2023-12-11 04:54:42'),
('bMbyTS2symJ0OA8mhJsxtPNpaClbKjVq', '2023-12-12 06:52:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:49', '2023-12-11 06:52:49'),
('BopBx2NDI3Gg9AhivLpEvb5kYPa3expt', '2023-12-12 15:01:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:01:08', '2023-12-11 15:01:08'),
('bREXUUEkslZDhhEEjXOhYa3meLn0f4_w', '2023-12-12 15:26:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:26:28', '2023-12-11 15:26:28'),
('bRpRd6OpMqX9yXIlLtNZsBmKMKlXAO0s', '2023-12-12 06:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:56:09', '2023-12-11 06:56:09'),
('Bth8dRf2WCSM1mpxSaqP7oXvUiDqbX6S', '2023-12-12 06:52:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:26', '2023-12-11 06:52:26'),
('BvAMNEezNuhw27vema9mXCDDFJb37IOt', '2023-12-12 06:51:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:51:25', '2023-12-11 06:51:25'),
('ByeBA-em5z4hHtfc9lF3hdUIPs-r2fzi', '2023-12-12 06:11:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:11:27', '2023-12-11 06:11:27'),
('c5sjXLY2UGaDgS0C-fepFVT99ui-ObT-', '2023-12-12 06:55:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:53', '2023-12-11 06:55:53'),
('c9ViadMP_sWgj5qpsj4lNrc7POqBzDvd', '2023-12-12 14:55:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:55:17', '2023-12-11 14:55:17'),
('CCWzZo0nb3w1nSdTd141hrex5KCDyaM_', '2023-12-12 06:05:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:05:13', '2023-12-11 06:05:13'),
('ChcouU8Py5dH2zxlLNU_R5Ioo63e3I8C', '2023-12-12 06:57:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:57:07', '2023-12-11 06:57:07'),
('Cv_bRi6PHsubB0B_rlRUOln4oI9G-PO0', '2023-12-12 06:55:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:33', '2023-12-11 06:55:33'),
('CzNOMfYazvj5ib0iZuU5YBmdwiYF5UO7', '2023-12-12 05:21:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:21:13', '2023-12-11 05:21:13'),
('d-MkWt0uQ-4QuUtw_LQEckQq3jM0pJyE', '2023-12-12 06:55:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:32', '2023-12-11 06:55:32'),
('dgNjWuGyFJx57fd7DRD98eyTNZ8H9r69', '2023-12-12 06:52:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:51', '2023-12-11 06:52:51'),
('dNhpJ3c2ZZHBSWObfUxOWdJ1OvAEudFK', '2023-12-12 15:34:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:34:48', '2023-12-11 15:34:48'),
('dQxVcKDy0kUPjhT3Jeg0GivWaEdLIsdC', '2023-12-12 14:55:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:55:17', '2023-12-11 14:55:17'),
('E9xjADdSPUbjIqTSDi-DwLYovXhxGqBv', '2023-12-12 06:12:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:12:36', '2023-12-11 06:12:36'),
('eAinfJQkXOFAS8RANKXwyzUj1KWQuvWr', '2023-12-12 06:55:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:53', '2023-12-11 06:55:53'),
('ebWb42l9vmUgXMDU2xyqyanT6TKihOno', '2023-12-12 04:54:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:38', '2023-12-11 04:54:38'),
('EFrJCEFkZzmCQa92KRyDuakm6qZgTRSC', '2023-12-12 06:52:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:27', '2023-12-11 06:52:27'),
('EiP79qfC-EWaLAOOTeXovhybptDyWLOF', '2023-12-12 14:55:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:55:05', '2023-12-11 14:55:05'),
('ejCW7QTXpHu70Nd5XhDm1Dosf1gvD7dy', '2023-12-12 15:35:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:35:40', '2023-12-11 15:35:40'),
('EvRIKngZVRYOXhI_Lm2UdheEBeW4ehbH', '2023-12-12 14:57:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:57:31', '2023-12-11 14:57:31'),
('f1S3Imb5hsgkx8gPBxKwNilxKAlJoRAD', '2023-12-12 06:55:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:51', '2023-12-11 06:55:51'),
('f4gS94gMA8y0F81BlU2ufLBiFmjfuF-v', '2023-12-12 04:54:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:44', '2023-12-11 04:54:44'),
('F8tVzWWHNTs47FeRUbBljJp_vIReWKzO', '2023-12-12 06:52:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:31', '2023-12-11 06:52:31'),
('Fin3vi5KosbS1D1K_J3p38okxqLG1YsV', '2023-12-12 04:53:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:53:48', '2023-12-11 04:53:48'),
('fis-F9nd_6NW2NmBRmvKp52yzFPNteST', '2023-12-12 06:52:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:28', '2023-12-11 06:52:28'),
('FQzMFUy3BKBMUuFF77vleCoKV_p6FOci', '2023-12-12 04:53:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:53:47', '2023-12-11 04:53:47'),
('FSr3nIHgpSskuDOe4oXw-7nM1hZlVrqb', '2023-12-12 06:52:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:27', '2023-12-11 06:52:27'),
('FxP70chI8MpcQOS-GMUpf8EYabwe9oE6', '2023-12-12 15:23:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:23:06', '2023-12-11 15:23:06'),
('gi4ODqvJZClyJfx_JtnuJ7D7UDGbUdnr', '2023-12-12 14:54:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:54:56', '2023-12-11 14:54:56'),
('gmOYY-VjYinMfmNR8jWSwvQ9RgojQDCN', '2023-12-12 04:53:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:53:03', '2023-12-11 04:53:03'),
('GQY5GZzIcg2mvKyJW4NWS6lROKbvastR', '2023-12-12 06:16:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04a31f0e-52ee-4eae-9d25-338a126cd151\"}', '2023-12-11 02:12:12', '2023-12-11 06:16:38'),
('gReXJWORpoX_esh7BWG1hT8O-Vq6-rjn', '2023-12-12 06:16:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:16:38', '2023-12-11 06:16:38'),
('GSb_dfgdT6pYqTBAFzHwLQHkSq3akNlV', '2023-12-12 06:12:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:12:21', '2023-12-11 06:12:21'),
('gUke3WhzAYXV27psdrYaWBqr0Db39mwx', '2023-12-12 05:53:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:53:49', '2023-12-11 05:53:49'),
('gZIHHPsExktw5RBjdY1WvB8oe7WaoyZ1', '2023-12-12 06:47:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:47:41', '2023-12-11 06:47:41'),
('h2rpGm-ZtN01pIk0JvK1Zeh-aqFNNgTX', '2023-12-12 06:51:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:51:25', '2023-12-11 06:51:25'),
('hped5x_K9v8QoTZXQZ-g-O9GnU-mh3B-', '2023-12-12 06:52:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:24', '2023-12-11 06:52:24'),
('hpTIZv4gTHpKC_XjyLKuU9vQ3xHa4gW0', '2023-12-12 06:02:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:02:27', '2023-12-11 06:02:27'),
('HX1-Ctl_JEkmf_RICSSM_i2R--ruOB1Q', '2023-12-12 04:54:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:48', '2023-12-11 04:54:48'),
('i6mP0O-B1mlskoYFmkz33rnEHfevVUy3', '2023-12-12 15:34:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:34:43', '2023-12-11 15:34:43'),
('i7ItgXEe0iIKPWi8CLFtu22l1-0VRfH0', '2023-12-12 04:54:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:46', '2023-12-11 04:54:46'),
('i7M9gkxI75Fs9OU9YRqqNWAY9OM3tLJm', '2023-12-12 06:11:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:11:27', '2023-12-11 06:11:27'),
('iHE-ukyXKijeM_uZBnwaRqHJaGnoFgvc', '2023-12-12 15:17:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:17:23', '2023-12-11 15:17:23'),
('iIHseNUKIHLqMVb59fzUmb4iE1yLXf97', '2023-12-12 06:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04a31f0e-52ee-4eae-9d25-338a126cd151\"}', '2023-12-11 06:56:09', '2023-12-11 06:56:09'),
('iixaUeLJ9QplViJgAFE15bzpBsf7t6dc', '2023-12-12 06:19:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 02:54:28', '2023-12-11 06:19:17'),
('iPK6mW3fC93l9dwfwxxrNobfXdiMl3z_', '2023-12-12 15:22:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:22:19', '2023-12-11 15:22:19'),
('j2RZU4yUCEffiuL7YD8Ix0S2bzUxXMQ0', '2023-12-12 06:52:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:49', '2023-12-11 06:52:49'),
('j4dIDWG-xzdYF5R7VnQvXe6di9Rw8Pzp', '2023-12-12 06:19:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:19:17', '2023-12-11 06:19:17'),
('jAqx6xRlKsNnOQJmG0S7FK7Hs_KSNf8i', '2023-12-12 06:56:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:56:59', '2023-12-11 06:56:59'),
('Jbd8oqV7A3z9oeDiJSJAAzMvrh9dvtVq', '2023-12-12 15:22:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:22:19', '2023-12-11 15:22:19'),
('jDQHgRUNfJF7DwqXr1A6JuaEQYw6bJ-N', '2023-12-12 15:29:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04a31f0e-52ee-4eae-9d25-338a126cd151\"}', '2023-12-11 15:29:15', '2023-12-11 15:29:15'),
('JG0GtRoZqgwrh7dbTAhdilvDboIC5Q-p', '2023-12-12 06:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:56:09', '2023-12-11 06:56:09'),
('JgIx1PD6D6IgMkDTBrSiYS8EfpFMNf2U', '2023-12-12 06:55:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:32', '2023-12-11 06:55:32'),
('jhaQ3rNtRi9E0hAwoXVm1oK-XRM-omkV', '2023-12-12 06:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:56:09', '2023-12-11 06:56:09'),
('JPsflpqyuh4jXv0maFaVTOw4_AE1ZSKs', '2023-12-12 05:57:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:57:42', '2023-12-11 05:57:42'),
('JsXnxO6GD-DQ1IWpsi_xDTjG6PNT-SOk', '2023-12-12 06:47:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:47:41', '2023-12-11 06:47:41'),
('JxcU97rkDEjfz6UBvHNxzCVibQ7kkZU0', '2023-12-12 06:57:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:57:07', '2023-12-11 06:57:07'),
('K-6HLUZ75eIAvQZEhojbVvvaNrWzvlFy', '2023-12-12 15:29:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:29:15', '2023-12-11 15:29:15'),
('k-8_JV37ncqjSxvR5qmXiMbtTbEJVIU4', '2023-12-12 15:26:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:26:27', '2023-12-11 15:26:27'),
('Kc06iLnuuXGOOpnE_9E7DSOQPH2ovNy3', '2023-12-12 15:34:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:34:12', '2023-12-11 15:34:12'),
('KFuUtXMW_cVtfSy4NNMNOTKaBnJzWgWg', '2023-12-12 06:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:56:09', '2023-12-11 06:56:09'),
('Kz2d-WIj84RAYepXRwoDNQITm-vHStFq', '2023-12-12 06:11:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:11:05', '2023-12-11 06:11:05'),
('leuIRZKNObXhOFRhcH6SRXLhN83LSyV0', '2023-12-12 02:12:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 02:12:11', '2023-12-11 02:12:11'),
('lfPCy5GOODlsdvWa4V6iYi1_mBtjNTfC', '2023-12-12 04:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:56:09', '2023-12-11 04:56:09'),
('lkuINppS_rhf2jfozSTpr031U8-Khgog', '2023-12-12 04:10:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:10:18', '2023-12-11 04:10:18'),
('lky3LgRFeFBhCnJALfzsIGtFSOmcInat', '2023-12-12 06:52:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:22', '2023-12-11 06:52:22'),
('lR-16eO-fdrz8vTAVlA3b3zns_QQ4a1l', '2023-12-12 06:52:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:50', '2023-12-11 06:52:50'),
('ltnSz9wht6du2yNkJEobm5oUmrXJAlRf', '2023-12-12 06:11:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:11:54', '2023-12-11 06:11:54'),
('lu95gqVzySTyb99JVHlKyz1CrlDohGei', '2023-12-12 05:58:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:58:02', '2023-12-11 05:58:02'),
('LWjrJtkTxIhW9CFs24HbjtaH3kOZJVN9', '2023-12-12 15:34:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:34:48', '2023-12-11 15:34:48'),
('MAF7kVzcdVnxU8fanWnz3A32Bj3oplgy', '2023-12-12 15:29:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:29:09', '2023-12-11 15:29:09'),
('med0CcM6BK8nfxntllo_jGRMRo1w0W1y', '2023-12-12 05:58:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04a31f0e-52ee-4eae-9d25-338a126cd151\"}', '2023-12-11 05:58:01', '2023-12-11 05:58:01'),
('MHhBgp8M9G1w_KAvQ6fL1uGRavp-NwKf', '2023-12-12 14:55:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:55:17', '2023-12-11 14:55:17'),
('MmdVxhdGtFFaDalaMGmZeIrxApHxrBXE', '2023-12-12 06:55:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:33', '2023-12-11 06:55:33'),
('msEBXP8ReBud6DBKQfilvg2QJJWOHavB', '2023-12-12 06:57:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:57:07', '2023-12-11 06:57:07'),
('muMkAn2zXH2MqS3q89r8vRftnrjphU0P', '2023-12-12 06:51:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:51:25', '2023-12-11 06:51:25'),
('mYLpXq_RrDZL2NHJfBCtwfGkWKACBrcQ', '2023-12-12 06:11:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:11:21', '2023-12-11 06:11:21'),
('M_7UHpDvmFSlHy7n5lzbHA5FKdguUEXj', '2023-12-12 05:24:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:24:42', '2023-12-11 05:24:42'),
('M_ij3krHIc41KKBIp9nnWtuLhThZqtbx', '2023-12-12 15:26:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:26:28', '2023-12-11 15:26:28'),
('N6br5zGYcuLbq3hYe9R0Hfozr-D4l9M2', '2023-12-12 15:36:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:36:13', '2023-12-11 15:36:13'),
('N9Tac5qQatYdp1Lq5mMDoQUzhh1kjohW', '2023-12-12 06:52:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:32', '2023-12-11 06:52:32'),
('NamfBlR9rJE1hRl2XMIVkE1Zdts16Z5t', '2023-12-12 06:52:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:25', '2023-12-11 06:52:25'),
('NeQKA_wA7LyAhm3DjS-H0QADep1frj_U', '2023-12-12 05:24:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:24:10', '2023-12-11 05:24:10'),
('nF-11pwXepKUS2Inutb2z0Kr8xvZGbwN', '2023-12-12 04:52:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:52:52', '2023-12-11 04:52:52'),
('nl1-4lgwfia1lYV4-TlGBAZYArBrXf5B', '2023-12-12 15:29:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:29:55', '2023-12-11 15:29:55'),
('nxNeJg5jh4mUNpfIauNdGwuS3JzZUoCL', '2023-12-12 06:55:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:33', '2023-12-11 06:55:33'),
('nyfabHJYL7SMFiuBT5-S-upZYGgO_3bo', '2023-12-12 14:57:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:57:31', '2023-12-11 14:57:31'),
('nzo2uwywAMNOZmoa3uU7JUwVZM09jv9F', '2023-12-12 05:18:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:18:39', '2023-12-11 05:18:39'),
('o6FlTu_qBRV5L1ijkHELiYrEFkGG_B5a', '2023-12-12 14:55:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:55:17', '2023-12-11 14:55:17'),
('O73KubH2k4J2QItzpXZm0iH5eYMWqkbN', '2023-12-12 06:02:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:02:27', '2023-12-11 06:02:27'),
('odXeGXGh0aQjsJdn-DTKqYl4pY4kHErp', '2023-12-12 15:23:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:23:06', '2023-12-11 15:23:06'),
('On5XE0vfZQyCgkOzF0pIJAIDUBE0UbPf', '2023-12-12 06:12:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:12:00', '2023-12-11 06:12:00'),
('oNZ_ZID8Yh0Qx0xdknxHkdByyn8_6SAv', '2023-12-12 06:05:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:05:20', '2023-12-11 06:05:20'),
('ORDXNRVQj5qcbKkIWIV6JYBcxqQxoXVH', '2023-12-12 14:54:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:54:56', '2023-12-11 14:54:56'),
('P3tDVDKZVEoFpPFeeGJeYVe30EaiEjBS', '2023-12-12 14:55:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:55:17', '2023-12-11 14:55:17'),
('p7I6-Bi0gQe_noGY_qjT7i6R1pgaE9Po', '2023-12-12 15:29:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:29:55', '2023-12-11 15:29:55'),
('phyGPueo3-8SkoWWWQMwIxLO_tD3Iqsg', '2023-12-12 06:55:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:53', '2023-12-11 06:55:53'),
('PjbbOM0Y14vo09_Ie3uRBHw81n33_sOa', '2023-12-12 06:52:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:25', '2023-12-11 06:52:25'),
('Ps9Kcgo2AqCcMhbAhwQPzLwrzs_C42wS', '2023-12-12 05:21:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:21:13', '2023-12-11 05:21:13'),
('PSjHWJLldylmUHRI55jrIXcs3nxJv3p-', '2023-12-12 15:36:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:55:17', '2023-12-11 15:36:52'),
('Py0Srgw0uzS9nMQFMeFby17WPw8nXtLY', '2023-12-12 06:52:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:27', '2023-12-11 06:52:27'),
('q1zjFL8sgFcM7g4n0sNgaVrh3DJCgSnP', '2023-12-12 15:29:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:29:53', '2023-12-11 15:29:53'),
('qC9lQfbnynjE2ie-yHoVbUzN-XrqmPoV', '2023-12-12 06:05:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:05:20', '2023-12-11 06:05:20'),
('qLalnbEbkd_Pja-auNHF2cRFBpnuCrEb', '2023-12-12 06:47:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:47:41', '2023-12-11 06:47:41'),
('qq-VTr0l4lXgx7qREQba0W4iid7yR1Tg', '2023-12-12 15:17:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:17:23', '2023-12-11 15:17:23'),
('QqLiGh8EgwpE_yP5EZYbkwqcRbHiptSE', '2023-12-12 06:05:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:05:19', '2023-12-11 06:05:19'),
('qvSBqI05YXUHolcCTYicw_Y7HEjWf9V5', '2023-12-12 06:52:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:50', '2023-12-11 06:52:50'),
('q_OGxiRpoHBztBCzBzGuDnacUfDG-SRg', '2023-12-12 06:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:56:09', '2023-12-11 06:56:09'),
('rBJci5ULOprsLUDFJGq_0JmtDJQCeNkt', '2023-12-12 06:19:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:19:37', '2023-12-11 06:19:37'),
('RJfAyCwz-dz9q_E0SLnBuAqkFpCUf_C6', '2023-12-12 15:18:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:18:19', '2023-12-11 15:18:19'),
('rL2Gmb_eysnOjdBYgp8Kb6djJigbHEsN', '2023-12-12 15:22:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:22:47', '2023-12-11 15:22:47'),
('rmWG9_ag6CwpmUwnXK3l4cYkm4zWFvj0', '2023-12-12 04:54:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:42', '2023-12-11 04:54:42'),
('RNB_ebKd2YqZ1ImHgMNsAGrHbNRKBJMb', '2023-12-12 05:24:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:24:09', '2023-12-11 05:24:09'),
('RoL8YFrVnG8ETgN-wypRIXLhR6vNyqxY', '2023-12-12 06:12:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:12:00', '2023-12-11 06:12:00'),
('roMfOG8vgv1_d2DYjxJsitK_9HEXEilO', '2023-12-12 06:52:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:22', '2023-12-11 06:52:22'),
('rVqbnwAk41KQbfuMpMvfbtqScWKcFZRG', '2023-12-12 05:24:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:24:42', '2023-12-11 05:24:42'),
('s2aWiixrUx0zFTsdJrwgkE4AYc95f5dH', '2023-12-12 06:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:56:09', '2023-12-11 06:56:09'),
('Sane4-iMNHDtnUPM37LCbe6q-rHAZRAE', '2023-12-12 05:55:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:55:08', '2023-12-11 05:55:08'),
('sdCKKFVmVZUeMf_qhvlNeizB0OLcyZnY', '2023-12-12 06:05:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:05:13', '2023-12-11 06:05:13'),
('SjE42CzHU4VYNjz-DPGaWrHC3Hs8n93d', '2023-12-12 06:12:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:12:36', '2023-12-11 06:12:36'),
('Skv1Lfem9V8Wh1wI3u0BPSJSeVJeomEy', '2023-12-12 05:24:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:24:08', '2023-12-11 05:24:08'),
('smcwTzU-sWS4BqxIdGaKCpd7jVm330QL', '2023-12-12 06:51:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:51:24', '2023-12-11 06:51:24'),
('T0pewbN6gatauAyna2Whd4K_ZgkbilaS', '2023-12-12 04:54:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:41', '2023-12-11 04:54:41'),
('T3-CNQaAnLmq5Yol9I2bSyR6EqLZP64x', '2023-12-12 04:54:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:41', '2023-12-11 04:54:41'),
('T3YH14F2UeoRERn_IMsS5D97ylKZNPpj', '2023-12-12 05:58:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:58:01', '2023-12-11 05:58:01'),
('tFYtdtQzNLkyfso22PQyqom3J6dDKDlI', '2023-12-12 06:52:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:49', '2023-12-11 06:52:49'),
('tU-mFsvLSDg7JKmVyj09O8LTIrlrxA7J', '2023-12-12 06:02:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:02:27', '2023-12-11 06:02:27'),
('tvAsbrqesWV-4a1H2OvvI0_cnF5ixibz', '2023-12-12 15:26:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04a31f0e-52ee-4eae-9d25-338a126cd151\"}', '2023-12-11 15:26:28', '2023-12-11 15:26:28'),
('TWbTwzsnvLnXYEDahDSM7ep2O3CVj2BE', '2023-12-12 06:55:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:59', '2023-12-11 06:55:59'),
('u50bLF4Ul1qNizvCXmNMltIXcQJ0KUO5', '2023-12-12 15:28:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:28:20', '2023-12-11 15:28:20'),
('u81dd_gArApSDt654WDcfFjiSZILHfSD', '2023-12-12 15:18:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:18:19', '2023-12-11 15:18:19'),
('u9yUw4t-i7Qq7SRmDXYjq3BFf3KRIFCH', '2023-12-12 15:22:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:22:19', '2023-12-11 15:22:19'),
('uKuirkrnDZNa0kiaozoWQfOHQulasg1K', '2023-12-12 06:52:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:51', '2023-12-11 06:52:51'),
('UO9ouYJ1Ti2_YmPoaxqIxvbl0wbsNVlp', '2023-12-12 06:10:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:10:48', '2023-12-11 06:10:48'),
('v3FWt7rP4yZ3N_WZetL8xLulpeex5PAf', '2023-12-12 05:21:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:21:19', '2023-12-11 05:21:19'),
('v77dSyGntY4maR45JwXRXhqGYIsRICOm', '2023-12-12 05:24:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:24:10', '2023-12-11 05:24:10'),
('VCfsoK31KeUQyRhzvaCroVvvULVSHqbx', '2023-12-12 15:14:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:14:14', '2023-12-11 15:14:14'),
('VCyn3IldQDQaftU4ZnOdl5ClcoYd5hx3', '2023-12-12 06:11:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:11:52', '2023-12-11 06:11:52'),
('vGvlJfVVxBvTMbRxLuxvph56lvXzF9PI', '2023-12-12 06:55:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:34', '2023-12-11 06:55:34'),
('VI82rfrjh6gOHLRHkted50ygIV0dF9-G', '2023-12-12 06:16:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:16:38', '2023-12-11 06:16:38'),
('VIh9865YkrfqgX4CyZA2Q9XRJdfB5isW', '2023-12-12 15:14:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:14:28', '2023-12-11 15:14:28'),
('VmzZbyZXlMXkWFTpHs-yLxZFY79MZB0e', '2023-12-12 06:47:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:47:41', '2023-12-11 06:47:41'),
('VpuTyYr_HgoXJDCClnEP_TzGJ2_o2BVb', '2023-12-12 06:19:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:19:17', '2023-12-11 06:19:17'),
('vQPtp9ZbhG5wY9xcQ4HHQscbMkT2lADh', '2023-12-12 05:58:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:58:01', '2023-12-11 05:58:01'),
('VReT4tVAHXm93ai-I2kAg-AbWEco0TNQ', '2023-12-12 15:36:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:36:51', '2023-12-11 15:36:51'),
('VRVop3LXPwK1GUGRYljpdTKWzL2oXx0g', '2023-12-12 06:52:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:32', '2023-12-11 06:52:32'),
('vthNCliQwyOl5yxHAxLrTRPX3DLIN9vc', '2023-12-12 06:52:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:31', '2023-12-11 06:52:31'),
('W8OU-kCgk8qqlzAsYEH1_3w-f5qeXVgU', '2023-12-12 06:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:56:09', '2023-12-11 06:56:09'),
('wcB6h17YDaRaQzPcuCFyW5yxwFUSWcxx', '2023-12-12 04:10:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"04a31f0e-52ee-4eae-9d25-338a126cd151\"}', '2023-12-11 04:10:19', '2023-12-11 04:10:19'),
('WdCZPl0CmayGImM_JgM6GNsAdIe4lY_9', '2023-12-12 04:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:56:09', '2023-12-11 04:56:09'),
('wE0nqzPrFpm8Z__OxYpbba8Zv1ozgW0V', '2023-12-12 06:16:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:16:37', '2023-12-11 06:16:37'),
('WfUw65QnA0SOsZkjq5uB1BLyxDWoenMl', '2023-12-12 14:55:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:55:05', '2023-12-11 14:55:05'),
('WIF8Wu-xFq3Q6Uw2PWaV3RcUveQ-gHwx', '2023-12-12 15:36:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:36:21', '2023-12-11 15:36:21'),
('wKvAwqnXUjesuUcVPCJJvzNpXmgykWUc', '2023-12-12 06:47:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:47:42', '2023-12-11 06:47:42'),
('wlI_lljUvmXL04XEGA-nn90Q3Odvj_no', '2023-12-12 03:19:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 03:19:23', '2023-12-11 03:19:23'),
('wNFRtKnNpacHxL7DkJw7Yr8dsGBfJvAz', '2023-12-12 15:28:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:28:38', '2023-12-11 15:28:38'),
('WNLA3vk4fGO1bNfDSFMu_HOvekgo9HMj', '2023-12-12 06:52:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:27', '2023-12-11 06:52:27'),
('ws-K0sRQ3sW8HcpQY3RQ8tPdf7d1Gnrd', '2023-12-12 14:55:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:55:17', '2023-12-11 14:55:17'),
('WZpB1BrGVq5QxIDiCsmKEFjXtxx4vikw', '2023-12-12 15:21:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:21:48', '2023-12-11 15:21:48'),
('w_fZNBIJfWhhTgG3jg61pGQL-IRCppqu', '2023-12-12 06:10:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:10:48', '2023-12-11 06:10:48'),
('Xc59i2ptd2CENFULkh8bnaUTWs9u39S3', '2023-12-12 15:14:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:14:28', '2023-12-11 15:14:28'),
('XfD8NoZxVWHpWVSWD2yhVubc1wxhsoHv', '2023-12-12 15:01:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:01:33', '2023-12-11 15:01:33'),
('XGWIiKuFPpyAmj2HNbIUqJQNAn9f0138', '2023-12-12 05:53:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:53:49', '2023-12-11 05:53:49'),
('XxqM7Rym147q0OxfkJZnB5fS02PmcIfE', '2023-12-12 15:29:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:29:53', '2023-12-11 15:29:53'),
('XyDReHF9Yy4w6NQQb_iThJ7hrPIRxDFr', '2023-12-12 06:55:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:53', '2023-12-11 06:55:53'),
('XyZOGmtTQZlc68ZV9OKjugT_GqEnKa5o', '2023-12-12 04:09:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:09:48', '2023-12-11 04:09:48'),
('X_iqxmgAFtr1kWKRG6DSA3knR7ZqC2Xp', '2023-12-12 15:28:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:28:20', '2023-12-11 15:28:20'),
('Y2jWyIv7Y3DMM4lAyw5hnN4J3wxo8jP4', '2023-12-12 14:55:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:55:17', '2023-12-11 14:55:17'),
('yA8RlpnRwBrskyCLpYKY35vrxDSjrQrd', '2023-12-12 14:55:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 14:55:16', '2023-12-11 14:55:16'),
('yBchwErxYZJ_J_P2gkjdwddeedTHnPcT', '2023-12-12 06:52:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:32', '2023-12-11 06:52:32'),
('YbKHS5prNoj45ItTXd2_v-DlP5TQlLnj', '2023-12-12 06:55:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:51', '2023-12-11 06:55:51'),
('ybk_mnQHkWeM76SGHnpkx-qSlv5TFLQQ', '2023-12-12 05:18:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:18:39', '2023-12-11 05:18:39'),
('YeArBBYFUbwnNTbR8qfWXCleX7toU6eD', '2023-12-12 04:54:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 04:54:43', '2023-12-11 04:54:43'),
('YmScwyp09bNtUxslGgoWpRRy-NH7kIVc', '2023-12-12 15:18:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:18:20', '2023-12-11 15:18:20'),
('YNukElZyXxMMTe21eWUeYeT9D2Ia7d0B', '2023-12-12 06:52:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:25', '2023-12-11 06:52:25'),
('Yrj51Y9APS09WXse0oMN5lWx13NtTh9w', '2023-12-12 06:12:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:12:21', '2023-12-11 06:12:21'),
('yuJJckOAlvWbxJOIOSB4hWe1rMkhPJra', '2023-12-12 06:47:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:47:41', '2023-12-11 06:47:41'),
('zbUhvaAeQmT7kRNDkfIaWE-4TpYXgnmB', '2023-12-12 06:55:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:58', '2023-12-11 06:55:58'),
('Zc2GT-R0bbF1nQjgqZMK5YGILwZMWdZC', '2023-12-12 15:32:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:32:32', '2023-12-11 15:32:32'),
('zgjonP23hZuyaWVY-yFXUE-FXZUA_uyA', '2023-12-12 06:47:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:47:41', '2023-12-11 06:47:41'),
('ZlxvxVESmyuePPtWJCUyAs4KmJS-5Gk3', '2023-12-12 15:21:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 15:21:48', '2023-12-11 15:21:48'),
('ZRjlzZeIlqJRhLvBKft_vFtEKhqiiB-N', '2023-12-12 06:52:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:26', '2023-12-11 06:52:26'),
('zyOBre845qMB4yWtWAsJQgJtRIGBThrM', '2023-12-12 06:12:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:12:30', '2023-12-11 06:12:30'),
('_4sn0wgVJ2_S9nvFf07RUpvKXBMPANHa', '2023-12-12 06:52:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:32', '2023-12-11 06:52:32'),
('_DP6AKwSyfKwQpvQnhlFQ0pYMIjm5q2y', '2023-12-12 06:55:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:55:53', '2023-12-11 06:55:53');
INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('_NDnfSKuoduUuVrqpPT1I7cR9z22BGUv', '2023-12-12 06:56:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:56:09', '2023-12-11 06:56:09'),
('_ZMVI7jOAdAGT-1-FPbO3aZq5iQ4lhlZ', '2023-12-12 06:52:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:52:50', '2023-12-11 06:52:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'e7c712ec-c131-4823-8033-c972d3302ac4', 'zaki', 'email@example.com', '$argon2id$v=19$m=65536,t=3,p=4$C+i4DQQ12MD9vU4PneIyXg$Kn4SWFbUDizPR/94oAxS/zlBcwqzdzQEOiqBDP05rGU', 'admin', '2023-12-08 16:45:42', '2023-12-08 16:45:42'),
(3, '04a31f0e-52ee-4eae-9d25-338a126cd151', 'subkhi', 'admin@example.com', '$argon2id$v=19$m=65536,t=3,p=4$8JaH+A88BRNAgU0Wspdw4w$kgJPSHyH816qBED/XbEJHgpKhgipRu4cwjFf36PzrQQ', 'admin', '2023-12-08 16:50:15', '2023-12-08 16:50:15'),
(4, 'f10df372-59ac-4da6-9d47-ef627168fd18', 'andra', 'user@example.com', '$argon2id$v=19$m=65536,t=3,p=4$XUmfydj20M6zIWBBlY9TgQ$nguj9XIlhZyXuuLaqS8iV8e/GDTPzoGGfqJy7egoNHA', 'user', '2023-12-08 16:51:01', '2023-12-08 16:51:01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
