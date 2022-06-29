-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2022 pada 21.27
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_group`
--

INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES
(1, 'xadmin', 'Admin Master'),
(2, 'admin', 'admin'),
(3, 'user', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES
(1, 'config_view_default', 'Module config'),
(2, 'config_view_logo', 'Module config'),
(3, 'config_view_sosmed', 'Module config'),
(4, 'config_view_core', 'Module config'),
(5, 'config_update_web_name', 'Module config'),
(6, 'config_update_web_domain', 'Module config'),
(7, 'config_update_web_owner', 'Module config'),
(8, 'config_update_email', 'Module config'),
(9, 'config_update_telepon', 'Module config'),
(10, 'config_update_address', 'Module config'),
(11, 'config_update_logo', 'Module config'),
(12, 'config_update_logo_mini', 'Module config'),
(13, 'config_update_favicon', 'Module config'),
(14, 'config_update_facebook', 'Module config'),
(15, 'config_update_instagram', 'Module config'),
(16, 'config_update_youtube', 'Module config'),
(17, 'config_update_twitter', 'Module config'),
(18, 'config_update_language', 'Module config'),
(19, 'config_update_time_zone', 'Module config'),
(20, 'config_update_max_upload', 'Module config'),
(21, 'config_update_route_admin', 'Module config'),
(22, 'config_update_route_login', 'Module config'),
(23, 'config_update_encryption_key', 'Module config'),
(24, 'config_update_encryption_url', 'Module config'),
(25, 'config_update_url_suffix', 'Module config'),
(26, 'config_update_user_log_status', 'Module config'),
(27, 'config_update_maintenance_status', 'Module config'),
(28, 'menu_list', 'Module menu'),
(29, 'menu_add', 'Module menu'),
(30, 'menu_update', 'Module menu'),
(31, 'menu_delete', 'Module menu'),
(32, 'menu_drag_positions', 'Module menu'),
(33, 'user_list', 'Module user'),
(34, 'user_add', 'Module user'),
(35, 'user_update', 'Module user'),
(36, 'user_detail', 'Module user'),
(37, 'user_delete', 'Module user'),
(38, 'groups_list', 'Module groups'),
(39, 'groups_add', 'Module groups'),
(40, 'groups_access', 'Module groups'),
(41, 'groups_update', 'Module groups'),
(42, 'groups_delete', 'Module groups'),
(43, 'permission_list', 'Module permission'),
(44, 'permission_add', 'Module permission'),
(45, 'permission_update', 'Module permission'),
(46, 'permission_delete', 'Module permission'),
(47, 'dashboard__view_profile_user', 'Module dashboard'),
(48, 'dashboard_view_total_user', 'Module dashboard'),
(49, 'dashboard_view_total_group', 'Module dashboard'),
(50, 'dashboard_view_total_permission', 'Module dashboard'),
(51, 'dashboard_view_total_filemanager', 'Module dashboard'),
(52, 'filemanager_list', 'Module filemanager'),
(53, 'filemanager_add', 'Module filemanager'),
(54, 'filemanager_delete', 'Module filemanager'),
(55, 'sidebar_view_dashboard', 'Module sidebar'),
(56, 'sidebar_view_auth', 'Module sidebar'),
(57, 'sidebar_view_user', 'Module sidebar'),
(58, 'sidebar_view_groups', 'Module sidebar'),
(59, 'sidebar_view_permission', 'Module sidebar'),
(60, 'sidebar_view_config', 'Module sidebar'),
(61, 'sidebar_view_system', 'Module sidebar'),
(62, 'sidebar_view_management_menu', 'Module sidebar'),
(63, 'sidebar_view_file_manager', 'Module sidebar'),
(64, 'sidebar_view_m-crud_generator', 'Module Sidebar'),
(65, 'crud_generator_list', 'Module crud generator'),
(66, 'crud_generator_add', 'Module crud generator'),
(67, 'crud_generator_delete', 'Module crud generator'),
(68, 'sidebar_view_configuration', 'Module sidebar'),
(69, 'sidebar_view_settings', 'Module sidebar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission_to_group`
--

