-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 28, 2021 lúc 06:14 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_order` date NOT NULL,
  `total` int(8) NOT NULL,
  `payment` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `date_order`, `total`, `payment`, `note`, `id_customer`, `state`, `created_at`, `updated_at`) VALUES
(29, '2021-05-25', 6000000, 'COD', 'dfdsfdsf', 466, 0, '2021-05-25 14:04:29', '2021-05-25 14:04:29'),
(30, '2021-05-25', 257876, 'COD', 'dsfsdfas', 467, 0, '2021-05-25 14:05:53', '2021-05-25 14:05:53'),
(31, '2021-06-03', 1500000, 'COD', 'dfsdfsdfs', 469, 0, '2021-06-03 14:02:55', '2021-06-03 14:02:55'),
(32, '2021-06-03', 1510010, 'COD', NULL, 472, 0, '2021-06-03 14:05:33', '2021-06-03 14:05:33'),
(33, '2021-06-03', 1350000, 'COD', NULL, 473, 0, '2021-06-03 14:09:28', '2021-06-03 14:09:28'),
(34, '2021-06-03', 1500000, 'COD', NULL, 475, 1, '2021-06-03 14:19:24', '2021-06-05 06:44:25'),
(35, '2021-06-06', 1575000, 'COD', NULL, 476, 0, '2021-06-06 04:01:47', '2021-06-06 04:01:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(19, 29, 16, 4, 1500000, '2021-05-25 14:04:29', '2021-05-25 14:04:29'),
(20, 30, 19, 1, 90000, '2021-05-25 14:05:53', '2021-05-25 14:05:53'),
(21, 30, 12, 1, 55000, '2021-05-25 14:05:53', '2021-05-25 14:05:53'),
(22, 30, 13, 1, 112876, '2021-05-25 14:05:53', '2021-05-25 14:05:53'),
(23, 31, 16, 1, 1500000, '2021-06-03 14:02:55', '2021-06-03 14:02:55'),
(24, 32, 20, 1, 110000, '2021-06-03 14:05:33', '2021-06-03 14:05:33'),
(25, 32, 11, 2, 700005, '2021-06-03 14:05:33', '2021-06-03 14:05:33'),
(26, 33, 33, 30, 45000, '2021-06-03 14:09:28', '2021-06-03 14:09:28'),
(27, 34, 16, 1, 1500000, '2021-06-03 14:19:24', '2021-06-03 14:19:24'),
(28, 35, 16, 1, 1500000, '2021-06-06 04:01:47', '2021-06-06 04:01:47'),
(29, 35, 14, 1, 75000, '2021-06-06 04:01:47', '2021-06-06 04:01:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `created_at`, `updated_at`) VALUES
(466, 'Tuân', 'nam', 'tuantu20042010@gmail.com', 'quang thiện kim sơn', '0963388490', '2021-05-25 14:04:29', '2021-05-25 14:04:29'),
(467, 'tuan tu', 'nam', 'tuantu23041995@gmail.com', 'quang thiện kim sơn', '0963388490', '2021-05-25 14:05:53', '2021-05-25 14:05:53'),
(468, 'tuantu', 'nam', 'tuantu20042010@gmail.com', '76/7b đào trí', '0963388490', '2021-06-03 14:01:39', '2021-06-03 14:01:39'),
(469, 'tuantu', 'nam', 'tuantu20042010@gmail.com', '76/7b đào trí', '0963388490', '2021-06-03 14:02:55', '2021-06-03 14:02:55'),
(470, 'đồ  dùng gia đình', 'nam', 'tuantu20042010@gmail.com', '76/7b đào trí', '0963388490', '2021-06-03 14:03:59', '2021-06-03 14:03:59'),
(471, 'đồ  dùng gia đình', 'nam', 'tuantu20042010@gmail.com', '76/7b đào trí', '0963388490', '2021-06-03 14:05:07', '2021-06-03 14:05:07'),
(472, 'đồ  dùng gia đình', 'nam', 'tuantu20042010@gmail.com', '76/7b đào trí', '0963388490', '2021-06-03 14:05:33', '2021-06-03 14:05:33'),
(473, 'tuantu', 'nam', 'tuantu20042010@gmail.com', '76/7b đào trí', '0963388490', '2021-06-03 14:09:28', '2021-06-03 14:09:28'),
(474, 'tuantu', 'nam', 'tuantu20042010@gmail.com', '76/7b đào trí', '0963388490', '2021-06-03 14:18:23', '2021-06-03 14:18:23'),
(475, 'tuantu', 'nam', 'tuantu20042010@gmail.com', '76/7b đào trí', '0963388490', '2021-06-03 14:19:24', '2021-06-03 14:19:24'),
(476, 'sƠN', 'nữ', 'tuantu20042010@gmail.com', '76/7b đào trí', '0963388490', '2021-06-06 04:01:47', '2021-06-06 04:01:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2021_05_13_194156_slide', 1),
(5, '2021_05_13_194619_users', 1),
(6, '2021_05_13_194856_type_products', 1),
(7, '2021_05_13_194914_products', 2),
(8, '2021_05_13_194929_customer', 2),
(9, '2021_05_13_194947_bill', 3),
(10, '2021_05_13_213341_billdetail', 4),
(11, '2014_10_12_000000_create_users_table', 5),
(12, '2014_10_12_100000_create_password_resets_table', 5),
(13, '2019_08_19_000000_create_failed_jobs_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` float NOT NULL,
  `promotion_price` int(8) NOT NULL,
  `new` tinyint(3) UNSIGNED NOT NULL,
  `unit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `new`, `unit`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Bảng di động 2 mặt', 1, 'được sản xuất dựa vào máy móc hiện đại nên rất đẹp và bền', 1500000, 900000, 1, 'cái', 'bang1.jpg', NULL, '2021-06-06 04:20:15'),
(14, 'Bìa Hồ Sơ 60F', 2, '', 900000, 75000, 1, 'tập', 'hinh19.jpg', NULL, NULL),
(16, 'Bảng Thông Tin', 1, 'Tại các cơ quan hoặc các trường học, việc cung cấp thông tin cho mọi thành viên là điều cần thiết và quan trọng. Nhưng quan trọng hơn là sự tiện dụng trong việc sử dụng và bảo vệ thông tin. Với bảng thông tin di động có mái che và kính lùa bảo vệ, sẽ thật đơn giản và dễ dàng với bạn.', 1500000, 0, 0, '', 'hinh14.jpg', NULL, NULL),
(17, 'Bìa Còng Ông', 2, 'Tiết kiệm không gian khi có thể lưu trữ được số lượng lớn tài liệu Tiết kiệm không gian khi có thể lưu trữ được số lượng lớn tài liệu  Còng có chức năng mở 2 bên Nhiều kích cỡ đa dạng Chức năng tay cầm giúp dễ dàng lấy hồ sơ ra từ tủ Sức chứa đến 1500 tờ  Bao gồm 2 giấy sóng lưng có 2 mặt để phân loại tài liệu', 95000, 12500, 1, 'cái', 'hinh31.jpg', NULL, '2021-06-06 05:40:58'),
(19, 'Bìa còng Flexoffice 50F4 FO-BC13', 2, '', 90000, 0, 0, 'tập', 'hinh20.jpg', NULL, NULL),
(20, 'Giấy Photocopy', 3, '', 110000, 0, 0, 'tập', 'do-dung-van-phong-pham.jpg', NULL, NULL),
(24, 'Dao Rọc  Giấy', 3, '', 15000, 0, 0, 'cái', 'cong-cu-dung-cu-van-phong-7.jpg', NULL, NULL),
(25, 'Đồ Kẹp', 3, '', 5000, 2500, 1, 'cái', 'cong-cu-dung-cu-van-phong-4.jpg', NULL, NULL),
(26, 'Kệ đựng hồ sơ', 3, '', 55000, 30000, 1, 'cái', 'cong-cu-dung-cu-van-phong-8.jpg', NULL, NULL),
(27, 'Thùng Lau Nhà Matsu 360', 4, '', 155000, 0, 0, 'cái', 'cis1536310431.jpg', NULL, NULL),
(28, 'Thùng Lau Nhà Matsu 360', 4, '', 155000, 30000, 1, 'chai', 'nuoc-tay-rua-da-nang-sumo-1.jpg', NULL, NULL),
(30, 'Chổi nNhà', 4, '', 25000, 0, 0, 'cây', 'choichataucaumin-4721_240x240.jpg', NULL, NULL),
(31, 'Cước  Nhôm Chà Nồi', 4, '', 10000, 0, 0, 'cây', 'hinh9.jpg', NULL, NULL),
(32, 'Chổi Lông Gà', 4, '', 100000, 0, 0, 'cây', 'hinh23.jpg', NULL, NULL),
(33, 'Bút  Dạ  Quang', 5, '', 50000, 45000, 1, 'cây', 'but-da-bang-711944f15078.jpg', NULL, NULL),
(43, 'Bao Thư', 6, 'Một TẬP 10 cÁI', 35000, 15000, 1, 'cái', 'th.jpg', NULL, NULL),
(45, 'Gôm Pentel lớn ZEH 05', 5, '', 50000, 0, 0, 'cục', 'hinh22.png', NULL, NULL),
(56, 'Bao Thu', 6, '', 15000, 0, 0, 'cái', 'cong-ty-in-bao-thu-hcm.jpg', NULL, NULL),
(63, 'Bút Chì Và Tẩy', 5, '', 7000, 1500, 1, 'cây', 'hinh44.jpg', NULL, NULL),
(70, 'Bàn Phím 123', 7, '', 700000, 550000, 3, 'cây', '1606__linh_kien_may_tinh_ban_phim_e_blue_combo_ela', NULL, NULL),
(72, 'Bút  Dạ  Quang', 7, '', 30000, 0, 3, 'cây', 'hinh51.jpg', NULL, NULL),
(78, 'Sổ Lò  Xo', 6, '', 55000, 0, 0, 'tập', 'hinh25.jpg', NULL, NULL),
(112, 'Bút  Dạ  Quang 3D', 5, '', 20000, 15000, 1, 'cây', 'but-may-nhat-ban-but-mau-ma-dep.jpg', NULL, NULL),
(113, 'Bút  Dạ  Quang 2D', 5, '', 30000, 15000, 1, 'cây', 'qua-tang-but-muc-preppy-nhat-ban.jpg', NULL, NULL),
(114, 'Bao Thu 2D', 6, '', 5000, 1500, 1, 'cái', 'mau-bao-thu-11.jpg', NULL, NULL),
(1136, 'Bảng Thông Tin Ghim Khung Gỗ SH4', 1, '- Có thể kết hợp giữa bảng ghim và bảng viết bút dạ hoặc bảng từ viết phấn   - Kết cấu vững chắc nên rất an toàn   - Thiết kế sang trọng, thẩm mỹ tăng tính mỹ quan cho không gian khuôn viên văn phòng...   - Bảng thông tin Là sự lựa chọn hàng đầu của các văn phòng hiện đại', 900000, 0, 0, 'cái', 'a6e8bd55-a.jpg', '2021-06-06 04:51:24', '2021-06-06 04:51:24'),
(1140, 'Bản To', 1, '– Mặt bảng: mặt từ tính màu  trắng viết bút dạ có dòng kẻ ô ly mờ 5x5cm, chống lóa, dễ viết dễ xóa, không để lại vết sau khi xóa, hít nam châm mạnh giúp ghim được giấy tờ, thông báo, tranh ảnh,..', 120000, 500000, 1, 'cái', 'bang3.jpg', '2021-06-06 06:22:52', '2021-06-06 06:22:52'),
(1141, 'Bảng Sinh Viên', 1, '– Xuất xứ mặt bảng: được nhập nguyên cuộn từ Hàn Quốc do công tập đoàn Dongbu Steel cung cấp, có đầy đủ chứng chỉ nguồn gốc xuất xứ mặt bảng ( CO – CQ)  – Mặt bảng: mặt từ tính màu  trắng viết bút dạ có dòng kẻ ô ly mờ 5x5cm, chống lóa, dễ viết dễ xóa, không để lại vết sau khi xóa, hít nam châm mạnh giúp ghim được giấy tờ, thông báo, tranh ảnh,..', 750000, 0, 0, 'cái', 'bang2.png', '2021-06-06 06:24:08', '2021-06-06 06:24:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'hih4.jpg', NULL, NULL),
(2, 'hinh3.jpg', NULL, NULL),
(3, 'hinh2.jpg', NULL, NULL),
(4, 'hinh1.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Bảng Văn Phòng', 'Chuyên cung cấp các loại màn hình chiếu ,bảng kính,bang từ ...', 'bang-trang-khong-khung.jpg', NULL, NULL),
(2, 'Bìa Hồ Sơ', 'Thường  dùng cho các doanh nghiệp ', 'hinh2.jpg', NULL, NULL),
(3, 'Dụng Cụ Văn Phòng', 'Mỗi vật dụng đều có một vai trò riêng nhất định và giúp nhân viên làm việc tốt hơn', 'dcvp.jpg', NULL, NULL),
(4, 'Đồ  Gia Dụng', 'Đồ gia dụng là những vật dụng các gia đình hay  thường dùng:chổi,ky hót rác,chất tẩy  rửa...', 'ddgd.jpg', NULL, NULL),
(5, 'Bút Viết -Gôm Tẩy', 'chuyên cung  cấp các loại  bút bi bút xóa ,tẩy..với những thương hiệu lớn', 'tbx.jpg', NULL, NULL),
(6, 'Sổ-Tập-Bao Thư', 'chuyên  cung cấp các loại sổ tập và chúng từ thường dùng   trong cuộc sống', 'null', NULL, '2021-06-06 05:29:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tuantu', 'tuantu20042010@gmail.com', NULL, '$2y$10$mz6EOOdmMelLlWJvGv/W9eAhDnA5838tGvtblVrp.W9EdgtKsK2/y', NULL, NULL, NULL),
(2, 'react js', 'tuantu10000@gmail.com', NULL, '$2y$10$YFTJeQIe3c13MYueNyMf3.PM5WIBMkMQKboByoWSu3/37bjGnTHJK', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1142;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
