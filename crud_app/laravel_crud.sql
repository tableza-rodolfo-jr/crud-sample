-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2023 at 05:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(43, '2014_10_12_000000_create_users_table', 1),
(44, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(45, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(46, '2019_08_19_000000_create_failed_jobs_table', 1),
(47, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(48, '2023_07_13_184833_create_sessions_table', 1),
(49, '2023_07_14_222707_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0eCvmCSwJjFAQpqDcgRcw5QN6V8y5smySKPicAGE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjVpVUpkSmVjOVpSZU5ZNXEzaGdvVmJ2bzFiM083MllHT1RxbndEeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689383171),
('0MKwVyjBYGntkr27oMFtzT7xtiuunYvfWHT47bbt', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUs0Z0wyNThBNWJIQU1JN28zbTRZVFJSWHBaaG9CNkFRQmZvZWZqdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689384370),
('387oIZTS9zJczd6HDnoRIuUv2xHDLo9mgVd5QsBr', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkZhVmhoeXE4aFFhTUpUVUJDTkZCTWxPV3BGcUthdVJ5VHc0dDdrWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389163),
('3PEXEVrUfgCJ5N15Ae9nj6eG8lfdRjfZF8O17yR0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVIzYmxhS2thdndlRG0xeUp6WGNQOXE0dkViaWk3UnkwWUlqZjhEdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390141),
('4xDG6SjIWl7P2UY4wkOHxotuEdCQz7bGmZ2qwooY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEhXSk51R2ZFcVBVQWxQSFpiTW9lM2tiRmgxYkRaV2JRSmJPTzFXQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390617),
('4xRHcttkXc9JyVcTJKZzdrHFpTJ5WnpkFTegVbYr', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajJ2QVJiQnNlcDJUOHkzZkFDOUtPQ3p1Zmdyeks0VmNRR0x4MGRHbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390149),
('525ArtenqQfcXZMdExkD9VuaV7ffP8fM4EPGT3sd', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVZOS3Z2Y3pzMGZCUmU1WnhKZFd1QVU4YmhTVkliWktQTFdicWUzRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389507),
('5HeGaco8IV187A1CelaxYHPpCmwQtBqIs0sGpWt6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFpUUHZvaVVzSmtHUmRoeUlVV0lVZWtPQ1Zzc0JPQ09jN2tOd3JyUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689383182),
('5YOxH5PtoLceclZTAArB1ah3q2PizZQDUshZkjon', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXp0eDdZN2dRUkVlSXZtV1Frb0FKaFNvZHp3WlI4UTRpVXdZRE1lTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388535),
('6cDDfMLBWwXmYyWgnsnsjgT33KKffo8tTKQw5P4q', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzdTRDg1SXlma01RSmYwVHpMTlNPa1hRdzBtY0FVaWdTUFhNYUZTdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390853),
('6ztrQLfH2wIGJsvw5lsockrxGWsDjQTajx2eEQct', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlV0eUgyT080SEZ0VHdtUVkyMXZXcEV1MWdOclVNRHN3NFlCdERUZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689384797),
('7i26GA8sw9K202f4sAtAHCwwbRw2H8ox9xQ6yP3W', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTlHeFJhQW1GeklhWkhjdktLQkJSOWFEUm84OURxZTJTcWhFQjh6cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689384637),
('7M1NAPZQERw2Vi8u4dcvAZBhdiV4wiUNprklcfQc', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGNhdUFZZkRaTkZBWWVvc1V4RGNNckJUcHY1RzBhYlhYSnZkTGwydSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689383187),
('9ls8jl0lJ96VYOmPJMK1WMoqpHutA2lPSCFnJ3xS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTZOeE4yZTVSMlFHT3lqVGtleGRNaFdGdUNib09vUmlOMTFTeUpIdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689383417),
('9Q5XIDSyCfEvBf5zLAfnJltGMXyEgsEigvDwFUQb', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTJDQmdlbUg5VVNhVmpRSW9ENkFtU2x3cU9zcTQ4ODFMYkRmNUUyYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390215),
('9VoHOyVHUSUjj7fp5BcgBJ5lQBiz5rI3yxSlSgw8', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTVsbm1qR1NZaTZ1M0JCNFJ5ejY0dTJOdVhrM1lhZ1kzS0U4a1BkUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388444),
('ak9AK8rEKDuecJfsXckxILymr55Sb0xypdlgvPn6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHVVZFdFcXlyeGJPc2pBVTczRkl0VlpBN2xoZWRWc2NuTFNLZVozTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689385202),
('aobva5tEzUOYMC5SCjJExgnnKRtasbuxudQK1XsZ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMU5FYjJnWGNmbXM5M2RVU25GTGptckhYQjBHUnZYYmU0c1dZbVFrbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50LzIiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1689385243),
('bcfrhL4eikW5TOy7QdGBpPJuPFqH1oKITVCqwqxi', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmQ3T21qUm9XOFJlMklGdURVM09YRUlkdERFbndNVHoyZHU3bXBWZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390469),
('CBJVg78wRVKmbnjd5QKyOjvFi1YFwoYyyZrHHt5y', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVhDZFpNajJES2g2TDJ6Zzk4Y2hRSnBNdG1KaEZBV3hQeks4NDlCWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389303),
('dbwrAnqjpQqc5AO45zaogdQHZGjnbGWNLskxRYAo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTVLSEdZNXlUMFJ4bE9oMGdLVndnc1c0NlFPS1IwcUVOV0NkWXh1TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390833),
('dPeceDXemBLopMYInHCKYUjepjFtioDjPpNjMBAm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHREU1Zya09mVHFpSXN2YnV0UEJ6MW5QY3A5c0hoYngzeHF6SWVaYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689387934),
('e64ZUvq05TozTYneU9NtUQh7W0tbADo96Njqo5Kb', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2lzVmxqaUltaWRCRHQzSTlrOXR1blR2Vnd5eEIxQ0NSZkJHM1VGbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389027),
('eGuy9kuK3OLe8ztXBvc1vvBTQ7xDhjt1r4lQ3u6y', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHVvcmVTRnJ4WGl6MnNSbEl4a1FiMkxQdGxNeVBZZXpZYmFZM3FSSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689383411),
('EP25n2MsP5ncxhCGIcNlMxnQWNZgpDt0Nc2iH5q8', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjZRZ1NuU1BoNFppTDVMMFloRE50TGFHTG9jTG00dVlFWnNiY3NvQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389250),
('FcUXqkjDF2iFLWOnX0bCdF3oC9SGzoQeIDQ0Ts55', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0lBSVF5bE16ZUJmRHJYVUNPYWtBNDE0QWVTYk1KVXF3aUJzN1VVaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689383528),
('FEUJiBTIT32gRk88oxW9fslbAL1c2t1IKhX2DXcp', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzIxazdhaXV6SnRURlNiSTdReGl1WGFnVmJ0OWw4WTRRMVhIc2xOWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388134),
('g4Q64rMO9MHlLplT6f5x5UTgtC9cva3Fq4KB4mDN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDJ6RVk3M2dRbGVoWW1EYkYyS3I1V2lJdHJxOTE0dGNodHVuOUR4UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389009),
('GHL2YROe6mb5ptiRnLIa3FIy1uVh3elSrTqDBwHA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkttZEZ2aXhLaHBIemZTcWJKSkVqV2NsbUFvQ3cyak5Fc1BkcjZyZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389149),
('gTKmxBwJ03t1EWog3WPftNInZZqnuuSObFdC9Z3n', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHBJOVMyMzMxaXBFdldjbTdqZE5QeTZqYkExTk1OeVhtTnBJU2tKOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389734),
('GuUAa8uGfC1ejf9Dj8Kd3aho58pD7w78Mo1k8Hvt', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnQxS0hiNTY2cm5Pb1dOckpaaFkxS1p6VFZ4YjF1NFB5akQ1OXZzQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388175),
('HWeK1QUHNI0PH7ADyI06bfIfYt4or67Reev5feky', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjhVMG5HTEduWDF5S2RHSXVsbFh5ZXpTUmxqUTJkYjFWcXhPU2RwNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389094),
('iEwjOolOAHDe1zR6vkDh7JSuAP0tWhjHI0WrSWnJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHJhYWpPOEFEUkhrdkdTcnBPUk1JYk1iek5MSXMzZjZqdzBBNWQ2MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689387839),
('InVQBao4QskhISFenBOJTkWOq16hW4VgikFKYHXq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzJhbDJzQXI2bFN3ZE9nSEJMc0RKN056M1Y5U2hSVzZFeXNuSXBoeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388065),
('iyXSqn6An7IMCkKNaE21GjCNtWdaT2ctewI1BK8u', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnFEU2o1Q0N4SkxTeE9PZGQwdUZWQjBrYzY2bThYMGVhd1JpTTNRSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389310),
('IzvBUbCC3jRtRpepPa0Ar4H3XPkbxWKvkpurStv4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0tpVGtBUVMzSmVQV1hpd29OY3VEYUdqSnJQQWpPdkdmYnA2Z2NWRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689384995),
('J3qRasUHVicX1Gxe0Tte3FB4vv9uCiDvA3qNE9Cu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1F3VnhJNGpYSXZFRDRSeEN1cVkyaVBNMVc0aTNiRXQ5SXY0OHRVeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388123),
('KHgBZHenxWz9IVZjB83XBUQVhxBvtRENvNcnd5st', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmF3UXl0NDdVYjdKOG5uMUdZN1F1ZlZyb3h6ZWFYRHFWaGFvR3drVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389490),
('kiCPE1NZlnhHGb6BwDOplVq2MJvGdCiP0UrIRYHs', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0RyZ0VlcFVwNklhcFlqWnI0UTFXMkE2bVZMYm5URHZMQXdOb25DMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689383148),
('kXVE1QVwudAhZDWmujyWtofOfoawd6ySoEomVKPX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRzJpMDZ1M1hyeUFzeW5PTW03OXVsVW5jZVdkRjZraDd6cEVnVnczMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWRpcmVjdCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1689390842),
('l9TwwUdeOSnDgVYGwDL7yqYxG29MAueY6jUFQLjG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUsxYm9lZ0xaZ0NpVHJQS2NtSmVVZ2tVYnFPOFZjNVk2a3NrNDFJTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689383637),
('ljw4mkN372bcEuKbP6exODNEe6lTodohDYaJn62a', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFhZUTFTWmxOYzZwQlhaZmRwMXQ5WDZCeWkyVnJCN1QxMXZPNzdhSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388413),
('mqjBCjnWhEr8RJGC2sE8qjws834CjgJablsAoyTN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGxUT1VXeWZzUEREQXVnUVdWMVZRMXIxVnVDbW1ZWjZNSk9SNVQwNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689385106),
('n9YlvwFaB0wi1HanWayZ8TbY3r7y6kBZ8QnKnYjc', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicW9nRDZ2eWxidElJVW5GNWZjRXVqSUJDVkIzZ0RpT0FNWVM1TEV6YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388749),
('Nfqak8qx1jH9f3HbZTklvrL5EbeQn3dSw6H6FriY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVFSWW42N2NWSUpYZ0xBdzBWS1l4cGpiNDVIVFhzTzhyNFRYc042SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388573),
('NLctgCAHgrU2HfrTlbRq0LYehLGp8E8T95oExOUK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDAwWEVMN1RjMnZHVndzV004WDV2YUpUS09hVTVPZWV4cGp2SEVNeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390073),
('no0F23bZiftU1POSw0ghdZc4BBafhiZePydsEbmF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnY4cWJlYWREd0hLNHZrNGlkbG84M1hCTFlHQk8zSzhkYXFHODI4UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389687),
('NVlOaZPcpnExfJ4uq46C77rwRU2EKdZyZa1LHozB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDdBMHJHdE44U0tPazNLZEtFVjJRTkVSMmg1S3RIdDB0dHVOd3hxTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689387886),
('nWLM4e0mJohvDEFzdI4sR4sLxZE8UOLe5QEgoN1x', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEQ3MW5CTlNrM2dkY0tBYlZCZXlwckJZS2dsaGJzVUhPZkJMbnZINSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689383513),
('OeDxEZDvIIL9Cc7PzZAQSqbRQwA31dKbZkDNW2Vi', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkZsR0RZcFViNjlKOWVkSEFaR0NPMzd2cFhBcE56R2tLTVZCaU1PTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390783),
('OJJBhRcFhxr2GutD3oqtpoij867yw7zr54aTPK7U', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVZhbFo5REJjSTkzVmVqWVBwaXJFb0VHMGxnRDdMcmhDcmRjN2hUaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689387992),
('p1Y3bVHq8QvXwTu0cvGvUMmLE5lemamxoHEFtRd6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0JUSlpUNEdnUGZINElRelVOTWI2eGRFVnFvS1NZQzlwaTlJNzJ0byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389848),
('q0y7gNoKgQAzefUCvuzdXPo6j67VA8CNTvs6SY0d', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0JqRVJ2TEtJWkpnVXB5VGlzMnRNWlk1cjhJblVQSUM2WmVJeVFsTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389047),
('q6x2azmVd3aojAfE1oRwIArtSyEeipOHLBsv9qHh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3l2cXB4d1Z1Qnp4eEoxWlM2TkF5NVJUajRUNmxOZDdSNTdaUm1JbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390013),
('qdC6VqHyNIY7D0MJanhgtVNhGuWjtLxMfEcMApUH', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUN3NUhuRUxuZjR2bU5sdlVoWXVhalY2TEkzSHJVV2pqN3JuYmpUcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390327),
('qwCiodAhUKrnq6Ys2YIQhXv4uWlWJBH6pfcEIlOu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVFPc3ByVDlKNDlPZmpsM05lN3dpNXoxTkRNWXpvQXJMTHF5Z3FrdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390204),
('RD2qOB5Paps3upGc3nziCKgRhymP7uqjZf2JTNA0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGptTUozUWVOS1E3V0NJcmI2N3dCSXB0QXM4Qk14bHBEUHhObVN1aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389587),
('RmH8bWtoIqDGOgqYXirA1oOtQpBbNnWkaM6gGjRE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjlZdktieWc2V2lrREFpa0I0dGcza3cxbnFTRlJjSjZsWk1EYUJBeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689383748),
('SdxMColc7WKwhn2TeCylmlRHx12MVZMRs6zqShYp', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1k0amFJalJ1TnBDMUxpNnFkdXFaakk2V0w5SlZBWnp5UkNvZGNlYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388186),
('vhwLnl3a0sAsenjmqg2olg7ZMInpRzQa46P89WmA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDl6bkpYQjZ0MXB0MUpVNkFka2RHTHZIV1BYbDJtWGZYeDN0UDR5SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389837),
('vP3iYugdM6iEE20glKOQB2XNnohFDnQVFXjVTgZ3', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlp2bk14R3g5VjBJTE1DN3g5N2RVemJVUEg3Z1I5a0ltVGJKYllnYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689389416),
('vXp0hEYfy0ZNl9XfVda40S2c58hBODF6z6juEAsM', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXh0ckdZR0NUNGxTOW5pMlprRXNWVU1PdjE4TzY1OTVQRUZjclRyWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390774),
('wGa2AcnahIyxHa6wxroWOPTITAbNtAP5EvZhD5UU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjZ2WGdUcHNDZzBjQ2VpRGcwVVdCd3FBTHRpSGpnUEFtVmVBTHk0byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388319),
('WmNDsgqOmxvKNtoQOVkYo9j6dEoe8thVgh7kMxS9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGxzWDVseU9xZEo0V0p2NHZmWThlWjF5Q3FFWnd1TWZJN09EQjNIRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390509),
('XdPeQh6Pb2yAFhHgXlNyfiQQgYQyTPzdyNok3gvn', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGw2c1QyekJTSlZlamg0MzltS2NUT09xR1daMjRJM0NITWU2NGtTOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390494),
('xShHSwOUah1c70PGtfk01aTjxmZisckTSTgyjobh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmpYTVBQOWJkWEkyRDM4ejB5NVRJZ0tEZmk0UzhjZ2RWa0x0blNnNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689390689),
('yqmSexD8QmBnph3LX4Eue4XPlrKqV6zvPK9Q8NHH', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjNadlVzQkM5aGJrVkpuS0o5ampINVRxZFRYT0puc1QzdGNlY3BkMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689383720),
('Z54hgFDkRdFqmwHE4VLiRijk0PLZjZCnM6Uktlwq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2hmNmo2NDdMMGN1emNYQ3NNcExRak1nd0hqUE5HTXUwZm5NenlVZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689388272),
('zHvTn54TyUygMb90Hc4uCqGmNRGntza7fwfjtsEJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHl0ZjBxNGN4SmpSQTFQbkc2R2FleFRBbDR3bm1yb1RiY21FUDZNciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1689384821);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fullname`, `email`, `phone`, `course`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'mail@email.com', '090909090909', 'BCM', NULL, NULL),
(2, 'Jane Doe', 'email@email.com', '9090909090', 'BAY', NULL, NULL),
(3, 'zanegwaps', 'zanecj@yahoo.com', '0910100100', 'qweqwe', '2023-07-14 15:50:40', '2023-07-14 15:50:40'),
(10, 'caitlyn', 'caityja@yahoo.com', '1111111111', 'bast', '2023-07-14 19:13:23', '2023-07-14 19:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'adminzane', 'test123@gmail.com', '1', '9756977141', 'caloocan', NULL, '$2y$10$awWufECm6f0YtdWJVaWwb.RS8IVvP5ogbDgccqX1bkTPMwkuayH2G', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-14 14:51:13', '2023-07-14 14:51:13'),
(2, 'dummydata', 'ggg@yahoo.com', '0', '9060322595', 'asdasdasds', NULL, '$2y$10$YwW/aIuyh0xO6c3HrfDfMeXGaFXiCO3F7U4K5NeRKs/ZoMxz.Jmt2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-14 14:51:48', '2023-07-14 14:51:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD UNIQUE KEY `students_phone_unique` (`phone`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
