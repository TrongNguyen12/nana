-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 19, 2019 lúc 07:09 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nana`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `name`, `image`, `account_name`, `account_number`, `account_branch`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Vietcombank', '1555465792_vcom.png', 'GCO', '6657835973', 'Hà Nội', 1, '2019-04-16 18:32:54', '2019-04-16 18:49:52'),
(11, 'Viettinbank', '1555465783_vtin.png', 'GCO', '6865865', 'Hà Nội', 1, '2019-04-16 18:33:23', '2019-04-16 18:49:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `image`, `parent_id`, `type`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(1, 'Trang điểm', 'trang-diem', NULL, 0, 'product_category', NULL, NULL, NULL, '2019-04-17 00:35:38', '2019-04-17 00:35:38'),
(8, 'Trang điểm mắt', 'trang-diem-mat', NULL, 1, 'product_category', NULL, NULL, NULL, '2019-04-17 00:43:46', '2019-04-17 00:43:46'),
(9, 'Trang Điểm Mặt - Face Makeup', 'trang-diem-mat-face-makeup', NULL, 1, 'product_category', NULL, NULL, NULL, '2019-04-17 00:49:31', '2019-04-17 00:49:31'),
(10, 'Trang Điểm Môi - Son Môi', 'trang-diem-moi-son-moi', NULL, 1, 'product_category', NULL, NULL, NULL, '2019-04-17 00:49:44', '2019-04-17 00:49:44'),
(11, 'Dụng Cụ Trang Điểm', 'dung-cu-trang-diem', NULL, 1, 'product_category', NULL, NULL, NULL, '2019-04-17 00:49:57', '2019-04-17 00:49:57'),
(12, 'Kem lót mắt', 'kem-lot-mat', NULL, 8, 'product_category', NULL, NULL, NULL, '2019-04-17 00:50:47', '2019-04-17 00:50:47'),
(13, 'Phấn mắt', 'phan-mat', NULL, 8, 'product_category', NULL, NULL, NULL, '2019-04-17 00:51:10', '2019-04-17 00:51:10'),
(14, 'Phấn Nước - Kem Lót', 'phan-nuoc-kem-lot', NULL, 9, 'product_category', NULL, NULL, NULL, '2019-04-17 00:51:32', '2019-04-17 00:51:32'),
(16, 'Son Thỏi - Lipstick', 'son-thoi-lipstick', NULL, 10, 'product_category', NULL, NULL, NULL, '2019-04-17 00:52:29', '2019-04-17 00:52:29'),
(18, 'Dưỡng ẩm sâu', 'duong-am-sau', NULL, 11, 'product_category', NULL, NULL, NULL, '2019-04-17 00:53:12', '2019-04-17 00:53:12'),
(19, 'Dưỡng Cho Da Nhạy Cảm', 'duong-cho-da-nhay-cam', NULL, 11, 'product_category', NULL, NULL, NULL, '2019-04-17 00:53:25', '2019-04-17 00:53:25'),
(20, 'Son Thỏi', 'son-thoi', NULL, 10, 'product_category', NULL, NULL, NULL, '2019-04-17 01:59:10', '2019-04-17 01:59:10'),
(30, 'Nana', 'nana', '1555555165_logo.png', 0, 'brand_category', NULL, NULL, NULL, '2019-04-17 19:39:25', '2019-04-17 19:39:25'),
(31, 'Etude House', 'etude-house', '1555555247_b6.jpg', 0, 'brand_category', NULL, NULL, NULL, '2019-04-17 19:40:47', '2019-04-17 19:40:47'),
(32, 'Doctorslab', 'doctorslab', '1555555268_b4.jpg', 0, 'brand_category', NULL, NULL, NULL, '2019-04-17 19:41:08', '2019-04-17 19:41:08'),
(33, '18 Herbs Organics', '18-herbs-organics', '1555555298_b8.jpg', 0, 'brand_category', NULL, NULL, NULL, '2019-04-17 19:41:38', '2019-04-17 19:41:38'),
(34, 'Dr.Haiian', 'drhaiian', '1555555337_logo.png', 0, 'brand_category', NULL, NULL, NULL, '2019-04-17 19:42:17', '2019-04-17 19:42:17'),
(38, '3ce', '3ce', '1555555851_logo.png', 0, 'brand_category', NULL, NULL, NULL, '2019-04-17 19:50:51', '2019-04-17 19:50:51'),
(39, 'Trang điểm - Make up', 'trang-diem-make-up', '{\"image\":\"1555660032_anh1.png\",\"imageHV\":\"1555660032-anh1-2.png\"}', 0, 'product_category', NULL, NULL, NULL, '2019-04-19 00:47:12', '2019-04-19 00:47:12'),
(40, 'Dưỡng da - Skin Care', 'duong-da-skin-care', '{\"image\":\"1555661051_anh2.png\",\"imageHV\":\"1555661051-anh2-2.png\"}', 0, 'product_category', NULL, NULL, NULL, '2019-04-19 01:04:11', '2019-04-19 01:04:11'),
(41, 'Thời trang nữ', 'thoi-trang-nu', '{\"image\":\"1555661171_icon7.png\",\"imageHV\":\"1555661178-h2.png\"}', 0, 'product_category', NULL, NULL, NULL, '2019-04-19 01:05:28', '2019-04-19 01:06:18'),
(42, 'Mẹ và bé', 'me-va-be', '{\"image\":\"1555661251_icon8.png\",\"imageHV\":\"1555661251-h3.png\"}', 0, 'product_category', NULL, NULL, NULL, '2019-04-19 01:07:31', '2019-04-19 01:07:31'),
(43, 'Túi xách phụ kiện', 'tui-xach-phu-kien', '{\"image\":\"1555661336_icon9.png\",\"imageHV\":\"1555661365-h4.png\"}', 0, 'product_category', NULL, NULL, NULL, '2019-04-19 01:08:43', '2019-04-19 01:09:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `confighome`
--

CREATE TABLE `confighome` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `confighome`
--

INSERT INTO `confighome` (`id`, `type`, `content`, `created_at`, `updated_at`) VALUES
(1, 'ads', '[{\"name\":\"\",\"image\":\"public\\/assets\\/images\\/bn1.jpg\",\"url\":\"#\"},{\"name\":\"\",\"image\":\"public\\/assets\\/images\\/bn2.jpg\",\"url\":\"#\"}]', NULL, NULL),
(2, 'site_info', '{\"site_logo\":\"1555647111_logo.png\",\"site_favicon\":\"favicon1555647122-b2.jpg\",\"site_title\":\"NANA STORE\",\"site_description\":\"M\\u1ef9 ph\\u1ea9m nana\",\"site_keyword\":\"m\\u1ef9 ph\\u1ea9m, cosmetic\",\"site_address\":\"T\\u1ea7ng 8, T\\u00f2a nh\\u00e0 TOYOTA Thanh Xu\\u00e2n, Thanh Xu\\u00e2n\",\"site_email\":\"info@gco.vn\",\"site_phone\":\"(023)7 309 8850\",\"site_hotline\":\"0923 444 5670\",\"site_robot\":null,\"site_google_analytics\":null,\"copyright\":\"@ B\\u1ea3n quy\\u1ec1n thu\\u1ed9c v\\u1ec1 GCO\",\"codemaps\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3724.774849760307!2d105.82069491482022!3d21.00166049407897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac8429ac32cb%3A0x592668996cef591f!2zMzE1IFRyxrDhu51uZyBDaGluaCwgS2jGsMahbmcgVGjGsOG7o25nLCDEkOG7kW5nIMSQYSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1555649490242!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0\\\" allowfullscreen><\\/iframe>\"}', NULL, '2019-04-18 21:51:41'),
(3, 'social', '{\"facebook\":{\"name\":\"Facebook\",\"url\":\"www.facebook.com\"},\"instagram\":{\"name\":\"Instagram\",\"url\":\"www.Instagram.com\"},\"youtube\":{\"name\":\"Youtube\",\"url\":\"www.youtube .com\"},\"google_plus\":{\"name\":\"Google Plus\",\"url\":\"www.googleplus.com\"},\"skype\":{\"name\":\"Skype\",\"url\":\"www.skype.com\"},\"twitter\":{\"name\":\"Twitter\",\"url\":\"www.twitter.com\"}}', NULL, '2019-04-18 23:52:32'),
(4, 'other', '{\"header_recruitment\":{\"content\":\"http:\\/\\/gco.vn\"}}', NULL, '2019-04-18 21:29:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `custommer`
--

CREATE TABLE `custommer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `province_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `custommer`
--

INSERT INTO `custommer` (`id`, `name`, `image`, `email`, `phone`, `job`, `address`, `province_id`, `district_id`, `content`, `type`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Nguyễn Minh Hòa', '1555469145_10.jpg', NULL, NULL, 'Diễn Viên', NULL, NULL, NULL, '<p>Những chiếc jumpsuit lu&ocirc;n tạo sự thoải m&aacute;i mỗi khi đi chơi hay đi dạo c&ugrave;ng người y&ecirc;u hay đ&aacute;m bạn b&egrave; th&acirc;n quen.</p>', 'cm-customer', 1, '2019-04-16 19:37:26', '2019-04-16 19:45:45'),
(11, 'Nguyễn Minh Hòa', '1555469125_11.jpg', NULL, NULL, 'Diễn Viên', NULL, NULL, NULL, '<p>Những chiếc jumpsuit lu&ocirc;n tạo sự thoải m&aacute;i mỗi khi đi chơi hay đi dạo c&ugrave;ng người y&ecirc;u hay đ&aacute;m bạn b&egrave; th&acirc;n quen.</p>', 'cm-customer', 1, '2019-04-16 19:39:03', '2019-04-16 19:45:25');

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
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_04_16_041024_confighome', 2),
(7, '2019_04_16_083419_post', 3),
(8, '2019_04_16_100046_bank', 4),
(10, '2019_04_17_015515_custommer', 5),
(11, '2019_04_17_025331_Slider', 6),
(13, '2019_04_17_094646_product', 8),
(14, '2019_04_17_064612_category', 9),
(15, '2019_04_18_043731_product_category', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `content_short` text COLLATE utf8mb4_unicode_ci,
  `content_main` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `name`, `slug`, `image`, `content_short`, `content_main`, `type`, `status`, `parent_id`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(1, 'Sahana - Mỹ phẩm từ thiên nhiên', 'sahana-my-pham-tu-thien-nhien', '1555475735_slider.jpg', '<p>Hoạt động trong lĩnh vực l&agrave;m đẹp v&agrave; chăm s&oacute;c sức khỏe, C&ocirc;ng ty Sahana lu&ocirc;n ch&uacute; trọng đến việc x&acirc;y dựng h&igrave;nh ảnh Tin Cậy &ndash; An To&agrave;n &ndash; Chất Lượng trong mắt kh&aacute;ch h&agrave;ng. 1</p>', '<div class=\"text-center\"><img title=\"\" src=\"http://localhost/hana/backend/storage/app/public/assets/images/banner2.jpg\" alt=\"\" /></div>\r\n<h2 class=\"s18 medium about-stit\">Sứ mệnh 1</h2>\r\n<p>Với bản chất l&agrave; một c&ocirc;ng ty chuy&ecirc;n ph&acirc;n phối c&aacute;c giao thức l&agrave;m đẹp hiện đại v&agrave; tiện dụng từ c&aacute;c cường quốc tr&ecirc;n thế giới như Nhật, Ph&aacute;p&hellip; BEHE lu&ocirc;n hướng tới một sứ mệnh r&otilde; r&agrave;ng &ldquo;Đem đến những phương ph&aacute;p l&agrave;m đẹp phối hợp giữa khoa học t&acirc;n tiến v&agrave; th&agrave;nh phần tự nhi&ecirc;n tinh khiết tới tay những kh&aacute;ch h&agrave;ng y&ecirc;u l&agrave;m đẹp&rdquo;. Kh&ocirc;ng x&acirc;m lấn &ndash; Kh&ocirc;ng dao k&eacute;o &ndash; Kh&ocirc;ng g&acirc;y hại nhưng đảm bảo chất lượng v&agrave; hiệu quả r&otilde; rệt l&agrave; những ti&ecirc;u ch&iacute; m&agrave; BEHE Việt Nam muốn hướng tới</p>\r\n<h2 class=\"s18 medium about-stit\">Tầm nh&igrave;n</h2>\r\n<p>&ldquo;Trở th&agrave;nh một c&ocirc;ng ty h&agrave;ng đầu ph&acirc;n phối, cung cấp c&aacute;c phương thức l&agrave;m đẹp tin cậy nhất, hiệu quả nhất đến tay kh&aacute;ch h&agrave;ng Việt Nam v&agrave; ch&acirc;u &Aacute;. Đồng thời, BEHE Việt Nam cũng muốn trở th&agrave;nh một người bạn đồng h&agrave;nh cũng ph&aacute;i đẹp tr&ecirc;n con đường duy tr&igrave; v&agrave; chinh phục hạnh ph&uacute;c&rdquo;</p>', 'about', 1, NULL, 'meta tile 1', 'meta des 1', 'meta key 1', NULL, '2019-04-16 21:35:35'),
(2, 'BEAUTY', NULL, NULL, NULL, 'BEHE đặt vẻ đẹp của khách hàng lên đầu tiên, mọi sản phẩm hay phương thức được đưa tới tay khách hàng đều có hiệu quả làm đẹp rõ rệt.', 'about_value', 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'HEALTHY', NULL, NULL, NULL, 'BEHE đặt vẻ đẹp của khách hàng lên đầu tiên, mọi sản phẩm hay phương thức được đưa tới tay khách hàng đều có hiệu quả làm đẹp rõ rệt.', 'about_value', 1, 1, NULL, NULL, NULL, NULL, NULL),
(4, 'NATURE', NULL, NULL, NULL, 'BEHE đặt vẻ đẹp của khách hàng lên đầu tiên, mọi sản phẩm hay phương thức được đưa tới tay khách hàng đều có hiệu quả làm đẹp rõ rệt.', 'about_value', 1, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'VIRTUE', NULL, NULL, NULL, 'BEHE đặt vẻ đẹp của khách hàng lên đầu tiên, mọi sản phẩm hay phương thức được đưa tới tay khách hàng đều có hiệu quả làm đẹp rõ rệt.', 'about_value', 1, 1, NULL, NULL, NULL, NULL, NULL),
(6, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 7', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-7', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 8', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-8', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 9', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-9', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 10', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-10', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 11', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-11', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 12', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-12', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 13', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-13', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 14', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-14', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 15', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-15', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 16', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-16', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 17', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-17', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 18', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-18', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'blog', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Đừng chỉ chú tâm trang điểm mà quên làm đẹp từ bên trong 19', 'dung-chi-chu-tam-trang-diem-ma-quen-lam-dep-tu-ben-trong-19', '13', 'Là phụ nữ, ai cũng muốn đẹp và giữ mãi vẻ đẹp ấy bất chấp thời gian, nhưng không phải ai cũng biết cách chăm sóc sắc đẹp để hiện thực hóa điều đó.', '\n                                <p>Thuộc thế hệ “hot girl” đời đầu, Tâm Tít được biết đến với hình tượng nữ tính, ngoan hiền và cuộc sống đời tư nói không với thị phi. Cô nhờ thế vẫn được người hâm mộ nhắc đến bằng sự yêu mến chân thành dù đã không còn tham gia hoạt động nghệ thuật một cách mạnh mẽ nữa. </p>\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog10.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"s18 bold\">\"Hot girl\" một thời sở hữu vẻ đẹp không tuổi</p>\n								<p>Đến thời điểm hiện tại, rời xa hình ảnh “hot girl” trẻ trung, nhí nhảnh, Tâm Tít lại được nhắc đến như hình mẫu lý tưởng của người phụ nữ hiện đại chăm lo cho tổ ấm nhưng không quên chăm sóc và giữ gìn nhan sắc.  </p>\n\n								<p>Theo dõi trang cá nhân của Tâm Tít, người hâm mộ không khỏi bất ngờ về thân hình chuẩn cùng gương mặt không hề có dấu hiệu lão hoá. Vẻ đẹp của phụ nữ tuổi 30 quả nhiên đánh dấu mốc của sự viên mãn chứ hoàn toàn không phải chạm đến ranh giới của sự già nua.</p>\n\n								<div class=\"text-center\">\n									<img src=\"http://localhost:88/sahana-code/public/storage/assets/images/blog11.jpg\" alt=\"\" title=\"\">\n								</div>\n								<p class=\"text-center italic\">Bước sang tuổi 30 và đã là mẹ hai con, Tâm Tít vẫn giữ được vóc dáng khoẻ mạnh và làn da không tì vết</p>\n\n								<p>Tâm Tít cho rằng ai cũng yêu thích và mong muốn có được vẻ đẹp tự nhiên nhưng không phải cứ tự nhiên mà đẹp. Giống như bao phụ nữ khác, Tâm Tít cũng phải đối mặt với những vấn đề tâm sinh lý thường gặp ở độ tuổi 30, đặc biệt là vấn đề rối loạn nội tiết tố. Tuy nhiên, Tâm luôn có bí quyết của riêng mình để giữ gìn sức khoẻ và nhan sắc. </p>\n            ', 'service', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Chính sách thanh toán', NULL, NULL, NULL, '<p>C&aacute;m ơn qu&yacute; kh&aacute;ch đ&atilde; truy cập v&agrave;o website Kosmebox.com được vận h&agrave;nh bởi Kosmebox Pte. Ltd. Ch&iacute;nh s&aacute;ch bảo mật sẽ giải th&iacute;ch c&aacute;ch ch&uacute;ng t&ocirc;i tiếp nhận, sử dụng v&agrave; (trong trường hợp n&agrave;o đ&oacute;) tiết lộ th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch cũng sẽ giải th&iacute;ch c&aacute;c bước ch&uacute;ng t&ocirc;i thực hiện để bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng. Cuối c&ugrave;ng, Ch&iacute;nh s&aacute;ch bảo mật sẽ giải th&iacute;ch quyền lựa chọn của qu&yacute; kh&aacute;ch về việc thu thập, sử dụng v&agrave; tiết lộ th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh.</p>\r\n<p>Ch&uacute;ng t&ocirc;i chỉ thu thập những th&ocirc;ng tin cần thiết li&ecirc;n quan đến giao dịch mua b&aacute;n. Ch&uacute;ng t&ocirc;i sẽ giữ th&ocirc;ng tin của kh&aacute;ch h&agrave;ng trong thời gian luật ph&aacute;p quy định hoặc cho mục đ&iacute;ch n&agrave;o đ&oacute;. Qu&yacute; kh&aacute;ch c&oacute; thể truy cập v&agrave;o website v&agrave; tr&igrave;nh duyệt m&agrave; kh&ocirc;ng cần phải cung cấp chi tiết c&aacute; nh&acirc;n. L&uacute;c đ&oacute;, bạn sẽ truy cập ẩn danh v&agrave; ch&uacute;ng t&ocirc;i kh&ocirc;ng thể biết bạn l&agrave; ai nếu bạn kh&ocirc;ng đăng nhập v&agrave;o t&agrave;i khoản của m&igrave;nh.</p>\r\n<p class=\"bold s18\">1. Thu thập th&ocirc;ng tin c&aacute; nh&acirc;n</p>\r\n<p>Ch&uacute;ng t&ocirc;i sẽ thu thập nhiều th&ocirc;ng tin kh&aacute;c nhau của qu&yacute; kh&aacute;ch khi bạn muốn đặt h&agrave;ng tr&ecirc;n web. Ch&uacute;ng t&ocirc;i thu thập, lưu trữ v&agrave; xử l&yacute; th&ocirc;ng tin của bạn cho qu&aacute; tr&igrave;nh mua h&agrave;ng v&agrave; cho những th&ocirc;ng b&aacute;o sau n&agrave;y để cung cấp dịch vụ. Ch&uacute;ng t&ocirc;i kh&ocirc;ng giới hạn th&ocirc;ng tin c&aacute; nh&acirc;n: danh hiệu, t&ecirc;n, giới t&iacute;nh, ng&agrave;y sinh, email, địa chỉ, địa chỉ giao h&agrave;ng, số điện thoại, fax, chi tiết thanh to&aacute;n, chi tiết thanh to&aacute;n bằng thẻ hoặc chi tiết t&agrave;i khoản ng&acirc;n h&agrave;ng.</p>\r\n<p>Ch&uacute;ng t&ocirc;i sẽ d&ugrave;ng th&ocirc;ng tin qu&yacute; kh&aacute;ch đ&atilde; cung cấp để xử l&yacute; đơn đặt h&agrave;ng, cung cấp c&aacute;c dịch vụ v&agrave; th&ocirc;ng tin y&ecirc;u cầu th&ocirc;ng qua website v&agrave; theo y&ecirc;u cầu của bạn. Ch&uacute;ng t&ocirc;i sẽ sử dụng c&aacute;c th&ocirc;ng tin đ&oacute; để quản l&yacute; t&agrave;i khoản của bạn; x&aacute;c minh v&agrave; thực hiện giao dịch trực tuyến, kiểm to&aacute;n việc tải dữ liệu từ web; cải thiện bố cục v&agrave; nội dung trang web v&agrave; điều chỉnh cho ph&ugrave; hợp với người d&ugrave;ng; nhận diện kh&aacute;ch v&agrave;o web, nghi&ecirc;n cứu nh&acirc;n khẩu học, gửi th&ocirc;ng tin bao gồm th&ocirc;ng tin sản phẩm v&agrave; dịch vụ, nếu bạn kh&ocirc;ng c&oacute; dấu hiệu từ chối. Nếu qu&yacute; kh&aacute;ch kh&ocirc;ng muốn nhận bất cứ th&ocirc;ng tin tiếp thị của ch&uacute;ng t&ocirc;i th&igrave; c&oacute; thể từ chối bất cứ l&uacute;c n&agrave;o.</p>\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; thể chuyển t&ecirc;n v&agrave; địa chỉ cho b&ecirc;n thứ ba để họ giao h&agrave;ng cho bạn (v&iacute; dụ cho b&ecirc;n chuyển ph&aacute;t nhanh hoặc nh&agrave; cung cấp).</p>\r\n<div class=\"text-center\"><img title=\"\" src=\"http://tpl.gco.vn/hana/images/chinhsach.jpg\" alt=\"\" /></div>\r\n<p>C&aacute;c khoản thanh to&aacute;n trực tuyến sẽ được xử l&yacute; bởi c&aacute;c đại l&yacute; Mạng lưới Quốc tế của ch&uacute;ng t&ocirc;i. Qu&yacute; kh&aacute;ch chỉ đưa cho ch&uacute;ng t&ocirc;i hoặc Đại l&yacute; hoặc website những th&ocirc;ng tin ch&iacute;nh x&aacute;c, kh&ocirc;ng g&acirc;y nhầm lẫn v&agrave; phải th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i nếu c&oacute; thay đổi.</p>\r\n<p>Chi tiết đơn đặt h&agrave;ng của bạn được ch&uacute;ng t&ocirc;i lưu giữ. Qu&yacute; kh&aacute;ch c&oacute; thể tiếp cận th&ocirc;ng tin bằng c&aacute;ch đăng nhập t&agrave;i khoản tr&ecirc;n web. Tại đ&acirc;y, bạn sẽ thấy chi tiết đơn đặt h&agrave;ng của m&igrave;nh, những sản phẩm đ&atilde; nhận v&agrave; những sản phẩm đ&atilde; gửi v&agrave; chi tiết email, ng&acirc;n h&agrave;ng v&agrave; bản tin m&agrave; bạn đặt theo d&otilde;i d&agrave;i hạn. Qu&yacute; kh&aacute;ch cam kết bảo mật dữ liệu c&aacute; nh&acirc;n v&agrave; kh&ocirc;ng được ph&eacute;p tiết lộ cho b&ecirc;n thứ ba. Ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o cho việc d&ugrave;ng sai mật khẩu nếu đ&acirc;y kh&ocirc;ng phải lỗi của ch&uacute;ng t&ocirc;i.</p>\r\n<p class=\"bold s18\">Điều lệ kh&aacute;c về th&ocirc;ng tin c&aacute; nh&acirc;n</p>\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; thể d&ugrave;ng th&ocirc;ng tin c&aacute; nh&acirc;n của bạn để nghi&ecirc;n cứu thị trường. Chi tiết sẽ được ẩn v&agrave; chỉ được d&ugrave;ng để thống k&ecirc;. Qu&yacute; kh&aacute;ch c&oacute; thể từ chối kh&ocirc;ng tham gia bất cứ l&uacute;c n&agrave;o. Bất kỳ c&acirc;u trả lời cho khảo s&aacute;t hoặc thăm d&ograve; dư luận m&agrave; ch&uacute;ng t&ocirc;i cần bạn l&agrave;m sẽ kh&ocirc;ng được chuyển cho b&ecirc;n thứ ba. Việc cần thiết duy nhất l&agrave; tiết lộ email của bạn nếu bạn muốn tham gia. C&acirc;u trả lời sẽ được lưu t&aacute;ch ri&ecirc;ng với email của bạn.</p>\r\n<p>Bạn sẽ nhận được th&ocirc;ng tin về ch&uacute;ng t&ocirc;i, về website, c&aacute;c website kh&aacute;c, sản phẩm, doanh số b&aacute;n h&agrave;ng, bản tin, bất cứ những g&igrave; li&ecirc;n quan đến c&aacute;c c&ocirc;ng ty nằm trong nh&oacute;m hoặc c&aacute;c đối t&aacute;c kinh doanh. Nếu qu&yacute; kh&aacute;ch kh&ocirc;ng muốn nhận những th&ocirc;ng tin n&agrave;y, vui l&ograve;ng nhấn v&agrave;o link từ chối trong bất kỳ email ch&uacute;ng t&ocirc;i gửi cho bạn. Trong v&ograve;ng 7 ng&agrave;y nhận chỉ dẫn của bạn, ch&uacute;ng t&ocirc;i sẽ ngừng gửi th&ocirc;ng tin. Nếu thấy kh&ocirc;ng r&otilde;, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n lạc với bạn.</p>', 'policy', 1, NULL, NULL, NULL, NULL, '2019-04-16 02:49:27', '2019-04-16 02:49:27'),
(24, 'Chính sách đổi trả', NULL, NULL, NULL, '<p>C&aacute;m ơn qu&yacute; kh&aacute;ch đ&atilde; truy cập v&agrave;o website Kosmebox.com được vận h&agrave;nh bởi Kosmebox Pte. Ltd. Ch&iacute;nh s&aacute;ch bảo mật sẽ giải th&iacute;ch c&aacute;ch ch&uacute;ng t&ocirc;i tiếp nhận, sử dụng v&agrave; (trong trường hợp n&agrave;o đ&oacute;) tiết lộ th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch cũng sẽ giải th&iacute;ch c&aacute;c bước ch&uacute;ng t&ocirc;i thực hiện để bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng. Cuối c&ugrave;ng, Ch&iacute;nh s&aacute;ch bảo mật sẽ giải th&iacute;ch quyền lựa chọn của qu&yacute; kh&aacute;ch về việc thu thập, sử dụng v&agrave; tiết lộ th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh.</p>\r\n<p>Ch&uacute;ng t&ocirc;i chỉ thu thập những th&ocirc;ng tin cần thiết li&ecirc;n quan đến giao dịch mua b&aacute;n. Ch&uacute;ng t&ocirc;i sẽ giữ th&ocirc;ng tin của kh&aacute;ch h&agrave;ng trong thời gian luật ph&aacute;p quy định hoặc cho mục đ&iacute;ch n&agrave;o đ&oacute;. Qu&yacute; kh&aacute;ch c&oacute; thể truy cập v&agrave;o website v&agrave; tr&igrave;nh duyệt m&agrave; kh&ocirc;ng cần phải cung cấp chi tiết c&aacute; nh&acirc;n. L&uacute;c đ&oacute;, bạn sẽ truy cập ẩn danh v&agrave; ch&uacute;ng t&ocirc;i kh&ocirc;ng thể biết bạn l&agrave; ai nếu bạn kh&ocirc;ng đăng nhập v&agrave;o t&agrave;i khoản của m&igrave;nh.</p>\r\n<p class=\"bold s18\">1. Thu thập th&ocirc;ng tin c&aacute; nh&acirc;n</p>\r\n<p>Ch&uacute;ng t&ocirc;i sẽ thu thập nhiều th&ocirc;ng tin kh&aacute;c nhau của qu&yacute; kh&aacute;ch khi bạn muốn đặt h&agrave;ng tr&ecirc;n web. Ch&uacute;ng t&ocirc;i thu thập, lưu trữ v&agrave; xử l&yacute; th&ocirc;ng tin của bạn cho qu&aacute; tr&igrave;nh mua h&agrave;ng v&agrave; cho những th&ocirc;ng b&aacute;o sau n&agrave;y để cung cấp dịch vụ. Ch&uacute;ng t&ocirc;i kh&ocirc;ng giới hạn th&ocirc;ng tin c&aacute; nh&acirc;n: danh hiệu, t&ecirc;n, giới t&iacute;nh, ng&agrave;y sinh, email, địa chỉ, địa chỉ giao h&agrave;ng, số điện thoại, fax, chi tiết thanh to&aacute;n, chi tiết thanh to&aacute;n bằng thẻ hoặc chi tiết t&agrave;i khoản ng&acirc;n h&agrave;ng.</p>\r\n<p>Ch&uacute;ng t&ocirc;i sẽ d&ugrave;ng th&ocirc;ng tin qu&yacute; kh&aacute;ch đ&atilde; cung cấp để xử l&yacute; đơn đặt h&agrave;ng, cung cấp c&aacute;c dịch vụ v&agrave; th&ocirc;ng tin y&ecirc;u cầu th&ocirc;ng qua website v&agrave; theo y&ecirc;u cầu của bạn. Ch&uacute;ng t&ocirc;i sẽ sử dụng c&aacute;c th&ocirc;ng tin đ&oacute; để quản l&yacute; t&agrave;i khoản của bạn; x&aacute;c minh v&agrave; thực hiện giao dịch trực tuyến, kiểm to&aacute;n việc tải dữ liệu từ web; cải thiện bố cục v&agrave; nội dung trang web v&agrave; điều chỉnh cho ph&ugrave; hợp với người d&ugrave;ng; nhận diện kh&aacute;ch v&agrave;o web, nghi&ecirc;n cứu nh&acirc;n khẩu học, gửi th&ocirc;ng tin bao gồm th&ocirc;ng tin sản phẩm v&agrave; dịch vụ, nếu bạn kh&ocirc;ng c&oacute; dấu hiệu từ chối. Nếu qu&yacute; kh&aacute;ch kh&ocirc;ng muốn nhận bất cứ th&ocirc;ng tin tiếp thị của ch&uacute;ng t&ocirc;i th&igrave; c&oacute; thể từ chối bất cứ l&uacute;c n&agrave;o.</p>\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; thể chuyển t&ecirc;n v&agrave; địa chỉ cho b&ecirc;n thứ ba để họ giao h&agrave;ng cho bạn (v&iacute; dụ cho b&ecirc;n chuyển ph&aacute;t nhanh hoặc nh&agrave; cung cấp).</p>\r\n<div class=\"text-center\"><img title=\"\" src=\"http://tpl.gco.vn/hana/images/chinhsach.jpg\" alt=\"\" /></div>\r\n<p>C&aacute;c khoản thanh to&aacute;n trực tuyến sẽ được xử l&yacute; bởi c&aacute;c đại l&yacute; Mạng lưới Quốc tế của ch&uacute;ng t&ocirc;i. Qu&yacute; kh&aacute;ch chỉ đưa cho ch&uacute;ng t&ocirc;i hoặc Đại l&yacute; hoặc website những th&ocirc;ng tin ch&iacute;nh x&aacute;c, kh&ocirc;ng g&acirc;y nhầm lẫn v&agrave; phải th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i nếu c&oacute; thay đổi.</p>\r\n<p>Chi tiết đơn đặt h&agrave;ng của bạn được ch&uacute;ng t&ocirc;i lưu giữ. Qu&yacute; kh&aacute;ch c&oacute; thể tiếp cận th&ocirc;ng tin bằng c&aacute;ch đăng nhập t&agrave;i khoản tr&ecirc;n web. Tại đ&acirc;y, bạn sẽ thấy chi tiết đơn đặt h&agrave;ng của m&igrave;nh, những sản phẩm đ&atilde; nhận v&agrave; những sản phẩm đ&atilde; gửi v&agrave; chi tiết email, ng&acirc;n h&agrave;ng v&agrave; bản tin m&agrave; bạn đặt theo d&otilde;i d&agrave;i hạn. Qu&yacute; kh&aacute;ch cam kết bảo mật dữ liệu c&aacute; nh&acirc;n v&agrave; kh&ocirc;ng được ph&eacute;p tiết lộ cho b&ecirc;n thứ ba. Ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o cho việc d&ugrave;ng sai mật khẩu nếu đ&acirc;y kh&ocirc;ng phải lỗi của ch&uacute;ng t&ocirc;i.</p>\r\n<p class=\"bold s18\">Điều lệ kh&aacute;c về th&ocirc;ng tin c&aacute; nh&acirc;n</p>\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; thể d&ugrave;ng th&ocirc;ng tin c&aacute; nh&acirc;n của bạn để nghi&ecirc;n cứu thị trường. Chi tiết sẽ được ẩn v&agrave; chỉ được d&ugrave;ng để thống k&ecirc;. Qu&yacute; kh&aacute;ch c&oacute; thể từ chối kh&ocirc;ng tham gia bất cứ l&uacute;c n&agrave;o. Bất kỳ c&acirc;u trả lời cho khảo s&aacute;t hoặc thăm d&ograve; dư luận m&agrave; ch&uacute;ng t&ocirc;i cần bạn l&agrave;m sẽ kh&ocirc;ng được chuyển cho b&ecirc;n thứ ba. Việc cần thiết duy nhất l&agrave; tiết lộ email của bạn nếu bạn muốn tham gia. C&acirc;u trả lời sẽ được lưu t&aacute;ch ri&ecirc;ng với email của bạn.</p>\r\n<p>Bạn sẽ nhận được th&ocirc;ng tin về ch&uacute;ng t&ocirc;i, về website, c&aacute;c website kh&aacute;c, sản phẩm, doanh số b&aacute;n h&agrave;ng, bản tin, bất cứ những g&igrave; li&ecirc;n quan đến c&aacute;c c&ocirc;ng ty nằm trong nh&oacute;m hoặc c&aacute;c đối t&aacute;c kinh doanh. Nếu qu&yacute; kh&aacute;ch kh&ocirc;ng muốn nhận những th&ocirc;ng tin n&agrave;y, vui l&ograve;ng nhấn v&agrave;o link từ chối trong bất kỳ email ch&uacute;ng t&ocirc;i gửi cho bạn. Trong v&ograve;ng 7 ng&agrave;y nhận chỉ dẫn của bạn, ch&uacute;ng t&ocirc;i sẽ ngừng gửi th&ocirc;ng tin. Nếu thấy kh&ocirc;ng r&otilde;, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n lạc với bạn.</p>', 'policy', 1, NULL, NULL, NULL, NULL, '2019-04-16 02:49:46', '2019-04-16 02:49:46'),
(25, 'Chính sách mua hàng', NULL, NULL, NULL, '<p>C&aacute;m ơn qu&yacute; kh&aacute;ch đ&atilde; truy cập v&agrave;o website Kosmebox.com được vận h&agrave;nh bởi Kosmebox Pte. Ltd. Ch&iacute;nh s&aacute;ch bảo mật sẽ giải th&iacute;ch c&aacute;ch ch&uacute;ng t&ocirc;i tiếp nhận, sử dụng v&agrave; (trong trường hợp n&agrave;o đ&oacute;) tiết lộ th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch cũng sẽ giải th&iacute;ch c&aacute;c bước ch&uacute;ng t&ocirc;i thực hiện để bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng. Cuối c&ugrave;ng, Ch&iacute;nh s&aacute;ch bảo mật sẽ giải th&iacute;ch quyền lựa chọn của qu&yacute; kh&aacute;ch về việc thu thập, sử dụng v&agrave; tiết lộ th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh.</p>\r\n<p>Ch&uacute;ng t&ocirc;i chỉ thu thập những th&ocirc;ng tin cần thiết li&ecirc;n quan đến giao dịch mua b&aacute;n. Ch&uacute;ng t&ocirc;i sẽ giữ th&ocirc;ng tin của kh&aacute;ch h&agrave;ng trong thời gian luật ph&aacute;p quy định hoặc cho mục đ&iacute;ch n&agrave;o đ&oacute;. Qu&yacute; kh&aacute;ch c&oacute; thể truy cập v&agrave;o website v&agrave; tr&igrave;nh duyệt m&agrave; kh&ocirc;ng cần phải cung cấp chi tiết c&aacute; nh&acirc;n. L&uacute;c đ&oacute;, bạn sẽ truy cập ẩn danh v&agrave; ch&uacute;ng t&ocirc;i kh&ocirc;ng thể biết bạn l&agrave; ai nếu bạn kh&ocirc;ng đăng nhập v&agrave;o t&agrave;i khoản của m&igrave;nh.</p>\r\n<p class=\"bold s18\">1. Thu thập th&ocirc;ng tin c&aacute; nh&acirc;n</p>\r\n<p>Ch&uacute;ng t&ocirc;i sẽ thu thập nhiều th&ocirc;ng tin kh&aacute;c nhau của qu&yacute; kh&aacute;ch khi bạn muốn đặt h&agrave;ng tr&ecirc;n web. Ch&uacute;ng t&ocirc;i thu thập, lưu trữ v&agrave; xử l&yacute; th&ocirc;ng tin của bạn cho qu&aacute; tr&igrave;nh mua h&agrave;ng v&agrave; cho những th&ocirc;ng b&aacute;o sau n&agrave;y để cung cấp dịch vụ. Ch&uacute;ng t&ocirc;i kh&ocirc;ng giới hạn th&ocirc;ng tin c&aacute; nh&acirc;n: danh hiệu, t&ecirc;n, giới t&iacute;nh, ng&agrave;y sinh, email, địa chỉ, địa chỉ giao h&agrave;ng, số điện thoại, fax, chi tiết thanh to&aacute;n, chi tiết thanh to&aacute;n bằng thẻ hoặc chi tiết t&agrave;i khoản ng&acirc;n h&agrave;ng.</p>\r\n<p>Ch&uacute;ng t&ocirc;i sẽ d&ugrave;ng th&ocirc;ng tin qu&yacute; kh&aacute;ch đ&atilde; cung cấp để xử l&yacute; đơn đặt h&agrave;ng, cung cấp c&aacute;c dịch vụ v&agrave; th&ocirc;ng tin y&ecirc;u cầu th&ocirc;ng qua website v&agrave; theo y&ecirc;u cầu của bạn. Ch&uacute;ng t&ocirc;i sẽ sử dụng c&aacute;c th&ocirc;ng tin đ&oacute; để quản l&yacute; t&agrave;i khoản của bạn; x&aacute;c minh v&agrave; thực hiện giao dịch trực tuyến, kiểm to&aacute;n việc tải dữ liệu từ web; cải thiện bố cục v&agrave; nội dung trang web v&agrave; điều chỉnh cho ph&ugrave; hợp với người d&ugrave;ng; nhận diện kh&aacute;ch v&agrave;o web, nghi&ecirc;n cứu nh&acirc;n khẩu học, gửi th&ocirc;ng tin bao gồm th&ocirc;ng tin sản phẩm v&agrave; dịch vụ, nếu bạn kh&ocirc;ng c&oacute; dấu hiệu từ chối. Nếu qu&yacute; kh&aacute;ch kh&ocirc;ng muốn nhận bất cứ th&ocirc;ng tin tiếp thị của ch&uacute;ng t&ocirc;i th&igrave; c&oacute; thể từ chối bất cứ l&uacute;c n&agrave;o.</p>\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; thể chuyển t&ecirc;n v&agrave; địa chỉ cho b&ecirc;n thứ ba để họ giao h&agrave;ng cho bạn (v&iacute; dụ cho b&ecirc;n chuyển ph&aacute;t nhanh hoặc nh&agrave; cung cấp).</p>\r\n<div class=\"text-center\"><img title=\"\" src=\"http://tpl.gco.vn/hana/images/chinhsach.jpg\" alt=\"\" /></div>\r\n<p>C&aacute;c khoản thanh to&aacute;n trực tuyến sẽ được xử l&yacute; bởi c&aacute;c đại l&yacute; Mạng lưới Quốc tế của ch&uacute;ng t&ocirc;i. Qu&yacute; kh&aacute;ch chỉ đưa cho ch&uacute;ng t&ocirc;i hoặc Đại l&yacute; hoặc website những th&ocirc;ng tin ch&iacute;nh x&aacute;c, kh&ocirc;ng g&acirc;y nhầm lẫn v&agrave; phải th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i nếu c&oacute; thay đổi.</p>\r\n<p>Chi tiết đơn đặt h&agrave;ng của bạn được ch&uacute;ng t&ocirc;i lưu giữ. Qu&yacute; kh&aacute;ch c&oacute; thể tiếp cận th&ocirc;ng tin bằng c&aacute;ch đăng nhập t&agrave;i khoản tr&ecirc;n web. Tại đ&acirc;y, bạn sẽ thấy chi tiết đơn đặt h&agrave;ng của m&igrave;nh, những sản phẩm đ&atilde; nhận v&agrave; những sản phẩm đ&atilde; gửi v&agrave; chi tiết email, ng&acirc;n h&agrave;ng v&agrave; bản tin m&agrave; bạn đặt theo d&otilde;i d&agrave;i hạn. Qu&yacute; kh&aacute;ch cam kết bảo mật dữ liệu c&aacute; nh&acirc;n v&agrave; kh&ocirc;ng được ph&eacute;p tiết lộ cho b&ecirc;n thứ ba. Ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o cho việc d&ugrave;ng sai mật khẩu nếu đ&acirc;y kh&ocirc;ng phải lỗi của ch&uacute;ng t&ocirc;i.</p>\r\n<p class=\"bold s18\">Điều lệ kh&aacute;c về th&ocirc;ng tin c&aacute; nh&acirc;n</p>\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; thể d&ugrave;ng th&ocirc;ng tin c&aacute; nh&acirc;n của bạn để nghi&ecirc;n cứu thị trường. Chi tiết sẽ được ẩn v&agrave; chỉ được d&ugrave;ng để thống k&ecirc;. Qu&yacute; kh&aacute;ch c&oacute; thể từ chối kh&ocirc;ng tham gia bất cứ l&uacute;c n&agrave;o. Bất kỳ c&acirc;u trả lời cho khảo s&aacute;t hoặc thăm d&ograve; dư luận m&agrave; ch&uacute;ng t&ocirc;i cần bạn l&agrave;m sẽ kh&ocirc;ng được chuyển cho b&ecirc;n thứ ba. Việc cần thiết duy nhất l&agrave; tiết lộ email của bạn nếu bạn muốn tham gia. C&acirc;u trả lời sẽ được lưu t&aacute;ch ri&ecirc;ng với email của bạn.</p>\r\n<p>Bạn sẽ nhận được th&ocirc;ng tin về ch&uacute;ng t&ocirc;i, về website, c&aacute;c website kh&aacute;c, sản phẩm, doanh số b&aacute;n h&agrave;ng, bản tin, bất cứ những g&igrave; li&ecirc;n quan đến c&aacute;c c&ocirc;ng ty nằm trong nh&oacute;m hoặc c&aacute;c đối t&aacute;c kinh doanh. Nếu qu&yacute; kh&aacute;ch kh&ocirc;ng muốn nhận những th&ocirc;ng tin n&agrave;y, vui l&ograve;ng nhấn v&agrave;o link từ chối trong bất kỳ email ch&uacute;ng t&ocirc;i gửi cho bạn. Trong v&ograve;ng 7 ng&agrave;y nhận chỉ dẫn của bạn, ch&uacute;ng t&ocirc;i sẽ ngừng gửi th&ocirc;ng tin. Nếu thấy kh&ocirc;ng r&otilde;, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n lạc với bạn.</p>', 'policy', 1, NULL, NULL, NULL, NULL, '2019-04-16 02:50:00', '2019-04-16 02:50:00');
INSERT INTO `post` (`id`, `name`, `slug`, `image`, `content_short`, `content_main`, `type`, `status`, `parent_id`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(26, 'Chinh sách vận chuyển', NULL, NULL, NULL, '<p>C&aacute;m ơn qu&yacute; kh&aacute;ch đ&atilde; truy cập v&agrave;o website Kosmebox.com được vận h&agrave;nh bởi Kosmebox Pte. Ltd. Ch&iacute;nh s&aacute;ch bảo mật sẽ giải th&iacute;ch c&aacute;ch ch&uacute;ng t&ocirc;i tiếp nhận, sử dụng v&agrave; (trong trường hợp n&agrave;o đ&oacute;) tiết lộ th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch cũng sẽ giải th&iacute;ch c&aacute;c bước ch&uacute;ng t&ocirc;i thực hiện để bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng. Cuối c&ugrave;ng, Ch&iacute;nh s&aacute;ch bảo mật sẽ giải th&iacute;ch quyền lựa chọn của qu&yacute; kh&aacute;ch về việc thu thập, sử dụng v&agrave; tiết lộ th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh.</p>\r\n<p>Ch&uacute;ng t&ocirc;i chỉ thu thập những th&ocirc;ng tin cần thiết li&ecirc;n quan đến giao dịch mua b&aacute;n. Ch&uacute;ng t&ocirc;i sẽ giữ th&ocirc;ng tin của kh&aacute;ch h&agrave;ng trong thời gian luật ph&aacute;p quy định hoặc cho mục đ&iacute;ch n&agrave;o đ&oacute;. Qu&yacute; kh&aacute;ch c&oacute; thể truy cập v&agrave;o website v&agrave; tr&igrave;nh duyệt m&agrave; kh&ocirc;ng cần phải cung cấp chi tiết c&aacute; nh&acirc;n. L&uacute;c đ&oacute;, bạn sẽ truy cập ẩn danh v&agrave; ch&uacute;ng t&ocirc;i kh&ocirc;ng thể biết bạn l&agrave; ai nếu bạn kh&ocirc;ng đăng nhập v&agrave;o t&agrave;i khoản của m&igrave;nh.</p>\r\n<p class=\"bold s18\">1. Thu thập th&ocirc;ng tin c&aacute; nh&acirc;n</p>\r\n<p>Ch&uacute;ng t&ocirc;i sẽ thu thập nhiều th&ocirc;ng tin kh&aacute;c nhau của qu&yacute; kh&aacute;ch khi bạn muốn đặt h&agrave;ng tr&ecirc;n web. Ch&uacute;ng t&ocirc;i thu thập, lưu trữ v&agrave; xử l&yacute; th&ocirc;ng tin của bạn cho qu&aacute; tr&igrave;nh mua h&agrave;ng v&agrave; cho những th&ocirc;ng b&aacute;o sau n&agrave;y để cung cấp dịch vụ. Ch&uacute;ng t&ocirc;i kh&ocirc;ng giới hạn th&ocirc;ng tin c&aacute; nh&acirc;n: danh hiệu, t&ecirc;n, giới t&iacute;nh, ng&agrave;y sinh, email, địa chỉ, địa chỉ giao h&agrave;ng, số điện thoại, fax, chi tiết thanh to&aacute;n, chi tiết thanh to&aacute;n bằng thẻ hoặc chi tiết t&agrave;i khoản ng&acirc;n h&agrave;ng.</p>\r\n<p>Ch&uacute;ng t&ocirc;i sẽ d&ugrave;ng th&ocirc;ng tin qu&yacute; kh&aacute;ch đ&atilde; cung cấp để xử l&yacute; đơn đặt h&agrave;ng, cung cấp c&aacute;c dịch vụ v&agrave; th&ocirc;ng tin y&ecirc;u cầu th&ocirc;ng qua website v&agrave; theo y&ecirc;u cầu của bạn. Ch&uacute;ng t&ocirc;i sẽ sử dụng c&aacute;c th&ocirc;ng tin đ&oacute; để quản l&yacute; t&agrave;i khoản của bạn; x&aacute;c minh v&agrave; thực hiện giao dịch trực tuyến, kiểm to&aacute;n việc tải dữ liệu từ web; cải thiện bố cục v&agrave; nội dung trang web v&agrave; điều chỉnh cho ph&ugrave; hợp với người d&ugrave;ng; nhận diện kh&aacute;ch v&agrave;o web, nghi&ecirc;n cứu nh&acirc;n khẩu học, gửi th&ocirc;ng tin bao gồm th&ocirc;ng tin sản phẩm v&agrave; dịch vụ, nếu bạn kh&ocirc;ng c&oacute; dấu hiệu từ chối. Nếu qu&yacute; kh&aacute;ch kh&ocirc;ng muốn nhận bất cứ th&ocirc;ng tin tiếp thị của ch&uacute;ng t&ocirc;i th&igrave; c&oacute; thể từ chối bất cứ l&uacute;c n&agrave;o.</p>\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; thể chuyển t&ecirc;n v&agrave; địa chỉ cho b&ecirc;n thứ ba để họ giao h&agrave;ng cho bạn (v&iacute; dụ cho b&ecirc;n chuyển ph&aacute;t nhanh hoặc nh&agrave; cung cấp).</p>\r\n<div class=\"text-center\"><img title=\"\" src=\"http://tpl.gco.vn/hana/images/chinhsach.jpg\" alt=\"\" /></div>\r\n<p>C&aacute;c khoản thanh to&aacute;n trực tuyến sẽ được xử l&yacute; bởi c&aacute;c đại l&yacute; Mạng lưới Quốc tế của ch&uacute;ng t&ocirc;i. Qu&yacute; kh&aacute;ch chỉ đưa cho ch&uacute;ng t&ocirc;i hoặc Đại l&yacute; hoặc website những th&ocirc;ng tin ch&iacute;nh x&aacute;c, kh&ocirc;ng g&acirc;y nhầm lẫn v&agrave; phải th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i nếu c&oacute; thay đổi.</p>\r\n<p>Chi tiết đơn đặt h&agrave;ng của bạn được ch&uacute;ng t&ocirc;i lưu giữ. Qu&yacute; kh&aacute;ch c&oacute; thể tiếp cận th&ocirc;ng tin bằng c&aacute;ch đăng nhập t&agrave;i khoản tr&ecirc;n web. Tại đ&acirc;y, bạn sẽ thấy chi tiết đơn đặt h&agrave;ng của m&igrave;nh, những sản phẩm đ&atilde; nhận v&agrave; những sản phẩm đ&atilde; gửi v&agrave; chi tiết email, ng&acirc;n h&agrave;ng v&agrave; bản tin m&agrave; bạn đặt theo d&otilde;i d&agrave;i hạn. Qu&yacute; kh&aacute;ch cam kết bảo mật dữ liệu c&aacute; nh&acirc;n v&agrave; kh&ocirc;ng được ph&eacute;p tiết lộ cho b&ecirc;n thứ ba. Ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o cho việc d&ugrave;ng sai mật khẩu nếu đ&acirc;y kh&ocirc;ng phải lỗi của ch&uacute;ng t&ocirc;i.</p>\r\n<p class=\"bold s18\">Điều lệ kh&aacute;c về th&ocirc;ng tin c&aacute; nh&acirc;n</p>\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; thể d&ugrave;ng th&ocirc;ng tin c&aacute; nh&acirc;n của bạn để nghi&ecirc;n cứu thị trường. Chi tiết sẽ được ẩn v&agrave; chỉ được d&ugrave;ng để thống k&ecirc;. Qu&yacute; kh&aacute;ch c&oacute; thể từ chối kh&ocirc;ng tham gia bất cứ l&uacute;c n&agrave;o. Bất kỳ c&acirc;u trả lời cho khảo s&aacute;t hoặc thăm d&ograve; dư luận m&agrave; ch&uacute;ng t&ocirc;i cần bạn l&agrave;m sẽ kh&ocirc;ng được chuyển cho b&ecirc;n thứ ba. Việc cần thiết duy nhất l&agrave; tiết lộ email của bạn nếu bạn muốn tham gia. C&acirc;u trả lời sẽ được lưu t&aacute;ch ri&ecirc;ng với email của bạn.</p>\r\n<p>Bạn sẽ nhận được th&ocirc;ng tin về ch&uacute;ng t&ocirc;i, về website, c&aacute;c website kh&aacute;c, sản phẩm, doanh số b&aacute;n h&agrave;ng, bản tin, bất cứ những g&igrave; li&ecirc;n quan đến c&aacute;c c&ocirc;ng ty nằm trong nh&oacute;m hoặc c&aacute;c đối t&aacute;c kinh doanh. Nếu qu&yacute; kh&aacute;ch kh&ocirc;ng muốn nhận những th&ocirc;ng tin n&agrave;y, vui l&ograve;ng nhấn v&agrave;o link từ chối trong bất kỳ email ch&uacute;ng t&ocirc;i gửi cho bạn. Trong v&ograve;ng 7 ng&agrave;y nhận chỉ dẫn của bạn, ch&uacute;ng t&ocirc;i sẽ ngừng gửi th&ocirc;ng tin. Nếu thấy kh&ocirc;ng r&otilde;, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n lạc với bạn.</p>', 'policy', 1, NULL, NULL, NULL, NULL, '2019-04-16 02:50:11', '2019-04-16 02:50:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_promotion` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `end_datetime_sale` datetime DEFAULT NULL,
  `begin_datetime_sale` datetime DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `more_image` text COLLATE utf8mb4_unicode_ci,
  `option` text COLLATE utf8mb4_unicode_ci,
  `storage` int(11) DEFAULT NULL,
  `content_short` text COLLATE utf8mb4_unicode_ci,
  `content_main` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `price_promotion`, `sale`, `brand_id`, `end_datetime_sale`, `begin_datetime_sale`, `image`, `more_image`, `option`, `storage`, `content_short`, `content_main`, `status`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(8, 'Xịt Khoáng Lô Hội White Organia Good Nature Aloe', 'xit-khoang-lo-hoi-white-organia-good-nature-aloe', 100000, 99000, 1, 30, '2019-05-17 00:00:00', '2019-04-19 00:00:00', '1555663279_2.jpg', '[\"1555643819_p1.jpg\",\"1555643819_p2.jpg\",\"1555643819_p3.jpg\",\"1555643819_p4.jpg\",\"1555643819_p5.jpg\"]', 'Xám,xanh', 1, NULL, '<p><label>M&ocirc; tả chi tiết</label></p>', NULL, NULL, NULL, NULL, '2019-04-18 03:01:14', '2019-04-19 01:41:19'),
