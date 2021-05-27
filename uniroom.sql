-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 03, 2021 lúc 03:28 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `uniroom`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `did` int(11) NOT NULL,
  `dname` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`did`, `dname`) VALUES
(1, 'Hải Châu'),
(2, 'Cẩm Lệ'),
(3, 'Thanh Khê'),
(4, 'Liên Chiểu'),
(5, 'Ngũ Hành Sơn'),
(6, 'Sơn Trà');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `content` text COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`fid`, `fullname`, `email`, `subject`, `content`) VALUES
(1, 'as', 'luongngochoang0@gmail.com', 'a', 'sdsđsadsa'),
(2, 'asád', 'luongngochoang3@gmail.com', 'a', 'dá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `guides`
--

CREATE TABLE `guides` (
  `gid` int(11) NOT NULL,
  `gname` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `content` text COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `guides`
--

INSERT INTO `guides` (`gid`, `gname`, `content`) VALUES
(1, 'dffds', 'Nhà trọ hay quán trọ là những ngôi nhà ở hay là cơ sở, công trình kiến ​​trúc được xây dựng hoặc sử dụng để cung cấp cho du khách có thể tìm kiếm chỗ ở, ngủ lại qua đêm và có thể được cung cấp thức ăn uống và phải trả cho người chủ trọ một khoản phí là tiền thuê trọ. Nhà trọ thường nằm ở mặt tiền các đường phố nhưng cũng có thể nằm trong các hẻm phố.\r\n\r\nNhà trọ có thể phân chia thành nhiều loại khác nhau, các quán trọ là những nhà trọ phục vụ cho các du khách hoặc người đi công tác có nhu cầu ngủ qua đêm nhưng không chọn hình thức khách sạn vì lý do giá cả hoặc các thủ tục. Nhà trọ hay phòng trọ là những cơ sở (nhà nguyên căn hoặc một phòng trong một tòa nhà hoặc dãy nhà) dùng để cho thuê dài hạn đối với các đối tượng như sinh viên, công nhân, người lao động, thợ may...'),
(2, 'dffdssa', 'dsfffffffffdsa'),
(3, 'dffdsads', 'dsfffffffffád');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mails`
--

CREATE TABLE `mails` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `did` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `mails`
--

INSERT INTO `mails` (`id`, `email`, `did`) VALUES
(1, 'luongngochoang0@gmail.com', 1),
(2, 'truongcongminhqn@gmail.com', 1),
(3, 'locdinh.20012000@gmail.com', 1),
(4, 'congphucqs@gmail.com', 1),
(5, 'minhzon6@gmail.com', 1),
(6, 'nguyenthitonhu3003@gmail.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_520_ci NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `area` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `wid` int(11) NOT NULL,
  `add_detail` text COLLATE utf8_unicode_520_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`pid`, `pname`, `username`, `description`, `date_create`, `area`, `picture`, `status`, `wid`, `add_detail`, `price`) VALUES
(1, 'aa1', 'hoang', 'asdsad', '2021-04-26 02:02:04', 1, 'Thiết-kế-website-bất-động-sản-đẹp-40912896127700.jpg', 1, 1, '64 kk', 1),
(3, 'aa', 'hoang', 'asdsad', '2021-04-26 02:02:04', 1, 'Thiết-kế-website-bất-động-sản-đẹp-40912896127700.jpg', 0, 1, '64 kk', 1),
(4, 'a213', '', 'asdsad', '2021-05-02 11:59:18', 1, '131984080_216197376729116_6907900939794997218_n-595219656076100.jpg', 0, 0, '64 kk', 12),
(5, 'a', '', 'asdsad', '2021-05-02 11:59:40', 1, '107516739_4312634612110636_1935061868219431656_o-595242149019800.jpg', 1, 20, '64 kk', 12),
(6, 'aaa', 'admin', 'asdsad', '2021-05-02 15:01:06', 1, '', 0, 0, '64 kksad', 123),
(7, 'aaa', 'admin', 'asdsad', '2021-05-02 15:01:34', 1, 'download (6)-15175836215700.jpg', 1, 30, '64 kk', 12),
(8, 'aa1s', 'admin', 'asdsad', '2021-05-02 15:01:58', 12, 'download (5)-15165159532800.jpg', 1, 39, '64 kk', 1212),
(9, 'asad', '', 'Nhà trọ hay quán trọ là những ngôi nhà ở hay là cơ sở, công trình kiến ​​trúc được xây dựng hoặc sử dụng để cung cấp cho du khách có thể tìm kiếm chỗ ở, ngủ lại qua đêm và có thể được cung cấp thức ăn uống và phải trả cho người chủ trọ một khoản phí là tiền thuê trọ. Nhà trọ thường nằm ở mặt tiền các đường phố nhưng cũng có thể nằm trong các hẻm phố.Nhà trọ có thể phân chia thành nhiều loại khác nhau, các quán trọ là những nhà trọ phục vụ cho các du khách hoặc người đi công tác có nhu cầu ngủ qua đêm nhưng không chọn hình thức khách sạn vì lý do giá cả hoặc các thủ tục. Nhà trọ hay phòng trọ là những cơ sở (nhà nguyên căn hoặc một phòng trong một tòa nhà hoặc dãy nhà) dùng để cho thuê dài hạn đối với các đối tượng như sinh viên, công nhân, người lao động, thợ may...', '2021-05-02 16:01:38', 1, 'logo-15153222192200.jpg', 0, 1, '64 kk', 12),
(10, 'e từng tuyên bố rsssssadsa', '', 'ưe', '2021-05-03 12:58:20', 1, '', 0, 0, '12', 1),
(11, 'Wikipedia được coi cậy.[6] Năm 2018, Faceboo', '', 'ad', '2021-05-03 12:58:58', 1, '', 0, 0, '64 kk', 12),
(12, 'Tên quá dài!áddddddddddddáddddđTên quá dài!áddddddddddddáddddđTên quá dài!áddddddddddddáddddđTên quá dài!áddddddddddddáddddđTên quá dài!áddddddddddddáddddđTên quá dài!áddddddddddddáddddđ', 'admin', 'dád', '2021-05-03 13:01:11', 1, '107516739_4312634612110636_1935061868219431656_o-36022521385300.jpg', 1, 1, '64 kksad', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER'),
(3, 'ROLE_MODIFIER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `universities`
--

CREATE TABLE `universities` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `universities`
--

INSERT INTO `universities` (`uid`, `name`) VALUES
(1, 'Đại học Kinh Tế'),
(2, 'Đại học Duy Tân'),
(3, 'Đại học Bách Khoa'),
(4, 'Đại học Ngoại Ngữ'),
(5, 'Đại học Đông Á'),
(6, 'Đại học Sư phạm'),
(7, 'Đại học Sư phạm Kỹ thuật'),
(8, 'Đại học Kỹ thuật Y dược');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `enabled` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `password`, `role_id`, `enabled`) VALUES
(1, 'admin', 'as', '$2a$10$QKKbH8aPbf5ZwoLFfIlwreCFuMg5I5PSrrmrl94/Ut6TYmuZXKrca', 1, 1),
(2, 'a', 'assssssssssss', '$2a$10$QKKbH8aPbf5ZwoLFfIlwreCFuMg5I5PSrrmrl94/Ut6TYmuZXKrca', 2, 1),
(3, 'sssssssssssssss', 'sssssssssssssssss', '$2a$10$965BkESRh.1hw.iLOKa/h.o3OWzYm2nWBHZI2dl.ioV2HtilnX2Pi', 2, 1),
(5, '1811215141052', 'Lương Ngọc Hoàng', '$2a$10$QPNyJ4kuN1isQENhCrXf4u08zKTrVtQHqSkTbs0ROpMp4jCqtMPcW', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wards`
--

CREATE TABLE `wards` (
  `wid` int(1) NOT NULL,
  `wname` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wards`
--

INSERT INTO `wards` (`wid`, `wname`, `did`) VALUES
(1, 'Hải Châu 1', 1),
(2, 'Hải Châu 2', 1),
(3, 'Bình Hiên', 1),
(4, 'Bình Thuận', 1),
(5, 'Nam Dương', 1),
(6, 'Hòa Cường Bắc', 1),
(7, 'Hòa Cường Nam ', 1),
(8, 'Hòa Thuận Nam', 1),
(9, 'Hòa Thuận Tây', 1),
(10, 'Phước Ninh', 1),
(11, 'Thạch Thang', 1),
(12, 'Thanh Bình', 1),
(13, 'Thuận Phước', 1),
(14, 'Hòa An', 2),
(15, 'Hòa Phát', 2),
(16, 'Hòa Thọ Đông', 2),
(17, 'Hòa Thọ Tây', 2),
(18, 'Hòa Xuân', 2),
(19, 'Khuê Trung', 2),
(20, 'An Khê', 3),
(21, 'Chính Gián', 3),
(22, 'Hòa Khê', 3),
(23, 'Tam Thuận', 3),
(24, 'Tân Chính', 3),
(25, 'Thạc Gián', 3),
(26, 'Thanh Khê Đông', 3),
(27, 'Thanh Khê Tây', 3),
(28, 'Vĩnh Trung', 3),
(29, 'Xuân Hà', 3),
(30, 'Hòa Hiệp Bắc', 4),
(31, 'Hòa Hiệp Nam', 4),
(32, 'Hòa Khánh Bắc', 4),
(33, 'Hòa Khánh Nam', 4),
(34, 'Hòa Minh', 4),
(35, 'Hòa Hải', 5),
(36, 'Hòa Quý', 5),
(37, 'Khuê Mỹ', 5),
(38, 'Mỹ An', 5),
(39, 'An Hải Bắc', 6),
(40, 'An Hải Đông', 6),
(41, 'An Hải Tây', 6),
(42, 'Mân Thái', 6),
(43, 'Nại Hiên Đông', 6),
(44, 'Phước Mỹ', 6),
(45, 'Thọ Quang', 6);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`did`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Chỉ mục cho bảng `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`gid`);

--
-- Chỉ mục cho bảng `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pid`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`uid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `guides`
--
ALTER TABLE `guides`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `universities`
--
ALTER TABLE `universities`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `wards`
--
ALTER TABLE `wards`
  MODIFY `wid` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
