-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-01-2023 a las 11:56:21
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `amoba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendars`
--

CREATE TABLE `calendars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calendars`
--

INSERT INTO `calendars` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Catalunya', '2020-01-14 19:42:25', '2020-01-14 19:42:25'),
(3, 'test calendar', '2021-05-03 17:29:46', '2021-05-03 17:29:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 'Peso Mexicano', 'MXN', 'MX', '2023-01-08 12:05:36', '2023-01-08 12:05:36'),
(2, 'Dolar Estadounidense', 'USD', 'US', '2023-01-08 12:05:36', '2023-01-08 12:05:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disabled_days`
--

CREATE TABLE `disabled_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `calendar_id` bigint(20) UNSIGNED NOT NULL,
  `day` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `enabled` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `disabled_days`
--

INSERT INTO `disabled_days` (`id`, `calendar_id`, `day`, `enabled`, `created_at`, `updated_at`) VALUES
(2319, 3, '2021-05-13 05:00:00', 1, '2021-05-06 09:27:02', '2021-05-06 09:27:02'),
(2320, 3, '2021-05-14 05:00:00', 1, '2021-05-06 09:27:02', '2021-05-06 09:27:02'),
(2321, 3, '2021-05-15 05:00:00', 1, '2021-05-06 09:27:02', '2021-05-06 09:27:02'),
(2322, 3, '2021-05-21 05:00:00', 1, '2021-05-06 09:27:02', '2021-05-06 09:27:02'),
(2323, 3, '2021-05-12 05:00:00', 1, '2021-05-06 09:27:02', '2021-05-06 09:27:02'),
(2324, 3, '2021-05-03 05:00:00', 1, '2021-05-06 09:27:02', '2021-05-06 09:27:02'),
(2325, 3, '2021-05-20 05:00:00', 1, '2021-05-06 09:27:02', '2021-05-06 09:27:02'),
(2326, 2, '2020-01-01 06:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2327, 2, '2020-01-06 06:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2328, 2, '2020-04-10 05:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2329, 2, '2020-04-13 05:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2330, 2, '2020-05-01 05:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2331, 2, '2020-06-24 05:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2332, 2, '2020-08-15 05:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2333, 2, '2020-09-11 05:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2334, 2, '2020-10-12 05:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2335, 2, '2020-12-08 06:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2336, 2, '2020-12-06 06:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2337, 2, '2020-12-25 06:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2338, 2, '2020-12-26 06:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2339, 2, '2021-01-01 06:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2340, 2, '2021-01-06 06:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2341, 2, '2021-04-27 05:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2342, 2, '2021-04-28 05:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2343, 2, '2021-06-11 05:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2344, 2, '2021-06-12 05:00:00', 1, '2021-05-11 23:15:38', '2021-05-11 23:15:38'),
(2345, 3, '2021-05-23 05:00:00', 1, '2021-05-20 00:42:27', '2021-05-20 00:42:27'),
(2346, 3, '2021-05-22 05:00:00', 1, '2021-05-20 00:42:27', '2021-05-20 00:42:27'),
(2347, 3, '2021-05-24 05:00:00', 1, '2021-05-20 00:42:27', '2021-05-20 00:42:27'),
(2348, 3, '2021-05-25 05:00:00', 1, '2021-05-20 00:42:27', '2021-05-20 00:42:27'),
(2349, 3, '2021-05-26 05:00:00', 1, '2021-05-20 00:42:27', '2021-05-20 00:42:27'),
(2350, 3, '2021-05-28 05:00:00', 1, '2021-05-20 00:42:27', '2021-05-20 00:42:27'),
(2351, 3, '2021-05-29 05:00:00', 1, '2021-05-20 00:42:27', '2021-05-20 00:42:27'),
(2352, 2, '2021-10-29 05:00:00', 1, '2021-10-26 17:42:59', '2021-10-26 17:42:59'),
(2353, 3, '2021-10-28 05:00:00', 1, '2021-10-26 17:43:09', '2021-10-26 17:43:09'),
(2354, 2, '2021-10-28 05:00:00', 1, '2021-10-26 17:47:22', '2021-10-26 17:47:22'),
(2355, 2, '2021-11-30 06:00:00', 1, '2021-11-24 19:10:11', '2021-11-24 19:10:11'),
(2356, 2, '2021-11-26 06:00:00', 1, '2021-11-24 19:41:24', '2021-11-24 19:41:24'),
(2357, 2, '2021-11-28 06:00:00', 1, '2021-11-24 19:41:24', '2021-11-24 19:41:24'),
(2358, 2, '2021-12-15 06:00:00', 1, '2021-11-24 19:41:24', '2021-11-24 19:41:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(91, '2019_08_19_000000_create_failed_jobs_table', 1),
(92, '2023_01_08_021104_create_routes_table', 1),
(93, '2023_01_08_022632_create_calendar_table', 1),
(94, '2023_01_08_023428_create_calendar_days_disabled_table', 1),
(95, '2023_01_08_024308_create_users_table', 1),
(96, '2023_01_08_031608_create_route_data_table', 1),
(97, '2023_01_08_032746_create_currency_table', 1),
(98, '2023_01_08_032845_create_user_plans_table', 1),
(99, '2023_01_08_034240_create_services_table', 1),
(100, '2023_01_08_040425_create_reservations_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_plan_id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `track_id` int(11) DEFAULT NULL,
  `reservation_start` timestamp NULL DEFAULT NULL,
  `reservation_end` timestamp NULL DEFAULT NULL,
  `route_stop_origin_id` int(11) DEFAULT NULL,
  `route_stop_destination_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reservations`
--

INSERT INTO `reservations` (`id`, `user_plan_id`, `route_id`, `track_id`, `reservation_start`, `reservation_end`, `route_stop_origin_id`, `route_stop_destination_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(213, 52, 56, NULL, '2021-12-17 06:00:00', '2021-12-17 06:00:00', 597, 600, NULL, '2021-12-18 01:38:38', '2021-12-18 01:38:38'),
(214, 52, 56, NULL, '2021-12-24 06:00:00', '2021-12-24 06:00:00', 597, 600, NULL, '2021-12-18 01:38:38', '2021-12-18 01:38:38'),
(215, 52, 56, NULL, '2021-12-31 06:00:00', '2021-12-31 06:00:00', 597, 600, NULL, '2021-12-18 01:38:38', '2021-12-18 01:38:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `routes`
--

CREATE TABLE `routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invitation_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_timestamp` timestamp NULL DEFAULT NULL,
  `end_timestamp` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `routes`
--

INSERT INTO `routes` (`id`, `external_id`, `invitation_code`, `title`, `start_timestamp`, `end_timestamp`, `created_at`, `updated_at`) VALUES
(1, '-1', 'X7MNYK', 'Ruta - X7MNYK - Barcelona', '2020-01-20 23:55:28', '2020-01-21 00:42:48', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(2, '-2', '7F4DPB', 'Ruta - 7F4DPB - Barcelona', '2020-01-20 23:55:28', '2020-01-21 00:42:48', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(3, '-3', 'N9LYJD', 'Ruta - N9LYJD - Barcelona', '2020-01-20 23:55:28', '2020-01-21 00:36:34', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(4, '-4', 'M9YBKE', 'Ruta - M9YBKE - Barcelona', '2020-01-20 23:55:28', '2020-01-21 00:37:22', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(5, '-5', 'J0ELEF', 'Ruta - J0ELEF - Barcelona', '2020-01-20 23:55:28', '2020-01-21 00:35:38', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(6, NULL, '8K9DE8', 'Ruta - 8K9DE8 - São Paulo', '2020-01-20 15:34:22', '2020-01-21 02:28:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(7, NULL, 'MBD3GM', 'Ruta - MBD3GM - São Paulo', '2020-01-20 15:34:22', '2020-01-21 02:28:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(8, NULL, 'YFLXHA', 'Ruta - YFLXHA - Brazil', '2020-01-20 23:55:28', '2020-01-21 16:29:37', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(9, NULL, 'HH7ZBJ', 'Ruta - HH7ZBJ - São Paulo', '2020-01-20 23:55:28', '2020-01-21 08:09:35', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(10, '-10', 'DP0778', 'Ruta - DP0778 - São Paulo', '2020-01-20 23:32:57', '2020-01-21 11:08:17', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(11, '-11', 'A3LJ8J', 'Ruta - A3LJ8J - Portugal', '2020-01-20 23:17:42', '2020-01-21 01:06:57', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(12, NULL, 'NK80HL', 'Ruta - NK80HL - Portugal', '2020-01-20 23:41:09', '2020-01-21 00:26:42', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(13, NULL, 'DZNAB0', 'Ruta - DZNAB0 - Portugal', '2020-01-20 23:55:28', '2020-01-21 01:07:20', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(14, NULL, '44YHXX', 'Ruta - 44YHXX - Portugal', '2020-01-20 23:20:32', '2020-01-21 00:47:55', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(15, '-15', 'Z32KD4', 'Ruta - Z32KD4 - Barcelona', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(16, '-16', 'CFLMMF', 'Ruta - CFLMMF - Barcelona', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(17, '-17', 'ABH50B', 'Ruta - ABH50B - Barcelona', '2020-01-20 23:55:28', '2020-01-21 00:36:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(19, '-19', 'ZAMX2B', 'SUPERMAXIS - CORAL 1', '2020-01-20 23:32:57', '2020-01-21 11:07:57', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(20, '-20', 'X8X3PC', 'LLANADA - COCOLLAR 1', '2020-01-20 23:20:32', '2020-01-21 00:47:32', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(21, '-21', 'DKN8B5', 'LOJA - CASTEL FELLS 1', '2020-01-20 23:20:32', '2020-01-21 00:47:32', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(22, '-22', '99093C', 'MEGA TIENDA - CORAL 1', '2020-01-20 23:55:28', '2020-01-21 01:06:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(23, '-23', 'MEK4CC', 'POLLO - POLLO2 1', '2020-01-20 23:55:28', '2020-01-21 00:36:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(24, '-24', 'DFBP5A', 'FATIMA ROUTE 1', '2020-01-20 23:55:28', '2020-01-21 00:36:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(25, '-25', 'HAAX40', 'FATIMA ROUTE 2 1', '2020-01-20 23:55:28', '2020-01-21 00:36:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(26, '-26', 'HNB4JE', 'FATIMA ROUTE 2 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:36:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(27, '-27', 'J4PXZY', 'RUTA VVVVV 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(28, '-28', 'E26D6J', 'Los Angeles - Unicasa (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(29, '-29', '34XD6B', 'TEST-RURAS-03/05/2021 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:45', '2023-01-08 12:04:45'),
(30, '-30', 'JH7YYX', 'TEST-RURAS-04/05/2021 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(31, '-31', 'JPPP6B', 'RUTA WEEKLY2 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(32, '-32', 'X0EN4G', 'RUTA WEEKLY 3 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(33, '-33', '9FA6PP', 'RUTA WEEKLY 3 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(34, '-34', '2YNF3G', 'RUTA WEEKLY 3 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(35, '-35', 'FPZP07', 'MARRIOT GUARENAS 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(36, '-36', 'YH2FL8', 'MARRIOT GUARENAS 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(37, '-37', '9DKGK6', 'DANIEL B RUTA 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(38, '-38', '5ALXNL', 'DANIEL B RUTA 2 1', '2020-01-20 23:55:28', '2021-09-20 23:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(39, '-39', 'ECH80E', 'DANIEL B RUTA 3 1', '2020-01-20 23:55:28', '2021-09-20 23:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(40, '-40', 'AZBK2A', 'RUTA VVVVVVVVVVV 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(41, '-41', 'XXXEX2', 'RUTA DE RUTAS 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(42, '-42', 'APB2G0', 'RRRRRRRRRRRRR(CLON) 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(43, '-43', 'NCB5DZ', 'RRRRRRRRRRRRR(CLON) 1 (CLON) 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(44, '-44', 'A5KGAM', 'MARRIOTT 123456 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(45, '-45', '5AG6J0', 'MARRIOT XCXXXXX 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(46, '-46', 'B4940Z', 'MARRIOT XCXXXXX 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(47, '-47', 'ZYXY7B', 'MARRIOT XCXXXXX 1 (CLON) 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(48, '-48', 'KK8BBB', 'MARRIOT XCXXXXX 1 (CLON) 1 (CLON) 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(49, '-49', 'H8BEG8', 'MARRIOT XCXXXXX 1 (CLON) 1 (CLON) 1 (CLON) 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(50, '-50', 'DJJCEM', 'savoy 1 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(51, '-51', '9JNBJ3', 'MARRIOT XCXXXXX 1 (CLON) 1 (CLON) 1 (CLON) 1 (CLON) 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(52, '-52', 'E0J6JJ', 'SAN LUIS - CHAIMAS 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(53, '-53', 'FN342Z', 'nueva ruta 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(54, '-54', '79ZNGZ', 'EL BARQUITO 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(55, '-55', '5E4NGE', 'EL BARQUITO 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(56, '-56', 'KNLZZF', 'test georgina 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(57, '-57', 'K54ZGD', 'Nueva route 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(58, '-58', 'F42YGG', 'EL BARQUITO 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(59, '-59', 'XZ84NH', 'EL BARQUITO 3 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(60, '-60', 'AXMA3F', 'Ejemplo nuevo 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:46', '2023-01-08 12:04:46'),
(61, '-61', 'KP0LKX', 'LOJA - CASTEL FELLS 3 1', '2020-01-20 23:20:32', '2020-01-21 00:47:32', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(62, '-62', 'H7LGCG', 'MEGA TIENDA - XD 1', '2020-01-20 23:55:28', '2020-01-21 01:06:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(63, '-63', 'X0C3Z2', 'POLLO - POLLO LOCO 1', '2020-01-20 23:55:28', '2020-01-21 00:36:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(66, '-66', '32FA4F', 'Ruta - CFLMMF - Nuevo 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(67, '-67', '99GCE7', 'Ruta - CFLMMF - 123 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(68, '-68', 'PA6BHB', 'Ruta - A3LJ8J - P 1', '2020-01-20 23:17:42', '2020-01-21 01:06:42', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(69, '-69', 'YN4LZM', 'Nueva route Test 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(70, '-70', 'F94GFK', 'EL BARQUITO Final 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(71, '-71', '22HYKN', 'DANIEL B RUTA COOL 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(72, '-72', 'CD2J6J', 'RUTA DE RUTAS EJEMPLO 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(73, '-73', 'KGM3MX', 'MANZANA 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(74, '-74', 'AXG8MM', 'FRESA 1', '2020-01-20 23:55:28', '2020-01-21 00:36:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(77, '-77', 'H78FEP', 'SANDIA 1', '2020-01-20 23:20:32', '2020-01-21 00:47:32', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(78, '-78', 'PJP9P0', 'MATTEO ROUTE 1', '2020-01-20 23:55:28', '2020-01-21 00:36:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(79, '-79', 'XX5367', 'LLANADA - COCO 1', '2020-01-20 23:20:32', '2020-01-21 00:47:32', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(80, '-80', 'CB7KLK', 'BATMAN 1', '2020-01-20 23:41:09', '2020-01-21 00:26:09', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(81, '-81', '57G9LD', 'RUTA COOL 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(82, '-82', 'X0GJX2', 'Los Angeles - Unicasa vuelta 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(83, '-83', 'X0N68K', 'LLANADA 1', '2020-01-20 23:20:32', '2020-01-21 00:47:32', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(84, '-84', 'GG9JXJ', 'RUTA COOL 1 (CLON) 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(85, '-85', 'PAPZ7Z', 'calculo disponibilidad 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(86, '-86', 'ZA02YC', 'test disponibilidad 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(87, '-87', 'X2XBJ4', 'test disponibilidad 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(88, '-88', 'ZL4MNC', 'test services 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(89, '-89', 'Y0D6DK', 'capacidad 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47'),
(90, '-90', 'D68GBJ', 'test 1', '2020-01-20 23:55:28', '2020-01-21 00:42:28', '2023-01-08 12:04:47', '2023-01-08 12:04:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `routes_data`
--

CREATE TABLE `routes_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `calendar_id` bigint(20) UNSIGNED NOT NULL,
  `vinculation_route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_circular` tinyint(4) NOT NULL DEFAULT 0,
  `date_init` timestamp NULL DEFAULT NULL,
  `date_finish` timestamp NULL DEFAULT NULL,
  `mon` tinyint(4) NOT NULL DEFAULT 0,
  `tue` tinyint(4) NOT NULL DEFAULT 0,
  `wed` tinyint(4) NOT NULL DEFAULT 0,
  `thu` tinyint(4) NOT NULL DEFAULT 0,
  `fri` tinyint(4) NOT NULL DEFAULT 0,
  `sat` tinyint(4) NOT NULL DEFAULT 0,
  `sun` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `routes_data`
--

INSERT INTO `routes_data` (`id`, `route_id`, `calendar_id`, `vinculation_route`, `route_circular`, `date_init`, `date_finish`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `sun`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 0, '2020-01-14 06:00:00', '2020-12-31 06:00:00', 1, 1, 1, 1, 1, 0, 0, '2020-01-14 23:04:10', '2020-01-14 23:04:10'),
(2, 2, 2, NULL, 0, '2020-01-14 06:00:00', '2020-12-31 06:00:00', 1, 1, 1, 1, 1, 0, 0, '2020-01-14 23:05:34', '2020-01-14 23:05:35'),
(3, 3, 2, NULL, 0, '2020-01-14 06:00:00', '2020-12-31 06:00:00', 1, 1, 1, 1, 1, 0, 0, '2020-01-14 23:09:17', '2020-01-14 23:09:17'),
(4, 4, 2, NULL, 0, '2020-01-14 06:00:00', '2020-12-31 06:00:00', 1, 1, 1, 1, 1, 0, 0, '2020-01-14 23:09:44', '2020-01-14 23:09:45'),
(5, 5, 2, NULL, 1, '2020-01-14 06:00:00', '2020-12-31 06:00:00', 1, 1, 1, 1, 1, 0, 0, '2020-01-14 23:10:10', '2020-01-14 23:21:53'),
(6, 15, 2, NULL, 1, '2020-01-14 06:00:00', '2020-12-31 06:00:00', 1, 1, 1, 1, 1, 0, 0, '2020-01-14 23:20:36', '2020-01-14 23:22:05'),
(7, 16, 2, NULL, 1, '2020-01-14 06:00:00', '2023-08-17 05:00:00', 1, 1, 1, 1, 1, 1, 1, '2020-01-14 23:21:00', '2021-11-28 00:12:00'),
(8, 17, 2, NULL, 1, '2020-01-14 06:00:00', '2020-12-31 06:00:00', 1, 1, 1, 1, 1, 0, 0, '2020-01-14 23:21:29', '2020-01-14 23:22:25'),
(9, 19, 2, NULL, 0, '2021-04-10 05:00:00', '2023-08-25 05:00:00', 1, 1, 1, 1, 0, 0, 1, '2021-04-10 20:47:22', '2021-05-02 02:04:47'),
(10, 20, 2, NULL, 0, '2021-05-02 05:00:00', '2021-05-31 05:00:00', 1, 1, 1, 1, 1, 0, 0, '2021-04-10 22:26:00', '2021-04-11 01:54:44'),
(11, 21, 2, NULL, 0, '2021-04-10 05:00:00', '2021-12-22 06:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-04-10 22:34:33', '2021-04-10 22:34:33'),
(12, 22, 2, NULL, 0, '2021-04-14 05:00:00', '2021-06-30 05:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-04-14 18:42:49', '2021-04-14 18:42:49'),
(13, 23, 2, NULL, 0, '2021-04-29 05:00:00', '2021-08-26 05:00:00', 1, 1, 1, 1, 1, 0, 0, '2021-04-14 20:04:50', '2021-04-20 22:55:21'),
(14, 24, 2, NULL, 0, '2021-05-04 05:00:00', '2021-09-16 05:00:00', 1, 1, 1, 1, 1, 1, 0, '2021-04-15 05:49:25', '2021-05-04 22:03:14'),
(15, 25, 2, NULL, 0, '2021-04-23 05:00:00', '2021-09-16 05:00:00', 1, 1, 1, 1, 1, 0, 0, '2021-04-15 05:53:58', '2021-04-21 06:58:30'),
(16, 27, 2, NULL, 1, '2021-04-15 05:00:00', '2021-08-26 05:00:00', 1, 1, 1, 1, 1, 1, 0, '2021-04-15 07:22:52', '2021-07-08 18:30:26'),
(17, 28, 2, NULL, 0, '2021-10-21 05:00:00', '2022-07-14 05:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-04-28 21:01:08', '2021-10-22 02:42:25'),
(18, 29, 2, NULL, 0, '2021-05-03 05:00:00', '2021-08-11 05:00:00', 1, 1, 1, 1, 1, 0, 0, '2021-05-03 16:23:32', '2021-05-03 17:30:33'),
(19, 30, 2, NULL, 0, '2021-05-11 05:00:00', '2021-11-18 06:00:00', 1, 1, 1, 1, 1, 1, 0, '2021-05-04 21:38:44', '2021-05-05 00:12:34'),
(20, 31, 2, NULL, 0, '2021-05-14 05:00:00', '2021-09-16 05:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-05-13 18:44:13', '2021-07-01 01:28:20'),
(21, 49, 2, NULL, 0, '2021-07-20 05:00:00', '2021-08-03 05:00:00', 1, 1, 1, 1, 1, 0, 0, '2021-07-20 22:55:16', '2021-07-20 22:55:16'),
(22, 54, 2, NULL, 0, '2021-07-30 05:00:00', '2021-10-22 05:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-07-30 22:05:17', '2021-07-30 22:05:17'),
(23, 56, 2, NULL, 0, '2021-08-02 05:00:00', '2028-12-29 06:00:00', 1, 0, 1, 0, 1, 0, 0, '2021-08-03 01:43:09', '2021-10-27 23:09:42'),
(24, 53, 2, NULL, 0, '2021-09-27 05:00:00', '2022-08-12 05:00:00', 0, 0, 0, 0, 1, 1, 1, '2021-09-28 02:36:28', '2021-10-26 17:43:47'),
(25, 60, 2, NULL, 1, '2021-09-27 05:00:00', '2022-06-15 05:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-09-28 03:45:21', '2021-09-28 03:45:29'),
(26, 58, 2, NULL, 0, '2021-09-27 05:00:00', '2022-01-07 06:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-09-28 03:47:58', '2021-09-28 03:47:58'),
(27, 59, 2, NULL, 1, '2021-10-26 05:00:00', '2022-01-31 06:00:00', 1, 1, 1, 1, 1, 0, 0, '2021-09-28 03:59:43', '2021-10-26 22:14:22'),
(28, 61, 2, NULL, 0, '2021-10-04 05:00:00', '2023-01-11 06:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-10-05 03:02:39', '2021-10-05 03:02:39'),
(29, 62, 2, NULL, 0, '2021-10-04 05:00:00', '2023-07-06 05:00:00', 1, 1, 1, 1, 1, 1, 0, '2021-10-05 03:04:38', '2021-10-05 03:04:38'),
(30, 63, 2, NULL, 0, '2021-10-04 05:00:00', '2023-06-07 05:00:00', 1, 1, 1, 1, 1, 0, 0, '2021-10-05 03:06:45', '2021-10-05 03:06:45'),
(31, 68, 2, NULL, 0, '2021-10-04 05:00:00', '2023-06-24 05:00:00', 1, 0, 1, 0, 1, 1, 0, '2021-10-05 03:08:23', '2021-10-05 03:08:23'),
(32, 11, 2, NULL, 0, '2021-10-04 05:00:00', '2023-03-17 06:00:00', 1, 1, 1, 1, 0, 0, 1, '2021-10-05 03:11:33', '2021-10-05 03:11:33'),
(33, 67, 2, NULL, 0, '2021-10-04 05:00:00', '2023-08-15 05:00:00', 1, 1, 0, 1, 0, 1, 1, '2021-10-05 03:12:49', '2021-10-05 03:12:49'),
(34, 10, 2, NULL, 0, '2021-10-04 05:00:00', '2023-07-06 05:00:00', 1, 1, 1, 0, 0, 1, 1, '2021-10-05 03:16:06', '2021-10-05 03:16:06'),
(35, 66, 2, NULL, 0, '2021-10-04 05:00:00', '2022-04-07 05:00:00', 1, 1, 1, 1, 0, 0, 1, '2021-10-05 03:20:49', '2021-10-05 03:20:49'),
(36, 80, 2, NULL, 0, '2021-10-05 05:00:00', '2023-07-12 05:00:00', 1, 0, 1, 1, 1, 0, 0, '2021-10-05 23:02:32', '2021-10-05 23:02:32'),
(37, 71, 2, NULL, 0, '2021-10-05 05:00:00', '2023-07-03 05:00:00', 1, 1, 1, 1, 1, 0, 0, '2021-10-05 23:09:33', '2021-10-05 23:09:33'),
(38, 70, 2, NULL, 0, '2021-10-05 05:00:00', '2023-07-02 05:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-10-05 23:11:16', '2021-10-05 23:11:16'),
(39, 74, 2, NULL, 0, '2021-10-05 05:00:00', '2023-06-29 05:00:00', 1, 0, 1, 1, 1, 0, 0, '2021-10-05 23:13:03', '2021-10-05 23:13:03'),
(40, 79, 2, NULL, 0, '2021-10-05 05:00:00', '2023-06-27 05:00:00', 0, 0, 1, 1, 1, 1, 1, '2021-10-05 23:14:31', '2021-10-05 23:14:31'),
(41, 73, 2, NULL, 0, '2021-10-05 05:00:00', '2023-06-21 05:00:00', 1, 1, 1, 1, 1, 1, 0, '2021-10-05 23:16:24', '2021-10-05 23:16:24'),
(42, 78, 2, NULL, 0, '2021-10-05 05:00:00', '2023-06-28 05:00:00', 1, 1, 1, 1, 1, 1, 0, '2021-10-05 23:17:54', '2021-10-05 23:17:54'),
(43, 69, 2, NULL, 0, '2021-10-05 05:00:00', '2023-06-29 05:00:00', 1, 1, 1, 1, 1, 0, 0, '2021-10-05 23:19:59', '2021-10-05 23:20:00'),
(44, 72, 2, NULL, 0, '2021-10-05 05:00:00', '2023-06-20 05:00:00', 0, 0, 1, 1, 1, 1, 1, '2021-10-05 23:28:19', '2021-10-05 23:28:19'),
(45, 77, 2, NULL, 0, '2021-10-05 05:00:00', '2023-06-21 05:00:00', 1, 1, 1, 1, 1, 1, 0, '2021-10-05 23:30:16', '2021-10-05 23:30:16'),
(46, 82, 2, NULL, 0, '2021-10-21 05:00:00', '2022-07-14 05:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-10-22 02:35:13', '2021-10-22 02:35:13'),
(47, 84, 2, NULL, 0, '2021-10-30 05:00:00', '2022-01-31 06:00:00', 1, 0, 1, 0, 1, 0, 0, '2021-10-30 20:37:43', '2021-10-30 20:37:43'),
(48, 85, 2, NULL, 0, '2021-11-26 06:00:00', '2021-12-31 06:00:00', 1, 0, 1, 0, 1, 0, 0, '2021-11-26 20:53:10', '2021-11-26 20:53:10'),
(49, 87, 2, NULL, 0, '2021-11-26 06:00:00', '2021-12-31 06:00:00', 1, 0, 1, 0, 1, 0, 0, '2021-11-27 02:13:56', '2021-11-27 02:25:14'),
(50, 88, 2, NULL, 0, '2021-11-27 06:00:00', '2022-01-27 06:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-11-28 05:13:52', '2021-11-28 05:18:09'),
(51, 89, 2, NULL, 0, '2021-11-28 06:00:00', '2021-12-28 06:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-11-29 03:21:57', '2021-11-29 03:21:57'),
(52, 90, 2, NULL, 0, '2021-12-01 06:00:00', '2022-12-31 06:00:00', 1, 1, 1, 1, 1, 1, 1, '2021-12-02 02:00:06', '2021-12-02 02:00:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_budget_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_route_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `arrival_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival_timestamp` timestamp NULL DEFAULT NULL,
  `departure_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departure_timestamp` timestamp NULL DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `confirmed_pax_count` int(11) NOT NULL DEFAULT 0,
  `reported_departure_timestamp` timestamp NULL DEFAULT NULL,
  `reported_departure_kms` int(11) DEFAULT NULL,
  `reported_arrival_timestamp` timestamp NULL DEFAULT NULL,
  `reported_arrival_kms` int(11) DEFAULT NULL,
  `reported_vehicle_plate_number` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reprocess_status` tinyint(4) NOT NULL DEFAULT 0,
  `return` tinyint(4) NOT NULL DEFAULT 0,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `synchronized_downstream` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `synchronized_upstream` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `sale_tickets_drivers` tinyint(4) NOT NULL DEFAULT 0,
  `notes_drivers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary_drivers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_if_externalized` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `external_id`, `external_budget_id`, `external_route_id`, `track_id`, `name`, `notes`, `timestamp`, `arrival_address`, `arrival_timestamp`, `departure_address`, `departure_timestamp`, `capacity`, `confirmed_pax_count`, `reported_departure_timestamp`, `reported_departure_kms`, `reported_arrival_timestamp`, `reported_arrival_kms`, `reported_vehicle_plate_number`, `status`, `status_info`, `reprocess_status`, `return`, `created`, `modified`, `synchronized_downstream`, `synchronized_upstream`, `province_id`, `sale_tickets_drivers`, `notes_drivers`, `itinerary_drivers`, `cost_if_externalized`, `created_at`, `updated_at`) VALUES
(26257972, '-26257972', '-54', '-54', NULL, 'EL BARQUITO 1', NULL, '2021-09-15 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-09-15 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-09-15 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '-40', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 0, '2021-09-14 01:28:18', '2021-09-14 01:30:11', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257973, '-26257973', '-54', '-54', NULL, 'EL BARQUITO 1', NULL, '2021-09-15 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-09-15 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-09-15 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '-30', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 0, '2021-09-14 01:28:18', '2021-09-14 01:30:11', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257974, '-26257974', '-54', '-54', NULL, 'EL BARQUITO 1', NULL, '2021-09-15 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-09-15 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-09-15 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '-20', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 0, '2021-09-14 01:28:18', '2021-09-14 01:30:11', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257975, '-26257975', '-54', '-54', NULL, 'EL BARQUITO 1', NULL, '2021-09-15 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-09-15 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-09-15 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '40', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 0, '2021-09-14 01:28:18', '2021-09-14 01:30:12', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257976, '-26257976', '-54', '-54', NULL, 'EL BARQUITO 1', NULL, '2021-09-15 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-09-15 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-09-15 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '30', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 0, '2021-09-14 01:28:18', '2021-09-14 01:30:11', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257977, '-26257977', '-68', '-68', NULL, NULL, NULL, '2021-10-04 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-05 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-04 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257978, '-26257978', '-68', '-68', NULL, NULL, NULL, '2021-10-06 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-07 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-06 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257979, '-26257979', '-68', '-68', NULL, NULL, NULL, '2021-10-08 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-09 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-08 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257980, '-26257980', '-68', '-68', NULL, NULL, NULL, '2021-10-09 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-10 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-09 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257981, '-26257981', '-68', '-68', NULL, NULL, NULL, '2021-10-11 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-12 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-11 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257982, '-26257982', '-68', '-68', NULL, NULL, NULL, '2021-10-13 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-14 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-13 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257983, '-26257983', '-68', '-68', NULL, NULL, NULL, '2021-10-15 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-16 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-15 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257984, '-26257984', '-68', '-68', NULL, NULL, NULL, '2021-10-16 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-17 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-16 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257985, '-26257985', '-68', '-68', NULL, NULL, NULL, '2021-10-18 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-19 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-18 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257986, '-26257986', '-68', '-68', NULL, NULL, NULL, '2021-10-20 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-21 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-20 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257987, '-26257987', '-68', '-68', NULL, NULL, NULL, '2021-10-22 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-23 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-22 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257988, '-26257988', '-68', '-68', NULL, NULL, NULL, '2021-10-23 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-24 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-23 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257989, '-26257989', '-68', '-68', NULL, NULL, NULL, '2021-10-25 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-26 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-25 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:57', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257992, '-26257992', '-68', '-68', NULL, NULL, NULL, '2021-10-30 05:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-10-31 00:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-10-30 22:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257993, '-26257993', '-68', '-68', NULL, NULL, NULL, '2021-11-01 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-02 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-01 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:56', '2023-01-08 12:05:56'),
(26257994, '-26257994', '-68', '-68', NULL, NULL, NULL, '2021-11-03 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-04 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-03 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26257995, '-26257995', '-68', '-68', NULL, NULL, NULL, '2021-11-05 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-06 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-05 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26257996, '-26257996', '-68', '-68', NULL, NULL, NULL, '2021-11-06 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-07 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-06 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26257997, '-26257997', '-68', '-68', NULL, NULL, NULL, '2021-11-08 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-09 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-08 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26257998, '-26257998', '-68', '-68', NULL, NULL, NULL, '2021-11-10 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-11 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-10 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26257999, '-26257999', '-68', '-68', NULL, NULL, NULL, '2021-11-12 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-13 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-12 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258000, '-26258000', '-68', '-68', NULL, NULL, NULL, '2021-11-13 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-14 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-13 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258001, '-26258001', '-68', '-68', NULL, NULL, NULL, '2021-11-15 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-16 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-15 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258002, '-26258002', '-68', '-68', NULL, NULL, NULL, '2021-11-17 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-18 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-17 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258003, '-26258003', '-68', '-68', NULL, NULL, NULL, '2021-11-19 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-20 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-19 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258004, '-26258004', '-68', '-68', NULL, NULL, NULL, '2021-11-20 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-21 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-20 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258005, '-26258005', '-68', '-68', NULL, NULL, NULL, '2021-11-22 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-23 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-22 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258006, '-26258006', '-68', '-68', NULL, NULL, NULL, '2021-11-24 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-25 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-24 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258008, '-26258008', '-68', '-68', NULL, NULL, NULL, '2021-11-27 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-28 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-27 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258009, '-26258009', '-68', '-68', NULL, NULL, NULL, '2021-11-29 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-11-30 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-11-29 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258010, '-26258010', '-68', '-68', NULL, NULL, NULL, '2021-12-01 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-12-02 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-12-01 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258011, '-26258011', '-68', '-68', NULL, NULL, NULL, '2021-12-03 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-12-04 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-12-03 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258012, '-26258012', '-68', '-68', NULL, NULL, NULL, '2021-12-04 06:00:00', 'Parque das Nações (Gare Oriente),Parque das Nações (Gare Oriente)', '2021-12-05 01:06:42', 'Campus de Campolide, Lisboa,Campus de Campolide, Lisboa', '2021-12-04 23:22:42', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:57', '2021-10-05 03:18:58', NULL, NULL, 63, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258013, '-26258013', '-67', '-67', NULL, NULL, NULL, '2021-10-04 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-04 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-04 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258014, '-26258014', '-67', '-67', NULL, NULL, NULL, '2021-10-04 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-04 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-04 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258015, '-26258015', '-67', '-67', NULL, NULL, NULL, '2021-10-04 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-04 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-04 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258016, '-26258016', '-67', '-67', NULL, NULL, NULL, '2021-10-05 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-05 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-05 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258017, '-26258017', '-67', '-67', NULL, NULL, NULL, '2021-10-05 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-05 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-05 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258018, '-26258018', '-67', '-67', NULL, NULL, NULL, '2021-10-05 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-05 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-05 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258019, '-26258019', '-67', '-67', NULL, NULL, NULL, '2021-10-07 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-07 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-07 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258020, '-26258020', '-67', '-67', NULL, NULL, NULL, '2021-10-07 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-07 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-07 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258021, '-26258021', '-67', '-67', NULL, NULL, NULL, '2021-10-07 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-07 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-07 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258022, '-26258022', '-67', '-67', NULL, NULL, NULL, '2021-10-09 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-09 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-09 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:57', '2023-01-08 12:05:57'),
(26258023, '-26258023', '-67', '-67', NULL, NULL, NULL, '2021-10-09 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-09 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-09 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258024, '-26258024', '-67', '-67', NULL, NULL, NULL, '2021-10-09 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-09 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-09 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258025, '-26258025', '-67', '-67', NULL, NULL, NULL, '2021-10-10 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-10 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-10 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258026, '-26258026', '-67', '-67', NULL, NULL, NULL, '2021-10-10 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-10 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-10 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258027, '-26258027', '-67', '-67', NULL, NULL, NULL, '2021-10-10 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-10 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-10 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258028, '-26258028', '-67', '-67', NULL, NULL, NULL, '2021-10-11 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-11 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-11 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258029, '-26258029', '-67', '-67', NULL, NULL, NULL, '2021-10-11 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-11 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-11 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258030, '-26258030', '-67', '-67', NULL, NULL, NULL, '2021-10-11 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-11 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-11 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258031, '-26258031', '-67', '-67', NULL, NULL, NULL, '2021-10-12 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-12 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-12 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258032, '-26258032', '-67', '-67', NULL, NULL, NULL, '2021-10-12 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-12 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-12 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258033, '-26258033', '-67', '-67', NULL, NULL, NULL, '2021-10-12 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-12 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-12 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258034, '-26258034', '-67', '-67', NULL, NULL, NULL, '2021-10-14 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-14 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-14 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258035, '-26258035', '-67', '-67', NULL, NULL, NULL, '2021-10-14 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-14 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-14 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258036, '-26258036', '-67', '-67', NULL, NULL, NULL, '2021-10-14 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-14 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-14 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258037, '-26258037', '-67', '-67', NULL, NULL, NULL, '2021-10-16 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-16 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-16 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258038, '-26258038', '-67', '-67', NULL, NULL, NULL, '2021-10-16 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-16 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-16 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258039, '-26258039', '-67', '-67', NULL, NULL, NULL, '2021-10-16 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-16 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-16 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258040, '-26258040', '-67', '-67', NULL, NULL, NULL, '2021-10-17 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-17 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-17 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258041, '-26258041', '-67', '-67', NULL, NULL, NULL, '2021-10-17 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-17 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-17 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258042, '-26258042', '-67', '-67', NULL, NULL, NULL, '2021-10-17 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-17 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-17 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258043, '-26258043', '-67', '-67', NULL, NULL, NULL, '2021-10-18 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-18 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-18 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258044, '-26258044', '-67', '-67', NULL, NULL, NULL, '2021-10-18 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-18 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-18 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:58', '2023-01-08 12:05:58'),
(26258045, '-26258045', '-67', '-67', NULL, NULL, NULL, '2021-10-18 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-18 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-18 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258046, '-26258046', '-67', '-67', NULL, NULL, NULL, '2021-10-19 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-19 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-19 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258047, '-26258047', '-67', '-67', NULL, NULL, NULL, '2021-10-19 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-19 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-19 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258048, '-26258048', '-67', '-67', NULL, NULL, NULL, '2021-10-19 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-19 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-19 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258049, '-26258049', '-67', '-67', NULL, NULL, NULL, '2021-10-21 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-21 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-21 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258050, '-26258050', '-67', '-67', NULL, NULL, NULL, '2021-10-21 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-21 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-21 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258051, '-26258051', '-67', '-67', NULL, NULL, NULL, '2021-10-21 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-21 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-21 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258052, '-26258052', '-67', '-67', NULL, NULL, NULL, '2021-10-23 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-23 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-23 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258053, '-26258053', '-67', '-67', NULL, NULL, NULL, '2021-10-23 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-23 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-23 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258054, '-26258054', '-67', '-67', NULL, NULL, NULL, '2021-10-23 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-23 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-23 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59');
INSERT INTO `services` (`id`, `external_id`, `external_budget_id`, `external_route_id`, `track_id`, `name`, `notes`, `timestamp`, `arrival_address`, `arrival_timestamp`, `departure_address`, `departure_timestamp`, `capacity`, `confirmed_pax_count`, `reported_departure_timestamp`, `reported_departure_kms`, `reported_arrival_timestamp`, `reported_arrival_kms`, `reported_vehicle_plate_number`, `status`, `status_info`, `reprocess_status`, `return`, `created`, `modified`, `synchronized_downstream`, `synchronized_upstream`, `province_id`, `sale_tickets_drivers`, `notes_drivers`, `itinerary_drivers`, `cost_if_externalized`, `created_at`, `updated_at`) VALUES
(26258055, '-26258055', '-67', '-67', NULL, NULL, NULL, '2021-10-24 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-24 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-24 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258056, '-26258056', '-67', '-67', NULL, NULL, NULL, '2021-10-24 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-24 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-24 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258057, '-26258057', '-67', '-67', NULL, NULL, NULL, '2021-10-24 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-24 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-24 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258058, '-26258058', '-67', '-67', NULL, NULL, NULL, '2021-10-25 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-25 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-25 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258059, '-26258059', '-67', '-67', NULL, NULL, NULL, '2021-10-25 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-25 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-25 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258060, '-26258060', '-67', '-67', NULL, NULL, NULL, '2021-10-25 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-25 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-25 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258061, '-26258061', '-67', '-67', NULL, NULL, NULL, '2021-10-26 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-26 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-26 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258062, '-26258062', '-67', '-67', NULL, NULL, NULL, '2021-10-26 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-26 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-26 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258063, '-26258063', '-67', '-67', NULL, NULL, NULL, '2021-10-26 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-26 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-26 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258067, '-26258067', '-67', '-67', NULL, NULL, NULL, '2021-10-30 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-30 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-30 23:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258068, '-26258068', '-67', '-67', NULL, NULL, NULL, '2021-10-30 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-30 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-30 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258069, '-26258069', '-67', '-67', NULL, NULL, NULL, '2021-10-30 05:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-10-30 23:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-10-30 23:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258073, '-26258073', '-67', '-67', NULL, NULL, NULL, '2021-11-01 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-02 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-02 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258074, '-26258074', '-67', '-67', NULL, NULL, NULL, '2021-11-01 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-02 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-02 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258075, '-26258075', '-67', '-67', NULL, NULL, NULL, '2021-11-01 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-02 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-02 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:05:59', '2023-01-08 12:05:59'),
(26258076, '-26258076', '-67', '-67', NULL, NULL, NULL, '2021-11-02 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-03 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-03 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258077, '-26258077', '-67', '-67', NULL, NULL, NULL, '2021-11-02 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-03 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-03 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258078, '-26258078', '-67', '-67', NULL, NULL, NULL, '2021-11-02 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-03 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-03 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258079, '-26258079', '-67', '-67', NULL, NULL, NULL, '2021-11-04 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-05 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-05 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258080, '-26258080', '-67', '-67', NULL, NULL, NULL, '2021-11-04 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-05 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-05 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258081, '-26258081', '-67', '-67', NULL, NULL, NULL, '2021-11-04 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-05 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-05 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258082, '-26258082', '-67', '-67', NULL, NULL, NULL, '2021-11-06 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-07 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-07 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258083, '-26258083', '-67', '-67', NULL, NULL, NULL, '2021-11-06 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-07 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-07 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258084, '-26258084', '-67', '-67', NULL, NULL, NULL, '2021-11-06 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-07 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-07 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258085, '-26258085', '-67', '-67', NULL, NULL, NULL, '2021-11-07 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-08 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-08 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258086, '-26258086', '-67', '-67', NULL, NULL, NULL, '2021-11-07 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-08 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-08 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258087, '-26258087', '-67', '-67', NULL, NULL, NULL, '2021-11-07 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-08 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-08 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258088, '-26258088', '-67', '-67', NULL, NULL, NULL, '2021-11-08 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-09 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-09 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258089, '-26258089', '-67', '-67', NULL, NULL, NULL, '2021-11-08 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-09 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-09 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258090, '-26258090', '-67', '-67', NULL, NULL, NULL, '2021-11-08 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-09 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-09 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258091, '-26258091', '-67', '-67', NULL, NULL, NULL, '2021-11-09 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-10 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-10 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258092, '-26258092', '-67', '-67', NULL, NULL, NULL, '2021-11-09 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-10 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-10 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258093, '-26258093', '-67', '-67', NULL, NULL, NULL, '2021-11-09 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-10 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-10 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258094, '-26258094', '-67', '-67', NULL, NULL, NULL, '2021-11-11 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-12 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-12 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258095, '-26258095', '-67', '-67', NULL, NULL, NULL, '2021-11-11 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-12 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-12 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258096, '-26258096', '-67', '-67', NULL, NULL, NULL, '2021-11-11 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-12 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-12 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258097, '-26258097', '-67', '-67', NULL, NULL, NULL, '2021-11-13 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-14 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-14 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258098, '-26258098', '-67', '-67', NULL, NULL, NULL, '2021-11-13 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-14 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-14 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258099, '-26258099', '-67', '-67', NULL, NULL, NULL, '2021-11-13 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-14 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-14 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258100, '-26258100', '-67', '-67', NULL, NULL, NULL, '2021-11-14 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-15 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-15 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258101, '-26258101', '-67', '-67', NULL, NULL, NULL, '2021-11-14 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-15 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-15 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258102, '-26258102', '-67', '-67', NULL, NULL, NULL, '2021-11-14 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-15 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-15 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258103, '-26258103', '-67', '-67', NULL, NULL, NULL, '2021-11-15 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-16 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-16 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258104, '-26258104', '-67', '-67', NULL, NULL, NULL, '2021-11-15 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-16 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-16 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258105, '-26258105', '-67', '-67', NULL, NULL, NULL, '2021-11-15 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-16 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-16 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:00', '2023-01-08 12:06:00'),
(26258106, '-26258106', '-67', '-67', NULL, NULL, NULL, '2021-11-16 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-17 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-17 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258107, '-26258107', '-67', '-67', NULL, NULL, NULL, '2021-11-16 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-17 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-17 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258108, '-26258108', '-67', '-67', NULL, NULL, NULL, '2021-11-16 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-17 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-17 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258109, '-26258109', '-67', '-67', NULL, NULL, NULL, '2021-11-18 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-19 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-19 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258110, '-26258110', '-67', '-67', NULL, NULL, NULL, '2021-11-18 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-19 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-19 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258111, '-26258111', '-67', '-67', NULL, NULL, NULL, '2021-11-18 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-19 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-19 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258112, '-26258112', '-67', '-67', NULL, NULL, NULL, '2021-11-20 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-21 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-21 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258113, '-26258113', '-67', '-67', NULL, NULL, NULL, '2021-11-20 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-21 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-21 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258114, '-26258114', '-67', '-67', NULL, NULL, NULL, '2021-11-20 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-21 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-21 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258115, '-26258115', '-67', '-67', NULL, NULL, NULL, '2021-11-21 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-22 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-22 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258116, '-26258116', '-67', '-67', NULL, NULL, NULL, '2021-11-21 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-22 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-22 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258117, '-26258117', '-67', '-67', NULL, NULL, NULL, '2021-11-21 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-22 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-22 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258118, '-26258118', '-67', '-67', NULL, NULL, NULL, '2021-11-22 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-23 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-23 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258119, '-26258119', '-67', '-67', NULL, NULL, NULL, '2021-11-22 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-23 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-23 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258120, '-26258120', '-67', '-67', NULL, NULL, NULL, '2021-11-22 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-23 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-23 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258121, '-26258121', '-67', '-67', NULL, NULL, NULL, '2021-11-23 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-24 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-24 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258122, '-26258122', '-67', '-67', NULL, NULL, NULL, '2021-11-23 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-24 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-24 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258123, '-26258123', '-67', '-67', NULL, NULL, NULL, '2021-11-23 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-24 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-24 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258124, '-26258124', '-67', '-67', NULL, NULL, NULL, '2021-11-25 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-26 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-26 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258125, '-26258125', '-67', '-67', NULL, NULL, NULL, '2021-11-25 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-26 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-26 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258126, '-26258126', '-67', '-67', NULL, NULL, NULL, '2021-11-25 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-26 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-26 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258127, '-26258127', '-67', '-67', NULL, NULL, NULL, '2021-11-27 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-28 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-28 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258128, '-26258128', '-67', '-67', NULL, NULL, NULL, '2021-11-27 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-28 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-28 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258129, '-26258129', '-67', '-67', NULL, NULL, NULL, '2021-11-27 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-28 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-28 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258133, '-26258133', '-67', '-67', NULL, NULL, NULL, '2021-11-29 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-30 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-30 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258134, '-26258134', '-67', '-67', NULL, NULL, NULL, '2021-11-29 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-30 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-30 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258135, '-26258135', '-67', '-67', NULL, NULL, NULL, '2021-11-29 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-11-30 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-11-30 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258139, '-26258139', '-67', '-67', NULL, NULL, NULL, '2021-12-02 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-12-03 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-12-03 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258140, '-26258140', '-67', '-67', NULL, NULL, NULL, '2021-12-02 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-12-03 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-12-03 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258141, '-26258141', '-67', '-67', NULL, NULL, NULL, '2021-12-02 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-12-03 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-12-03 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258142, '-26258142', '-67', '-67', NULL, NULL, NULL, '2021-12-04 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-12-05 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-12-05 00:00:28', 10, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258143, '-26258143', '-67', '-67', NULL, NULL, NULL, '2021-12-04 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-12-05 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-12-05 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:01', '2023-01-08 12:06:01'),
(26258144, '-26258144', '-67', '-67', NULL, NULL, NULL, '2021-12-04 06:00:00', 'Av. Meridiana / C. Mallorca (sortida ciutat),Avinguda Meridiana 178, Barcelona', '2021-12-05 00:42:28', 'Camí de Can Ruti, 08916 Canyet, España', '2021-12-05 00:00:28', 54, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:18:59', '2021-10-05 03:18:59', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258145, '-26258145', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258146, '-26258146', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258147, '-26258147', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02');
INSERT INTO `services` (`id`, `external_id`, `external_budget_id`, `external_route_id`, `track_id`, `name`, `notes`, `timestamp`, `arrival_address`, `arrival_timestamp`, `departure_address`, `departure_timestamp`, `capacity`, `confirmed_pax_count`, `reported_departure_timestamp`, `reported_departure_kms`, `reported_arrival_timestamp`, `reported_arrival_kms`, `reported_vehicle_plate_number`, `status`, `status_info`, `reprocess_status`, `return`, `created`, `modified`, `synchronized_downstream`, `synchronized_upstream`, `province_id`, `sale_tickets_drivers`, `notes_drivers`, `itinerary_drivers`, `cost_if_externalized`, `created_at`, `updated_at`) VALUES
(26258148, '-26258148', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258149, '-26258149', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258150, '-26258150', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258151, '-26258151', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258152, '-26258152', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258153, '-26258153', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258154, '-26258154', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258155, '-26258155', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258156, '-26258156', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258157, '-26258157', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258158, '-26258158', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258159, '-26258159', '-63', '-63', NULL, NULL, NULL, '2021-10-04 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-04 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-04 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258160, '-26258160', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258161, '-26258161', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258162, '-26258162', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258163, '-26258163', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258164, '-26258164', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258165, '-26258165', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258166, '-26258166', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258167, '-26258167', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258168, '-26258168', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:02', '2023-01-08 12:06:02'),
(26258169, '-26258169', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258170, '-26258170', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258171, '-26258171', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258172, '-26258172', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258173, '-26258173', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258174, '-26258174', '-63', '-63', NULL, NULL, NULL, '2021-10-05 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-05 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-05 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258175, '-26258175', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258176, '-26258176', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258177, '-26258177', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258178, '-26258178', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258179, '-26258179', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258180, '-26258180', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258181, '-26258181', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258182, '-26258182', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258183, '-26258183', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258184, '-26258184', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 19, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258185, '-26258185', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03'),
(26258186, '-26258186', '-63', '-63', NULL, NULL, NULL, '2021-10-06 05:00:00', 'DECATHLON Plataforma Logística,Carrer de Ca l\'Arana, el Prat de Llobregat', '2021-10-06 23:36:28', 'Torres Venecianas - Plaza España,Avinguda de la Reina Maria Cristina 5', '2021-10-06 23:00:28', 500, 0, NULL, NULL, NULL, NULL, NULL, '0', '{\"driver\": false, \"vehicle\": false, \"readings\": false, \"tracking\": false, \"ended_late\": false, \"play_service\": false, \"started_late\": false, \"stop_service\": false}', 0, 1, '2021-10-05 03:19:02', '2021-10-05 03:19:05', NULL, NULL, 8, 0, NULL, NULL, NULL, '2023-01-08 12:06:03', '2023-01-08 12:06:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_online` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first` tinyint(4) NOT NULL DEFAULT 0,
  `last_accept_date` timestamp NULL DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `company_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` double(8,2) DEFAULT NULL,
  `first_trip` tinyint(4) NOT NULL DEFAULT 0,
  `incomplete_profile` tinyint(4) NOT NULL DEFAULT 1,
  `phone_verify` tinyint(4) NOT NULL DEFAULT 0,
  `token_auto_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_vertical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT 0,
  `no_registered` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone_number`, `picture`, `email`, `password`, `remember_token`, `last_online`, `verification_code`, `new_email`, `status`, `first`, `last_accept_date`, `created`, `modified`, `company_contact`, `credits`, `first_trip`, `incomplete_profile`, `phone_verify`, `token_auto_login`, `user_vertical`, `language_id`, `no_registered`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Moises', 'Perez', '(12)111111111', NULL, 'm.perez@busup.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2020-01-10 23:20:58', NULL, NULL, '2', 0, NULL, '2019-12-19 00:14:36', '2021-12-18 11:37:09', '', 10035.00, 0, 0, 1, NULL, NULL, 2, 0, NULL, '2023-01-08 12:05:13', '2023-01-08 12:05:13'),
(3, 'Jordi', 'T', '', NULL, 'pruebas2@amobasoftware.com', 'e10adc3949ba59abbe56e057f20f883e', 'NUOlOJYc4viPLu207GM2DtMS1DdjZLmy5uXVGW8BqS163U34Xeiv3AF3R6bi', NULL, NULL, NULL, '2', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, 0, NULL, '2023-01-08 12:05:13', '2023-01-08 12:05:13'),
(4, 'Josep', 'R', '', NULL, 'm.perez+2@busup.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, '2', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, 0, NULL, '2023-01-08 12:05:13', '2023-01-08 12:05:13'),
(5, 'Carme', 'F', '', NULL, 'm.perez+3@busup.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, '2', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, 0, NULL, '2023-01-08 12:05:13', '2023-01-08 12:05:13'),
(6, 'Oriol', 'J', '', NULL, 'm.perez+4@busup.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, '2', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, 0, NULL, '2023-01-08 12:05:13', '2023-01-08 12:05:13'),
(7, 'Jordi', 'C', '', NULL, 'm.perez+5@busup.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, '2', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, 0, NULL, '2023-01-08 12:05:13', '2023-01-08 12:05:13'),
(8, 'Jordi', 'S', '', NULL, 'm.perez+6@busup.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, '2', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, 0, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(9, 'Dolors', 'B', '', NULL, 'm.perez+7@busup.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, '2', 0, NULL, NULL, '2021-05-20 22:58:55', NULL, 200.00, 0, 0, 1, NULL, NULL, NULL, 0, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(10, 'Raul', 'R', '', NULL, 'pruebas@amobasoftware.com', 'e10adc3949ba59abbe56e057f20f883e', 'hl2mLGO7gooDsGnCVerT1ijCSCPFL97aL3Up46D3bORJM34YiTOIaUHya9Ib', NULL, NULL, NULL, '2', 0, NULL, NULL, '2021-05-20 22:58:46', NULL, 200.00, 0, 0, 1, NULL, NULL, NULL, 0, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(11, 'EasyCourse', 'EasyCourse', NULL, NULL, 'easycourse@busup.com', '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL, NULL, '2', 0, NULL, '2021-04-10 16:31:19', '2021-04-10 16:31:19', NULL, NULL, 0, 0, 1, NULL, NULL, 6, 0, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(12, 'nelson jose', '', '34 12345767', NULL, 'jojoto@jojoto.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-06-13 01:14:20', '2021-06-27 10:32:13', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(13, 'jojoto perez', '', '999999999999', NULL, 'jojoto@jojort.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-06-22 06:08:37', '2021-06-22 06:08:37', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(14, 'jojoto perez', '', '96999999', NULL, 'jojoto@jojojoto.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-06-23 01:56:47', '2021-06-23 01:56:47', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(15, 'georgina', '', '5555555', NULL, 'georgina@georgina.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-06-24 08:27:57', '2021-06-24 08:27:58', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(16, 'jojoto peorez', '', '34 12345767', NULL, 'jojoto@joto.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-06-25 05:42:22', '2021-06-25 05:42:23', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(17, 'nelson jose', '', '34 12345767', NULL, 'nelson@nelson.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-06-25 22:34:04', '2021-06-25 22:34:04', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(18, '', '', '34 12345767', NULL, 'nelsonfariasba@gmail.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-06-26 20:50:34', '2021-06-26 20:50:34', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(19, 'nelson jose', '', '34 12345767', NULL, 'jose@jose.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-06-27 09:49:43', '2021-06-27 09:49:43', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(20, 'Daniel Sanchez', '', '34 12345767', NULL, 'ingdanieljs@gmail.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-08-02 02:55:37', '2021-08-02 02:55:37', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(21, 'Daniel Sanchez', '', '34 12345767', NULL, '2ingdanieljs@gmail.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-08-02 03:19:30', '2021-08-02 03:58:26', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(22, 'jojoto gates', '', '34 12345767', NULL, 'jojoto@gmail.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-08-02 04:03:28', '2021-08-02 04:03:28', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(23, 'Daniel Sanchez', '', '34 12345767', NULL, '3ingdanieljs@gmail.com', NULL, NULL, NULL, NULL, NULL, '-1', 0, NULL, '2021-08-02 04:08:19', '2021-08-02 04:08:19', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(34, 'aaaaaa', 'qqqqq', '(34)12345678', NULL, 'daniel2@prueba.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, '2', 0, NULL, '2021-09-15 08:21:58', '2021-09-15 08:21:58', NULL, 0.00, 0, 0, 1, '614166d60d77e', NULL, 2, 0, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(35, 'nelson', 'bucaranda', '(593)987116649', NULL, 'nelson@amobasoftware.com', '6f4e4540ed501075ba637eb97b06ccb4', NULL, NULL, NULL, NULL, '2', 0, NULL, '2021-10-30 12:56:19', '2021-12-18 12:14:38', NULL, 7850.00, 0, 0, 1, '617cfaa34b62f', NULL, 4, 0, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14'),
(36, 'jojota perez', NULL, NULL, NULL, 'jojota@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, '2', 0, NULL, '2021-11-12 09:21:54', '2021-11-12 09:21:54', NULL, NULL, 0, 1, 0, '618dddd2102fe', NULL, NULL, 1, NULL, '2023-01-08 12:05:14', '2023-01-08 12:05:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_plans`
--

CREATE TABLE `user_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `next_user_plan_id` int(11) DEFAULT NULL,
  `start_timestamp` timestamp NULL DEFAULT NULL,
  `end_timestamp` timestamp NULL DEFAULT NULL,
  `renewal_timestamp` timestamp NULL DEFAULT NULL,
  `renewal_price` double NOT NULL,
  `requires_invoice` tinyint(4) NOT NULL DEFAULT 0,
  `status` int(10) UNSIGNED NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `financiation` tinyint(4) NOT NULL DEFAULT 0,
  `status_financiation` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending_payment` tinyint(4) NOT NULL DEFAULT 0,
  `date_max_payment` timestamp NULL DEFAULT NULL,
  `proxim_start_timestamp` timestamp NULL DEFAULT NULL,
  `proxim_end_timestamp` timestamp NULL DEFAULT NULL,
  `proxim_renewal_timestamp` timestamp NULL DEFAULT NULL,
  `proxim_renewal_price` double DEFAULT NULL,
  `credits_return` double(8,2) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `cancel_employee` tinyint(4) NOT NULL DEFAULT 0,
  `force_renovation` tinyint(4) NOT NULL DEFAULT 0,
  `date_canceled` timestamp NULL DEFAULT NULL,
  `amount_confirm_canceled` double DEFAULT NULL,
  `credit_confirm_canceled` double(8,2) DEFAULT NULL,
  `cost_center_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_plans`
--

INSERT INTO `user_plans` (`id`, `user_id`, `currency_id`, `next_user_plan_id`, `start_timestamp`, `end_timestamp`, `renewal_timestamp`, `renewal_price`, `requires_invoice`, `status`, `created`, `modified`, `financiation`, `status_financiation`, `language`, `nif`, `business_name`, `pending_payment`, `date_max_payment`, `proxim_start_timestamp`, `proxim_end_timestamp`, `proxim_renewal_timestamp`, `proxim_renewal_price`, `credits_return`, `company_id`, `cancel_employee`, `force_renovation`, `date_canceled`, `amount_confirm_canceled`, `credit_confirm_canceled`, `cost_center_id`, `created_at`, `updated_at`) VALUES
(52, 35, 2, NULL, NULL, NULL, NULL, 30, 0, 0, '2021-12-18 12:14:37', '2021-12-18 12:14:37', 0, 0, 'ca_ES', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0.00, 33, 0, 0, NULL, NULL, NULL, 0, '2023-01-08 12:05:49', '2023-01-08 12:05:49');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `disabled_days`
--
ALTER TABLE `disabled_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled_days_calendar_id_foreign` (`calendar_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_user_plan_id_foreign` (`user_plan_id`),
  ADD KEY `reservations_route_id_foreign` (`route_id`);

--
-- Indices de la tabla `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `routes_data`
--
ALTER TABLE `routes_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routes_data_route_id_foreign` (`route_id`),
  ADD KEY `routes_data_calendar_id_foreign` (`calendar_id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_plans`
--
ALTER TABLE `user_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_plans_user_id_foreign` (`user_id`),
  ADD KEY `user_plans_currency_id_foreign` (`currency_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `disabled_days`
--
ALTER TABLE `disabled_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2359;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT de la tabla `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `routes_data`
--
ALTER TABLE `routes_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26258187;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `user_plans`
--
ALTER TABLE `user_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `disabled_days`
--
ALTER TABLE `disabled_days`
  ADD CONSTRAINT `disabled_days_calendar_id_foreign` FOREIGN KEY (`calendar_id`) REFERENCES `calendars` (`id`);

--
-- Filtros para la tabla `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`),
  ADD CONSTRAINT `reservations_user_plan_id_foreign` FOREIGN KEY (`user_plan_id`) REFERENCES `user_plans` (`id`);

--
-- Filtros para la tabla `routes_data`
--
ALTER TABLE `routes_data`
  ADD CONSTRAINT `routes_data_calendar_id_foreign` FOREIGN KEY (`calendar_id`) REFERENCES `calendars` (`id`),
  ADD CONSTRAINT `routes_data_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`);

--
-- Filtros para la tabla `user_plans`
--
ALTER TABLE `user_plans`
  ADD CONSTRAINT `user_plans_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `user_plans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