(9, 'Xịt Khoáng Lô Hội White Organia Good Nature Aloe', 'xit-khoang-lo-hoi-white-organia-good-nature-aloe', 100000, 99000, 1, 30, '2019-05-17 00:00:00', '2019-04-19 00:00:00', '1555663264_1.png', '', 'Xám,xanh', 1, NULL, '<p><label>M&ocirc; tả chi tiết</label></p>', NULL, NULL, NULL, NULL, '2019-04-17 20:01:14', '2019-04-19 01:41:04'),
(10, 'Xịt Khoáng Lô Hội White Organia Good Nature Aloe', 'xit-khoang-lo-hoi-white-organia-good-nature-aloe', 100000, 0, 0, 30, '2019-05-17 00:00:00', '2019-04-19 00:00:00', '1555643809_p1.jpg', '[\"1555643819_p1.jpg\",\"1555643819_p2.jpg\",\"1555643819_p3.jpg\",\"1555643819_p4.jpg\",\"1555643819_p5.jpg\"]', 'Xám,xanh', 1, NULL, '<p><label>M&ocirc; tả chi tiết</label></p>', NULL, NULL, NULL, NULL, '2019-04-17 20:01:14', '2019-04-19 07:58:58'),
(11, 'Xịt Khoáng Lô Hội White Organia Good Nature Aloe', 'xit-khoang-lo-hoi-white-organia-good-nature-aloe', 100000, 99000, 1, 30, '2019-05-17 00:00:00', '2019-04-19 00:00:00', '1555663248_2.jpg', '[\"1555643819_p1.jpg\",\"1555643819_p2.jpg\",\"1555643819_p3.jpg\",\"1555643819_p4.jpg\",\"1555643819_p5.jpg\"]', 'Xám,xanh', 1, NULL, '<p><label>M&ocirc; tả chi tiết</label></p>', NULL, NULL, NULL, NULL, '2019-04-17 20:01:14', '2019-04-19 01:40:48'),
(12, 'Xịt Khoáng Lô Hội White Organia Good Nature Aloe', 'xit-khoang-lo-hoi-white-organia-good-nature-aloe', 100000, 80000, 20, 30, '2019-05-17 00:00:00', '2019-04-19 00:00:00', '1555663220_1.png', '[\"1555643819_p1.jpg\",\"1555643819_p2.jpg\",\"1555643819_p3.jpg\",\"1555643819_p4.jpg\",\"1555643819_p5.jpg\"]', 'Xám,xanh', 1, NULL, '<p><label>M&ocirc; tả chi tiết</label></p>', NULL, NULL, NULL, NULL, '2019-04-17 20:01:14', '2019-04-19 01:52:54'),
(14, 'Xịt Khoáng Lô Hội White Organia Good Nature Aloe', 'xit-khoang-lo-hoi-white-organia-good-nature-aloe', 100000, 99000, 1, 30, '2019-05-17 00:00:00', '2019-04-19 00:00:00', '1555663202_2.jpg', '[\"1555643819_p1.jpg\",\"1555643819_p2.jpg\",\"1555643819_p3.jpg\",\"1555643819_p4.jpg\",\"1555643819_p5.jpg\"]', 'Xám,xanh', 1, NULL, '<p><label>M&ocirc; tả chi tiết</label></p>', NULL, NULL, NULL, NULL, '2019-04-17 20:01:14', '2019-04-19 01:40:02'),
(15, 'Xịt Khoáng Lô Hội White Organia Good Nature Aloe', 'xit-khoang-lo-hoi-white-organia-good-nature-aloe', 100000, 0, 0, 30, '2019-05-17 00:00:00', '2019-04-19 00:00:00', '1555663172_4.jpg', '[\"1555643819_p1.jpg\",\"1555643819_p2.jpg\",\"1555643819_p3.jpg\",\"1555643819_p4.jpg\",\"1555643819_p5.jpg\"]', 'Xám,xanh', 1, NULL, '<p><label>M&ocirc; tả chi tiết</label></p>', NULL, NULL, NULL, NULL, '2019-04-17 20:01:14', '2019-04-19 07:56:05'),
(16, 'Xịt Khoáng Lô Hội White Organia Good Nature Aloe sale', 'xit-khoang-lo-hoi-white-organia-good-nature-aloe-sale', 100000, 90000, 10, 30, '2019-04-21 00:00:00', '2019-04-19 00:00:00', '1555663134_1.png', '[\"1555643819_p1.jpg\",\"1555643819_p2.jpg\",\"1555643819_p3.jpg\",\"1555643819_p4.jpg\",\"1555643819_p5.jpg\"]', 'Xám,Xanh,Đỏ', 1, '<p>M&Ocirc; TẢ NGẮN</p>', '<p>M&Ocirc; TẢ CHI TIẾT&nbsp;</p>', NULL, NULL, NULL, NULL, '2019-04-17 20:01:14', '2019-04-19 09:27:26'),
(19, 'Xịt Khoáng Lô Hội White Organia Good Nature', 'xit-khoang-lo-hoi-white-organia-good-nature', 1000000, 0, 0, 30, '2019-05-14 00:00:00', '2019-04-18 00:00:00', '1555663395_5.jpg', NULL, 'xanh', 1, '<p>M&ocirc; tả ngắn</p>', '<p>M&ocirc; tả chi tiết</p>', NULL, NULL, NULL, NULL, '2019-04-19 01:43:15', '2019-04-19 07:55:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(32, 8, 8, '2019-04-19 01:41:19', '2019-04-19 01:41:19'),
(33, 12, 8, '2019-04-19 01:41:19', '2019-04-19 01:41:19'),
(36, 8, 19, '2019-04-19 07:55:44', '2019-04-19 07:55:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `image`, `link`, `content`, `status`, `created_at`, `updated_at`) VALUES
(17, 'Slide 2', '1555473985_slider.jpg', '#', '#', 1, '2019-04-16 20:52:34', '2019-04-16 21:06:59'),
(18, 'Slide 3', '1555473991_slider.jpg', '#', '#', 1, '2019-04-16 20:52:49', '2019-04-16 21:07:04'),
(19, 'Slide 4', '1555473997_slider.jpg', '#', '#', 1, '2019-04-16 20:52:49', '2019-04-16 21:07:10'),
(20, 'Slide 5', '1555474005_slider.jpg', '#', '#', 1, '2019-04-16 20:52:49', '2019-04-16 21:07:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `level`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gco_admin', 'test@gmail.com', 'uploads/user/1555386799-12.jpg', 1, '$2y$10$2QJRFtvY8BxSOdPTJ1c2R.iAGoAs5r6e0A2eshYhi61O6uQB0G9oy', '3J6ENdat826WhzGRFyGVAfViY9gRsTwmstkDbGVm', NULL, '2019-04-15 20:53:19'),
(2, 'admin', 'nvtrong393@gmail.com', 'uploads/user/1555387362-30.jpg', 1, '$2y$10$9gkE5p91uiMrlJE1LCOz..88AotxK5sUXH9nnixcg311wnpsZ4cHq', '3J6ENdat826WhzGRFyGVAfViY9gRsTwmstkDbGVm', NULL, '2019-04-15 21:02:42');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `confighome`
--
ALTER TABLE `confighome`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `custommer`
--
ALTER TABLE `custommer`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
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
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `confighome`
--
ALTER TABLE `confighome`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `custommer`
--
ALTER TABLE `custommer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