CREATE TABLE `auth_permission_to_group` (
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permission_to_group`
--

INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(68, 2),
(69, 2),
(65, 2),
(66, 2),
(67, 2),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(55, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `is_delete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES
(1, 'Administrator', '300622015940_Picture1.png', 'admin@admin.com', '$2y$10$j6T3cDmcbgpTFWSpZ9UA4usdNecAtwv5e/nAPrsQRanPMPGjJxYum', '4cd8233f57ea815079bd12c551e4aa11', '2022-06-30 02:21:00', '::1', '1', '2022-06-28 10:31:00', '2022-06-30 01:59:40', '0'),
(2, 'Muhammad Royyan Zamzami', '', 'royyan@gmail.com', '$2y$10$N5XRDBkoARG05PYLYXyjC.AlrJUVN8HgF0rj9./27c4pShjiCZHMm', '2591a1a68b58f4de43c4c10647cc85c2', '2022-06-28 13:13:00', '::1', '1', '2022-06-28 10:33:16', '2022-06-28 10:47:23', '1'),
(3, 'Muhammad Royyan', '290622152611_Picture1.png', 'royyan@gmail.com', '$2y$10$kGym5FmVY/TtrsLh8/7pcuWtPhREPSVQ2lp1D6.su5JlOmiQ3CPR.', 'f2fd0a84e9c497409ecc74919a979960', '2022-06-29 15:26:00', '::1', '1', '2022-06-29 15:26:11', NULL, '0'),
(4, 'tes', '', 'tes@tes.com', '$2y$10$Lb/t7E7ANu3JuTnYCroB8.FWrnxRHGxRSy9l4/G3waFz.Njztlzsy', '46fbb956dde6bfc1b63bce54bfce5f57', NULL, NULL, '1', '2022-06-29 15:27:58', NULL, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_to_group`
--

CREATE TABLE `auth_user_to_group` (
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_user_to_group`
--

INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES
(1, 1),
(2, 3),
(3, 3),
(4, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_user_log`
--

CREATE TABLE `ci_user_log` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ci_user_log`
--

INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(1, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/sosmed.html', NULL, '2022-06-28 10:42:55'),
(2, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/logo.html', NULL, '2022-06-28 10:43:00'),
(3, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting.html', NULL, '2022-06-28 10:43:34'),
(4, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:43:38'),
(5, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add.html', NULL, '2022-06-28 10:43:43'),
(6, 1, '::1', 'title', '/belajar/mcodev2/cpanel/core/icon.html', NULL, '2022-06-28 10:43:50'),
(7, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add_action.html', '{\"menu\":\"Mahasiswa\",\"icon\":\"fa fa-address-book\",\"type\":\"controller\",\"controller\":\"mahasiswa\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2022-06-28 10:44:13'),
(8, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:44:13'),
(9, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save.html', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55}]\"}', '2022-06-28 10:44:22'),
(10, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:44:25'),
(11, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:44:26'),
(12, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add.html', NULL, '2022-06-28 10:44:31'),
(13, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add_action.html', '{\"nama\":\"Royyan\",\"alamat\":\"Njabung\",\"no_hp\":\"91238701820381\",\"kelas_id\":\"1\",\"submit\":\"add\"}', '2022-06-28 10:44:43'),
(14, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:44:43'),
(15, 1, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:44:51'),
(16, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:44:53'),
(17, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/bff65edac2b511b2bff954d40b1ca7b86f3b3f0f920c48d8e93c4889193beb104c0d5d7c2a94e8bce7ed1f900e8c3abc93a91ab941df567f5ad287758014989e_uNz8ilasc5O1yCYjz12ZDLO~lvi1wInb7YjJ7tRwYw-.html', NULL, '2022-06-28 10:44:55'),
(18, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/bff65edac2b511b2bff954d40b1ca7b86f3b3f0f920c48d8e93c4889193beb104c0d5d7c2a94e8bce7ed1f900e8c3abc93a91ab941df567f5ad287758014989e_uNz8ilasc5O1yCYjz12ZDLO~lvi1wInb7YjJ7tRwYw-.html', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-28 10:45:04'),
(19, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:45:05'),
(20, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/add.html', NULL, '2022-06-28 10:45:09'),
(21, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/Group/add_action.html', '{\"group\":\"user\",\"definition\":\"user\",\"button\":\"save\"}', '2022-06-28 10:45:14'),
(22, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:45:14'),
(23, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/21b7ef5e758241cfd23bdd20747df74a9fbbb1c6988661ced6f2c7cc909c1fd7a193aeb972056e093595d35c6660d6af01a064bc55c508eed3ae3c22358340c2Xmbyd5lGwnaYiR94udVsfZBlTUTHF3OxZLer3KdMs3o-.html', NULL, '2022-06-28 10:45:19'),
(24, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/21b7ef5e758241cfd23bdd20747df74a9fbbb1c6988661ced6f2c7cc909c1fd7a193aeb972056e093595d35c6660d6af01a064bc55c508eed3ae3c22358340c2Xmbyd5lGwnaYiR94udVsfZBlTUTHF3OxZLer3KdMs3o-.html', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\"],\"submit\":\"\"}', '2022-06-28 10:46:31'),
(25, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:46:32'),
(26, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:46:44'),
(27, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:46:46'),
(28, 2, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:46:49'),
(29, 2, '::1', 'title', '/belajar/mcodev2/cpanel/permission.html', NULL, '2022-06-28 10:46:51'),
(30, 2, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:46:54'),
(31, 1, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:47:07'),
(32, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:47:09'),
(33, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user/update/159f1e8007a008d5136ff1781bac2ecacfec12425f8ad12690dc869d3d4b54e83166c4981d44f7d1a50f6b005b01040e73b9ac162fb14d816c9e19987744d43e5KGuuJqNYm79EsPwNqp1RV~PlCU1j5m~hue2cKBdcQo-.html', NULL, '2022-06-28 10:47:12'),
(34, 1, '::1', 'User', '/belajar/mcodev2/cpanel/User/update_action/159f1e8007a008d5136ff1781bac2ecacfec12425f8ad12690dc869d3d4b54e83166c4981d44f7d1a50f6b005b01040e73b9ac162fb14d816c9e19987744d43e5KGuuJqNYm79EsPwNqp1RV~PlCU1j5m~hue2cKBdcQo-.html', '{\"nama\":\"Muhammad Royyan Zamzami\",\"id_group\":\"3\",\"is_active\":\"1\",\"email\":\"royyan@gmail.com\",\"file-dir\":\"\",\"photo\":\"\",\"last_email\":\"royyan@gmail.com\",\"password\":\"\",\"konfirmasi_password\":\"\",\"submit\":\"update\"}', '2022-06-28 10:47:23'),
(35, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:47:23'),
(36, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:47:38'),
(37, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:47:53'),
(38, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:47:56'),
(39, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:47:56'),
(40, 2, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:48:04'),
(41, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:48:05'),
(42, 2, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:08'),
(43, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:48:08'),
(44, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:12'),
(45, 1, '::1', 'title', '/belajar/mcodev2/cpanel/permission.html', NULL, '2022-06-28 10:48:13'),
(46, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:14'),
(47, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/b51310c37e39dded9922379d846eea378ab9eac3108c95f2dafd6eba73a97e68fdce09335d0625c0f50cb729856a5f95408d98371ee9299f5a6b630818b48db6Dd6zVOBGUwq4R8WXukwO0aOybzqvYuEKAStkgZDiEyE-.html', NULL, '2022-06-28 10:48:17'),
(48, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/b51310c37e39dded9922379d846eea378ab9eac3108c95f2dafd6eba73a97e68fdce09335d0625c0f50cb729856a5f95408d98371ee9299f5a6b630818b48db6Dd6zVOBGUwq4R8WXukwO0aOybzqvYuEKAStkgZDiEyE-.html', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-28 10:48:42'),
(49, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:42'),
(50, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:48:45'),
(51, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:48:47'),
(52, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:48:48'),
(53, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:48:55'),
(54, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add.html', NULL, '2022-06-28 10:48:57'),
(55, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:49:00'),
(56, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:54:42'),
(57, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:55:21'),
(58, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting.html', NULL, '2022-06-28 10:55:23'),
(59, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core.html', NULL, '2022-06-28 10:55:26'),
(60, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action.html', '{\"name\":\"url_suffix\",\"value\":\"\",\"pk\":\"999\"}', '2022-06-28 10:55:34'),
(61, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 10:55:34'),
(62, 1, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 10:55:38'),
(63, 1, '::1', 'title', '/belajar/mcodev2/cpanel/core/reset_password', NULL, '2022-06-28 10:55:49'),
(64, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 10:55:54'),
(65, 2, '::1', 'title', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 11:00:47'),
(66, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:00:49'),
(67, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:01'),
(68, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:07'),
(69, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:16'),
(70, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:40'),
(71, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:07'),
(72, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/Mahasiswa', NULL, '2022-06-28 11:02:10'),
(73, 1, '::1', 'title', '/belajar/mcodev2/mcrud', NULL, '2022-06-28 11:02:16'),
(74, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:18'),
(75, 1, '::1', 'title', '/belajar/mcodev2/mcrud', NULL, '2022-06-28 11:02:20'),
(76, 1, '::1', 'title', '/belajar/mcodev2//mcrud/getTable/kelas', NULL, '2022-06-28 11:02:22'),
(77, 1, '::1', 'title', '/belajar/mcodev2/mcrud/action', '{\"table\":\"kelas\",\"title\":\"Kelas\",\"controllers\":\"Kelas\",\"primary_key\":\"id_kelas\",\"mcrud\":{\"1\":{\"id_kelas\":{\"field_name\":\"id_kelas\",\"sort\":\"1\",\"show_in_table\":\"true\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nama\":{\"field_name\":\"nama\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama Kelas\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}}}}', '2022-06-28 11:02:43'),
(78, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:46'),
(79, 1, '::1', 'title', '/belajar/mcodev2/cpanel/permission', NULL, '2022-06-28 11:02:55'),
(80, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:57'),
(81, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/Kelas', NULL, '2022-06-28 11:03:00'),
(82, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator/about', NULL, '2022-06-28 11:03:07'),
(83, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:03:18'),
(84, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 11:03:20'),
(85, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:03:25'),
(86, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group', NULL, '2022-06-28 11:03:30'),
(87, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/4555756bffbab12ef0e6b7068fd6e60b7b31278e7dfd15280e052634180352fac40e0dc305b342212a937fb909a737802e6bef9625a5860659f1f7bc0b21144a77c2iqxJADs7ZGcgxQPyoe5a5wCcx5K6mU7m4JIITVM-', NULL, '2022-06-28 11:03:32'),
(88, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/4555756bffbab12ef0e6b7068fd6e60b7b31278e7dfd15280e052634180352fac40e0dc305b342212a937fb909a737802e6bef9625a5860659f1f7bc0b21144a77c2iqxJADs7ZGcgxQPyoe5a5wCcx5K6mU7m4JIITVM-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\",\"76\",\"77\",\"78\",\"79\",\"80\"],\"submit\":\"\"}', '2022-06-28 11:03:37'),
(89, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group', NULL, '2022-06-28 11:03:37'),
(90, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:03:45'),
(91, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu', NULL, '2022-06-28 11:03:48'),
(92, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add', NULL, '2022-06-28 11:03:54'),
(93, 1, '::1', 'title', '/belajar/mcodev2/cpanel/core/icon', NULL, '2022-06-28 11:04:01'),
(94, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add_action', '{\"menu\":\"Kelas\",\"icon\":\"fa fa-window-maximize\",\"type\":\"controller\",\"controller\":\"Kelas\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2022-06-28 11:04:20'),
(95, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu', NULL, '2022-06-28 11:04:20'),
(96, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":56},{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55}]\"}', '2022-06-28 11:04:24'),
(97, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":56},{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55}]\"}', '2022-06-28 11:04:25'),
(98, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55},{\\\"id\\\":56}]\"}', '2022-06-28 11:04:27'),
(99, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":56},{\\\"id\\\":55}]\"}', '2022-06-28 11:04:30'),
(100, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu', NULL, '2022-06-28 11:04:32'),
(101, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:04:33'),
(102, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas/add', NULL, '2022-06-28 11:04:35'),
(103, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas/add_action', '{\"nama\":\"V-II A\",\"submit\":\"add\"}', '2022-06-28 11:04:41'),
(104, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:04:42'),
(105, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:04:56'),
(106, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:04:58'),
(107, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:05:10'),
(108, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:05:16'),
(109, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:08:43'),
(110, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 11:08:47'),
(111, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:09:37'),
(112, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:10:06'),
(113, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:13:40'),
(114, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:13:50'),
(115, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:14:20'),
(116, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:14:32'),
(117, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:14:58'),
(118, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:15:00'),
(119, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:15:23'),
(120, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:16:59'),
(121, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:17:56'),
(122, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:18:06'),
(123, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add_action', '{\"nama\":\"Arip\",\"alamat\":\"Arjosari\",\"no_hp\":\"1209123123\",\"submit\":\"add\"}', '2022-06-28 11:18:19'),
(124, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:18:32'),
(125, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:19:09'),
(126, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:19:11'),
(127, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add_action', '{\"nama\":\"Royyan\",\"alamat\":\"askdjak\",\"no_hp\":\"198273912\",\"kelas_id\":\"1\",\"submit\":\"add\"}', '2022-06-28 11:19:21'),
(128, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:19:21'),
(129, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:19:46'),
(130, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:19:51'),
(131, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:20:34'),
(132, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:21:00'),
(133, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:05'),
(134, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:09'),
(135, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:30'),
(136, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:31'),
(137, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:21:35'),
(138, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:22:52'),
(139, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:22:56'),
(140, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:23:29'),
(141, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:23:38'),
(142, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:24:03'),
(143, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:24:11'),
(144, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:24:19'),
(145, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:25:10'),
(146, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:25:14'),
(147, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:12:07'),
(148, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:12:18'),
(149, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:12:24'),
(150, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager/delete', '{\"id\":\"745a21de5fb2f4f261c5dc92374c7de5a9783216682de41efe47e85a60007e834125c33813a4b4558fe1e7b2b3322b9b10773a9d92738fafd67b3dc19d19f1d1wpLEHPLiWZ7trm8i1ggov8a_iOBcsACCn_56xW11w0g-,a6518a7a747c7e37133d2178ab70b9a7925507fa7c70a1b75d07274464f364ee3462f4a4d2abfedcd53ecaed7756d52b375225ad163e8dd2e6e7a466caec871ccO79nuYN7A7Q1sbAgRfFA5DeIK4ZralT0NIAWWaqNhM-,f2a780cc8325cae195720479363efbf0f2f0d264e4aa61d6c300aec922815df6de42747551d649657bdfef26efaa3f80f8e4e59224a55999443f8307e59f044auUhIWtCeWlWa88KlJn1eWHG~n1RB~KamzDoS4IFnXYE-\"}', '2022-06-28 13:12:40'),
(151, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:12:42'),
(152, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:12:46'),
(153, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:13:02'),
(154, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:13:37'),
(155, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:13:49'),
(156, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:13:53'),
(157, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/reset_password', NULL, '2022-06-28 13:13:58'),
(158, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 13:14:26'),
(159, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 13:14:30'),
(160, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:16:54'),
(161, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:17:10'),
(162, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:17:13'),
(163, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:17:26'),
(164, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:17:37'),
(165, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"maintenance_status\",\"value\":\"Y\",\"pk\":\"60\"}', '2022-06-28 13:18:13'),
(166, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"maintenance_status\",\"value\":\"N\",\"pk\":\"60\"}', '2022-06-28 13:18:19'),
(167, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 13:18:21'),
(168, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/sosmed', NULL, '2022-06-28 13:18:25'),
(169, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"facebook\",\"value\":\"#\",\"pk\":\"50\"}', '2022-06-28 13:18:36'),
(170, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"instagram\",\"value\":\"#\",\"pk\":\"51\"}', '2022-06-28 13:18:39'),
(171, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"youtube\",\"value\":\"#\",\"pk\":\"52\"}', '2022-06-28 13:18:43'),
(172, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"twitter\",\"value\":\"#\",\"pk\":\"53\"}', '2022-06-28 13:18:49'),
(173, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/logo', NULL, '2022-06-28 13:18:52'),
(174, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:18:56'),
(175, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 13:19:07'),
(176, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/logo', NULL, '2022-06-28 13:19:09'),
(177, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 13:19:10'),
(178, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:19:41'),
(179, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 13:19:42'),
(180, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-28 13:20:18'),
(181, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-28 13:20:28'),
(182, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-28 13:20:37'),
(183, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/0c4eadae4f8c4290b99760f781901818d1c7077d1f90b12fcedd9e493fe4ee470deb5c7012bcdb9a8f5391670c8c9c7cc7a3fc38f56b713c6fbc694030e9f0e6~PZaBtINgUz0CKusM9LWsq2KENfkON_XMxFXtles92g-', NULL, '2022-06-28 13:20:38'),
(184, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/0c4eadae4f8c4290b99760f781901818d1c7077d1f90b12fcedd9e493fe4ee470deb5c7012bcdb9a8f5391670c8c9c7cc7a3fc38f56b713c6fbc694030e9f0e6~PZaBtINgUz0CKusM9LWsq2KENfkON_XMxFXtles92g-', NULL, '2022-06-28 13:29:19'),
(185, 1, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-28 13:29:21'),
(186, 1, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-28 13:43:22'),
(187, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-28 13:48:29'),
(188, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 15:24:26'),
(189, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:24:33'),
(190, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:24:50'),
(191, 1, '::1', 'User', '/belajar/build/cpanel/user/view/43a1aa61e4b750e6980730a8b15c041c720c14f7c4d00d71ccb25f3ea55e2429284561fe2425d0f1fe383efe068778c0fde0cb5913306aa5f8969d65b2e1a4cchOOJ05pyXsOeeIqCEtPypx3oZOV1gjjjUFR~86TYbXg-', NULL, '2022-06-29 15:24:53'),
(192, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:24:56'),
(193, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:24:58'),
(194, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/c73063af79823624d39513d7827b7a1056952287e7cbc4d9effe8a62376ef0b3f1635e0ae73fb7ef860f20769cac812915af88e19c28adc1d460ad55fa3aa175PgSLRTIxhSKuEm3Z~MYYZxRFwZfEGyiJM9Vt75KURWw-', NULL, '2022-06-29 15:25:01'),
(195, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/c73063af79823624d39513d7827b7a1056952287e7cbc4d9effe8a62376ef0b3f1635e0ae73fb7ef860f20769cac812915af88e19c28adc1d460ad55fa3aa175PgSLRTIxhSKuEm3Z~MYYZxRFwZfEGyiJM9Vt75KURWw-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"76\",\"77\",\"78\",\"79\",\"80\"],\"submit\":\"\"}', '2022-06-29 15:25:07'),
(196, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:25:07'),
(197, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/ff57bef18e301109e0a43e2124f42dba1b37acc227a73970e1644cf90c951624eb6afded2a9071d16891bc4351a5b93df50f943bf7a25e6662322095cd13826bgQ79ogIbipJ8pz93Qyp04ZacdwE9S8aaXLvxpEm0Qco-', NULL, '2022-06-29 15:25:11'),
(198, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/ff57bef18e301109e0a43e2124f42dba1b37acc227a73970e1644cf90c951624eb6afded2a9071d16891bc4351a5b93df50f943bf7a25e6662322095cd13826bgQ79ogIbipJ8pz93Qyp04ZacdwE9S8aaXLvxpEm0Qco-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"35\",\"36\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"76\",\"77\",\"78\",\"79\",\"80\"],\"submit\":\"\"}', '2022-06-29 15:25:25'),
(199, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:25:26'),
(200, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:25:31'),
(201, 1, '::1', 'User', '/belajar/build/cpanel/user/delete/bdd21920b007d1a83aefed5db047aeb838e01702b4bc54494a55845f89fcf87c6ddd9d871e9765d193daacaa95ed90af2e6f346f6f00cb63e6f51b6b991207b02B2i8rOUHxIdItkTz1qrrkEZnzk1abxxSuc_kObqSvw-', NULL, '2022-06-29 15:25:39'),
(202, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:25:44'),
(203, 1, '::1', 'User', '/belajar/build/cpanel/user/add', NULL, '2022-06-29 15:25:46'),
(204, 1, '::1', 'title', '/belajar/build/cpanel/core/imageUpload', NULL, '2022-06-29 15:26:06'),
(205, 1, '::1', 'User', '/belajar/build/cpanel/User/add_action', '{\"nama\":\"Muhammad Royyan\",\"id_group\":\"3\",\"is_active\":\"1\",\"email\":\"royyan@gmail.com\",\"file-dir\":\"1-53169453a86ad9da4eea8b2ba247ab0d32730424\",\"photo\":\"Picture1.png\",\"password\":\"1234arema\",\"konfirmasi_password\":\"1234arema\",\"submit\":\"save\"}', '2022-06-29 15:26:11'),
(206, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:26:11'),
(207, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:26:26'),
(208, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/15e0f9262a2e35657f8ed1c2877afed02ad843233ba5e3fb4aad3c9b17b19135de2b8eae535b2d30d98b74654e31ebd246b82ad5d102dbdc6e869c7d1d141609q_y9JYRIVrnFPTb4X9DLW8wf_aq7q8v9zqNVBaPgTfQ-', NULL, '2022-06-29 15:26:28'),
(209, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/15e0f9262a2e35657f8ed1c2877afed02ad843233ba5e3fb4aad3c9b17b19135de2b8eae535b2d30d98b74654e31ebd246b82ad5d102dbdc6e869c7d1d141609q_y9JYRIVrnFPTb4X9DLW8wf_aq7q8v9zqNVBaPgTfQ-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:26:37'),
(210, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:26:37'),
(211, 3, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 15:26:51'),
(212, 3, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-29 15:26:53'),
(213, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/68d37bd5736e58cf3de03d83e148ad236896b84b0c5f8cfe6fc84e1377ff839043fb77e4728a4217e038a29622ca5c861d38bab9c2835f3294ffb578ba248ffbOmu7xkWbKv2b0b70rB2rppFbrCTlEOPt_DRMPQwc4Mo-', NULL, '2022-06-29 15:27:00'),
(214, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/68d37bd5736e58cf3de03d83e148ad236896b84b0c5f8cfe6fc84e1377ff839043fb77e4728a4217e038a29622ca5c861d38bab9c2835f3294ffb578ba248ffbOmu7xkWbKv2b0b70rB2rppFbrCTlEOPt_DRMPQwc4Mo-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:27:11'),
(215, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:27:11'),
(216, 3, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-29 15:27:15'),
(217, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:19'),
(218, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:19'),
(219, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/8cae9a09387804bd84f39ba660770422d021d7f62728ad456f50bd83ab436c2d2754e68103e0536fa446e62c769b810b9e6c253675768a6074b15ba00656aaef8u2K418PjNRWr9kuj_693yiR6xIkS9jW_0QoNhcRYjg-', NULL, '2022-06-29 15:27:29'),
(220, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/8cae9a09387804bd84f39ba660770422d021d7f62728ad456f50bd83ab436c2d2754e68103e0536fa446e62c769b810b9e6c253675768a6074b15ba00656aaef8u2K418PjNRWr9kuj_693yiR6xIkS9jW_0QoNhcRYjg-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:27:35'),
(221, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:27:35'),
(222, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:38'),
(223, 3, '::1', 'User', '/belajar/build/cpanel/user/add', NULL, '2022-06-29 15:27:44'),
(224, 3, '::1', 'User', '/belajar/build/cpanel/User/add_action', '{\"nama\":\"tes\",\"id_group\":\"2\",\"is_active\":\"1\",\"email\":\"tes@tes.com\",\"file-dir\":\"\",\"photo\":\"\",\"password\":\"1234arema\",\"konfirmasi_password\":\"1234arema\",\"submit\":\"save\"}', '2022-06-29 15:27:58'),
(225, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:58'),
(226, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:30:07'),
(227, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:30:28'),
(228, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:30:31'),
(229, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:30:35'),
(230, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/bca618eaa3768c97d56535f2ffdd5ad600bd4ebbe2e100435b3537dbdc93b82b8445e065338c4eb2f88396cf71e444eba9a221b559a1ee42b257df81f2390574ONZ4TM_txY0~uMTACenLpwdcKDK3XGnapbG7cZVDPwo-', NULL, '2022-06-29 15:30:37'),
(231, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/bca618eaa3768c97d56535f2ffdd5ad600bd4ebbe2e100435b3537dbdc93b82b8445e065338c4eb2f88396cf71e444eba9a221b559a1ee42b257df81f2390574ONZ4TM_txY0~uMTACenLpwdcKDK3XGnapbG7cZVDPwo-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"35\",\"36\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:30:41'),
(232, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:30:41'),
(233, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:30:43'),
(234, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:32:45'),
(235, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:09:44'),
(236, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:10:46'),
(237, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:11:07'),
(238, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:12:19'),
(239, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-29 21:12:29'),
(240, 1, '::1', 'title', '/belajar/build/mcrud', NULL, '2022-06-29 21:12:31'),
(241, 1, '::1', 'title', '/belajar/build//mcrud/getTable/mahasiswa', NULL, '2022-06-29 21:18:43'),
(242, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:54:48'),
(243, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:54:51'),
(244, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:54:53'),
(245, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:54:57'),
(246, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/add', NULL, '2022-06-30 01:55:01'),
(247, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:55:06'),
(248, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/add', NULL, '2022-06-30 01:55:13'),
(249, 1, '::1', 'title', '/belajar/build/cpanel/core/imageUpload', NULL, '2022-06-30 01:55:19'),
(250, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/add_action', '{\"file-dir\":\"1-a71f6922456955317c61e2bf60fcb4077693605b\",\"file_name\":\"GENERATOR-remove.png\",\"ket\":\"logo\",\"params\":\"add\"}', '2022-06-30 01:55:25'),
(251, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:55:25'),
(252, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:55:30'),
(253, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:55:32'),
(254, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:55:35'),
(255, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:55:37'),
(256, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/update_action', '{\"name\":\"logo\",\"value\":\"\\t300622015525_GENERATOR_remove.png\",\"pk\":\"7\"}', '2022-06-30 01:55:41'),
(257, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/update_action', '{\"name\":\"logo_mini\",\"value\":\"\\t300622015525_GENERATOR_remove.png\",\"pk\":\"8\"}', '2022-06-30 01:55:44'),
(258, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:55:54'),
(259, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:55:59'),
(260, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:56:00'),
(261, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 01:56:08'),
(262, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:56:10'),
(263, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 01:56:26'),
(264, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:56:28'),
(265, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/sosmed', NULL, '2022-06-30 01:56:31'),
(266, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:56:33'),
(267, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/update_action', '{\"name\":\"logo\",\"value\":\"http:\\/\\/localhost\\/belajar\\/build\\/_temp\\/uploads\\/img\\/300622015525_GENERATOR_remove.png\",\"pk\":\"7\"}', '2022-06-30 01:56:36'),
(268, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:58:59'),
(269, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:59:06'),
(270, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-30 01:59:23'),
(271, 1, '::1', 'User', '/belajar/build/cpanel/user/update/2eb09b634203c5b4c25d7eb887c9021cdcf66e866669f14f848d071003562fbfe2d3666c59584696609a6f46648cfbe8d5e8b0cd2d66f6dab955a07f0574a409_40VNE0oe~k5xHFfc8UTiLCnkJeuiR2iZ5c4_impOiQ-', NULL, '2022-06-30 01:59:30'),
(272, 1, '::1', 'title', '/belajar/build/cpanel/core/imageUpload', NULL, '2022-06-30 01:59:37'),
(273, 1, '::1', 'User', '/belajar/build/cpanel/User/update_action/2eb09b634203c5b4c25d7eb887c9021cdcf66e866669f14f848d071003562fbfe2d3666c59584696609a6f46648cfbe8d5e8b0cd2d66f6dab955a07f0574a409_40VNE0oe~k5xHFfc8UTiLCnkJeuiR2iZ5c4_impOiQ-', '{\"nama\":\"royyan\",\"id_group\":\"1\",\"is_active\":\"1\",\"email\":\"royyan@mail.com\",\"file-dir\":\"1-cc482cf88474cd7ad990efa00b435081b23579dd\",\"photo\":\"Picture1.png\",\"last_email\":\"royyan@mail.com\",\"password\":\"\",\"konfirmasi_password\":\"\",\"submit\":\"update\"}', '2022-06-30 01:59:40'),
(274, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-30 01:59:40'),
(275, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 02:00:09'),
(276, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/delete', '{\"id\":\"217c40ff8de99693f453b76b388b4b086542ceb49093c6e2d790de979c1fd5e89af4275533bf5787100e3e67f65e9fcfc5d306290bab627ca003432c833b9b5aG7QhIoMKtSAg9FDT6zcPxw_QmJzskrWgHhUXUpki85Y-\"}', '2022-06-30 02:00:25'),
(277, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:00:33'),
(278, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:01:09'),
(279, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-30 02:01:21'),
(280, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-30 02:01:21'),
(281, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator/about', NULL, '2022-06-30 02:01:34'),
(282, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-30 02:02:16'),
(283, 1, '::1', 'Kelas', '/belajar/build/cpanel/kelas', NULL, '2022-06-30 02:02:22'),
(284, 1, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-30 02:02:26'),
(285, 1, '::1', 'title', '/belajar/build/cpanel/core/reset_password', NULL, '2022-06-30 02:02:44'),
(286, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:10:40'),
(287, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:11:49'),
(288, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:19:06'),
(289, 1, '::1', 'title', '/belajar/build/cpanel/core/reset_password', NULL, '2022-06-30 02:21:16'),
(290, 1, '::1', 'title', '/belajar/build/cpanel/core/reset_password_action', '{\"password\":\"1234Arema\",\"password_baru\":\"password\",\"konfirmasi_password\":\"password\"}', '2022-06-30 02:21:23'),
(291, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:21:36'),
(292, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:21:45'),
(293, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:23:28'),
(294, 1, '::1', 'title', '/belajar/build/cpanel/kelas', NULL, '2022-06-30 02:23:29'),
(295, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:23:34'),
(296, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:23:36'),
(297, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete', '{\"id\":\"1d03935fb1a81d1b704b0801272411c58a37bdb0c8b398c5e4588b20e882287cd4321edd91f8e244474e25b7f591740003c5574730cb0077d29fa0bef76e1d13OoIs1loEgd8qyOJuo35NgEKvsr0D6e1g22fv65tEh54-,4c30ed38be1411ba11b8763c3a519506a014add056097e72a847a6f672fc608242842f938c70784e35c47f7ce20e0b720f0345d70c56a78b666995adb7eded77QWTsVrOdYEPVFchPJRbfH5hA9z5SIoLFV4pB8wpJA_w-,641c4f84cc9f85fec5a26b4995fb5166cf818c4c99a8c9aca29d1d4be1e3f9e62f1e759d5d804f9188de3957290a220b52282f19cf9500bc962374122aa66462RbaYHCFbtoS6Mgc21qtXnuwfFzj9mv1wVT4ftYbJ5GI-,ee34a4062b24521c278439f3b0e8ee8f3b618c10992a55ba90f2c112b63b40e22d29dbec874e8a670bbed4a6efe057e6e5fb94bd1829c3ec0b88fd6ffdfe37a8nO32a8el69itvn9Rx1bV_R0rAeqHA2HuA3~VYmY8Gvw-,aa4b00010745416ba635b04f4bdeb6e69e7fceed651b4601f2ea476f4b52e53d44f7999ed10798ae55ab6d261414cb27e28f3ca3dbe0810f39ad597defb06bdeNaUETzbDK0S_k3o4uCfd1pESX_cQbVOLvacxCuRkwWQ-,d5507b5b9bd3d74f53f52a2bf01e572b12cb92da755505e6c81be4979ef751bb4ee9ff7d9f75165bf1f608c8dd7f1a058e7e5beece2715ae76a14ab5e1c4bb9bJlxYxjB5DU1CSmAqcpMqeulH11fxYaiFnjejJh~WfIw-\"}', '2022-06-30 02:23:51'),
(298, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete', '{\"id\":\"309df8f768ee15607215ed588bb6654f545f4bd158c78881f0b16e007e3871a410fc8644d94c1159b9c976db1381df03ffc51dd80b2e6e2c5a7463ab85775dbbn9Y30N9nIX28xfwox8IkNOHw5ffJuv_YyKBM~3y~~Zo-,0548325dc84e06967bcb69c0151e12a4dc66d5295e809c984459636a8118f1bbeab3b1050e28f01848dcebffab530b16b21bf59be2736d99cf10165aff5ce8c0Z4xzJ65Vu2l4xfaCp6EQ1g2juhunWOH533LjaGr0n8M-,54a37835db19f64dfd3fa7a9cc09f1bb1ed7b19402afc9aab08414b8912fcb6aefee6d2c407f017e1389be8e845df4a5994daaa23ce877857448492845bb641e_IJ4aI4_CsQeNNHmMWjm3CXbnRObM0vINgpBNwS1qg8-,eca93de677d4b4e979a23499c29859d71b0b4a9e6ab15998e41c5f56a3cd80675cdd55b32951a88468dc33f82c48ca30e8a7dd90bfdb5305b39b708c290886f2UulgUzbnr1Z0cK3En82dgD4o13rLwRo7rNoW8KkFWKM-,c731ff4ea10f3ca7b66c079eae50405cc9fecf5b80087b13bb57e0e91c6fabae2f3d2273fc66ee84f763edc3e21651f463ef947ec9651a47a9318adfe6d3eacf5OSY~H3EgvAbP4qBwlS0cnb4zCVp6kdheW59drmCxcA-,335d63191af7512c6136d6dfb769ff4f2e39db8f48d86c4861e85141be118237b3816cce9eb79f9063ff99e488e62a3e1b5cf3b4e228508952a7ce202ba625b8yv81Nw88WuNt0jZXceMA5owKmCSGQijUB9zD_gSISrk-\"}', '2022-06-30 02:24:06'),
(299, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:24:07'),
(300, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:24:11'),
(301, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-30 02:24:12'),
(302, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:24:14'),
(303, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b2ae485044f825e762b34a2ddcb687d1e972ec2701268e06c49cfce4b013abd62ab9f880a0a489dbcfd9076347070649e73f50fd0a06590541fb2f0046752b455OYy15rDQn7WTsSuL1HQkmnwOLlXZ6rfvUbl2p03VvY-', NULL, '2022-06-30 02:24:16'),
(304, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:24:25'),
(305, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:27'),
(306, 1, '::1', 'Group', '/belajar/build/cpanel/group/deletepermission/fff045c996c7d423bd298257991fbcd37718a1c93eb80b321326be1a77b9b3d04c86006f2744417c7793d0dab86cf3cc953e3ea8124ac790ed6e7d48222202ecL8XlAv7z2JaYOMmf~mLiFkWfFsGRCE2Qr2M86ztYLnk-', NULL, '2022-06-30 02:24:33'),
(307, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:33'),
(308, 1, '::1', 'Group', '/belajar/build/cpanel/group/deletepermission/38e22b66620c26994d069275232a85fcfab83aa87c3b2673eaaf1083d16ef4054ec011bc0c9ae84ad09b996bac398b86a139dbe14e15671ce3307b2d93cfec6a1yzQJPw8zHnEqB1CssubRfQgiqa9pu_yejKuBDl6Uw8-', NULL, '2022-06-30 02:24:39'),
(309, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:39'),
(310, 1, '::1', 'Group', '/belajar/build/cpanel/group/deletepermission/896f9991a931e0453f983156c019bab0ea7eb29fbed6dd9daedb182f2b4170fd469f81eee419c4475e28de8c593ce5cc4f142ad72677a426a0df0934b28da6de~budJhcSBdUoqUdnFv5x1QkzlmZ2G0XPZ7MfwAsIuew-', NULL, '2022-06-30 02:24:45'),
(311, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:45'),
(312, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:48'),
(313, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 02:24:57'),
(314, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 02:24:58'),
(315, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu/delete/7f40852c960480b241b03c3c0abf34d91d2dbe37825d8cc86b763622a41def041fb2ed69f5f08a37899828dc815237878e338624ec066f350664b1696386adadF1~MpNLMudjZNjyWWicHWY8EZXxosM3E_7hZNa_Vnc0-', NULL, '2022-06-30 02:25:03'),
(316, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 02:25:03'),
(317, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu/delete/c6481c3449ff5edd4310ecf18b838f2c8ed4c573cd3783d603763a44747675b8b16485988e327ac362536e6dff0467f0c11e8c1717ccf16bec224654d6bcb21eH_XyBObeWS44o7N9_Fnfj_JisKZZkfIUwBfM~ApnkPU-', NULL, '2022-06-30 02:25:08'),
(318, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 02:25:08'),
(319, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:25:13'),
(320, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete', '{\"id\":\"b2d230c258799b11e5cf518ca81e8e4310f8fae5385a04e413ee7eff92886f781b14471643f47974605e6f314c33c148abace5a2d0d04523ac90195175fb76a1PMDXdD8HCEqXWZu_iSjVnIQXqGX9m0Yz_ir07UINJtw-\"}', '2022-06-30 02:25:26'),
(321, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete/982d5a97e5b1153acb216c3d3dd4632b4a6b5f5cacc3ff394c855155cae3b5005607f546f18315f2b9034b2c16ba9fe9989a475d3e6144ff96af0bfdeee7ef9f_MQpN5XRz4CpN5CWk39P3Tgiqnr947wFaHLgPoJmmAg-', NULL, '2022-06-30 02:25:35'),
(322, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:25:37'),
(323, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/36705a1bde9821a30b0596b13311e16944cef7f91df2942b7f43ef5ffe6d2c9e7354581ba140de21ee338f7586e9b4cfbe297bbfe44b6e93c8305e04fe22528fSi07LdGERLkEjKxZAJOnJWnX5QuDSEqGgJTD1pgKGiA-', NULL, '2022-06-30 02:25:39'),
(324, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/36705a1bde9821a30b0596b13311e16944cef7f91df2942b7f43ef5ffe6d2c9e7354581ba140de21ee338f7586e9b4cfbe297bbfe44b6e93c8305e04fe22528fSi07LdGERLkEjKxZAJOnJWnX5QuDSEqGgJTD1pgKGiA-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"65\",\"66\",\"67\"],\"submit\":\"\"}', '2022-06-30 02:25:53'),
(325, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:25:53'),
(326, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/db40b8c5e642682c8ce73c343736cb8429c9be1be093c65647424fb93ff9830846c15051f9ebdb438f02086a69344186e31d0f6c8e93a30d06c45369b33a04dfCdeePe3ros32QgXnZilQU1~~7omCjlvqxDiKClfBhhY-', NULL, '2022-06-30 02:25:55');
INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(327, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/db40b8c5e642682c8ce73c343736cb8429c9be1be093c65647424fb93ff9830846c15051f9ebdb438f02086a69344186e31d0f6c8e93a30d06c45369b33a04dfCdeePe3ros32QgXnZilQU1~~7omCjlvqxDiKClfBhhY-', '{\"id\":[\"47\",\"48\",\"49\",\"50\",\"51\",\"55\"],\"submit\":\"\"}', '2022-06-30 02:26:27'),
(328, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:26:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `filemanager`
--

CREATE TABLE `filemanager` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `filemanager`
--

INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES
(4, '290622152611_Picture1.png', 'Di upload melalui module User', '2022-06-29 15:26:00', NULL),
(6, '300622015940_Picture1.png', 'Di upload melalui module User', '2022-06-30 01:59:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_menu`
--

CREATE TABLE `main_menu` (
  `id_menu` int(11) NOT NULL,
  `is_parent` int(11) DEFAULT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `type` enum('controller','url') DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `is_active` enum('0','1') DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `main_menu`
--

INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES
(3, 7, 'management menu', 'management-menu', 'controller', 'main_menu', '', '', '1', 8, '2020-02-15 06:48:31', '2020-11-02 13:33:26'),
(7, 0, 'configuration', 'configuration', 'controller', '', '', 'fa fa-cogs', '1', 6, '2020-02-26 06:42:29', '2020-11-23 05:20:01'),
(34, 7, 'settings', 'settings', 'controller', 'setting', '', '', '1', 7, '2020-10-19 00:25:57', '2020-11-23 05:20:11'),
(36, 0, 'dashboard', 'dashboard', 'controller', 'dashboard', '', 'mdi mdi-laptop', '1', 1, '2020-10-27 08:18:55', '2020-11-09 23:07:13'),
(37, 0, 'auth', 'auth', NULL, '', NULL, 'mdi mdi-account-settings-variant', '1', 2, '2020-10-27 08:45:17', NULL),
(38, 37, 'user', 'user', 'controller', 'user', NULL, 'mdi mdi-account-star', '1', 3, '2020-10-27 08:46:10', '2020-10-27 09:38:05'),
(39, 37, 'groups', 'groups', 'controller', 'group', NULL, '', '1', 4, '2020-10-27 08:48:28', '2020-10-27 20:24:12'),
(40, 37, 'permission', 'permission', 'controller', 'permission', NULL, '', '1', 5, '2020-10-27 08:49:49', '2020-10-29 22:47:10'),
(48, 0, 'm-crud generator', 'm-crud-generator', 'controller', 'm_crud_generator', '', 'mdi mdi-xml', '1', 10, '2020-11-01 12:23:11', '2020-11-22 00:06:35'),
(54, 7, 'file manager', 'file-manager', 'controller', 'filemanager', '', 'mdi mdi-folder-multiple-image', '1', 9, '2020-11-08 00:44:38', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modules_crud_generator`
--

CREATE TABLE `modules_crud_generator` (
  `id` int(11) NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `modules_crud_generator`
--

INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES
(1, 'Mahasiswa', 'Mahasiswa', 'mahasiswa', '2022-06-28 10:40:00'),
(2, 'Kelas', 'Kelas', 'kelas', '2022-06-28 11:02:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `options` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES
(1, 'general', 'web_name', 'Testing Ges'),
(2, 'general', 'web_domain', 'http://localhost/belajar/build/'),
(3, 'general', 'web_owner', 'royyan'),
(4, 'general', 'email', 'admin@admin.com'),
(5, 'general', 'telepon', '085288888888'),
(6, 'general', 'address', '-'),
(7, 'general', 'logo', 'http://localhost/belajar/build/_temp/uploads/img/300622015525_GENERATOR_remove.png'),
(8, 'general', 'logo_mini', ' 300622015525_GENERATOR_remove.png'),
(9, 'general', 'favicon', '231120051803_favicon.ico'),
(50, 'sosmed', 'facebook', '#'),
(51, 'general', 'instagram', '#'),
(52, 'sosmed', 'youtube', '#'),
(53, 'sosmed', 'twitter', '#'),
(60, 'config', 'maintenance_status', 'N'),
(61, 'config', 'user_log_status', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `ci_user_log`
--
ALTER TABLE `ci_user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ci_user_log`
--
ALTER TABLE `ci_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT untuk tabel `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
