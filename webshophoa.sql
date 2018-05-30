-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2017 at 06:51 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshophoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietsp`
--

CREATE TABLE `chitietsp` (
  `id_sp` int(11) NOT NULL,
  `tensp` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(100) NOT NULL,
  `mota` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_loaisp` int(100) NOT NULL,
  `thutu` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietsp`
--

INSERT INTO `chitietsp` (`id_sp`, `tensp`, `hinhanh`, `gia`, `mota`, `id_loaisp`, `thutu`) VALUES
(1, 'Uyên ương hồ điệp', 'hh1.jpg', 700000, 'Giỏ hoa chúc mừng sinh nhật Uyên ương hồ điệp chính là món quà xinh xắn, ý nghĩa và vô cùng đẹp mắt mà bạn có thể dành tặng cho những người thân yêu của mình', 9, 0),
(2, 'Giấc Mộng Tình yêu', 'hh9.jpg', 600000, 'Giỏ hoa dịu dàng xinh đẹp Giấc mộng tình yêu chính là món quà ngọt ngào và thân thương ý nghĩa để các chàng trai dành tặng cho người mà mình yêu thương', 9, 0),
(3, 'Cầu Vồng Tình Yêu', 'hh3.jpg', 400000, 'Cho Tình Yêu thêm màu sắc và ngọt ngào hơn', 9, 0),
(4, 'Chào Ngày Mới', 'hh4.jpg', 900000, 'Giỏ hoa xinh đẹp rạng ngời Chào ngày mới là sự kết hợp từ những đóa hồng da, hồng môn, hồng dâu, lan hồ điệp cùng nhiều những cành lá phụ khác', 9, 0),
(5, 'Lối Mộng', 'hh5.jpg', 500000, 'Lối mộng  gồm 11 bông hồng tím cùng hoa thạch thảo tím và hoa bạch môn', 9, 0),
(6, 'Thay Lời Xin Lỗi', 'hh6.jpg', 400000, 'Gữi những lời xin lỗi ngọt ngào nhất đến cho mọi người', 9, 0),
(7, 'Lời Âu Yếm', 'hh7.jpg', 800000, 'Dành những lời ngọt ngào nhất đến với người mình yêu', 9, 0),
(8, 'Giao Mùa', 'hh8.jpg', 600000, 'Giao mùa kết nối yêu thương', 9, 0),
(9, 'Tình Trong Sáng', 'hht1.jpg', 500000, 'Hộp hoa tình yêu Tình trong sáng gồm 11 bông hoa hồng tím kết thành hình trái tim trên nền xanh trắng của một số hoa lá phụ kiện khác tạo nên một phong cách rất độc đáo', 10, 0),
(10, 'Sắc Tím Cho Em', 'hht2.jpg', 900000, 'Bó hoa tình yêu Sắc tím cho em  gồm 99 hoa hồng tím tự nhiên kết hợp với một số phụ kiện khác', 10, 0),
(11, 'Bình Hoa Cao Cấp', 'hht3.jpg', 600000, 'Bình hoa thủy tinh với lan hồ điệp tím, hồng tím, kỳ lân tím và lục môn tạo nên bình hoa sang trọng, quý phái', 10, 0),
(12, 'Phong Cách Hoàng Gia', 'hht4.jpg', 800000, 'Chậu hoa tươi phong cách Hoàng Gia là sự kết hợp giữa sắc tím của hồng tím, sắc tím của calimero, sắc hồng của cẩm tú cầu', 10, 0),
(13, 'Sắc Tím Ngọt Ngào', 'hht9.jpg', 300000, 'Bó hoa tình yêu Sắc tím  gồm 30 hoa tươi thắm kết hợp với sao tím lá xanh tạo nên bó hoa sang trọng, quý phái', 10, 0),
(14, 'TÌnh Yêu Chung Thủy', 'hht6.jpg', 400000, 'Bó hoa tình yêu Memory gồm 22 hoa hồng tím tự nhiên Tượng trưng cho tình yêu chung thủy, sâu sắc', 10, 0),
(15, 'Ngõ Lời Yêu', 'hht7.jpg', 700000, 'Bó hoa tình yêu Ngõ lời yêu gồm 13 bông hoa hồng tím và một số phụ kiện vô cùng dễ thương', 10, 0),
(16, 'Hạnh Phúc Là Em', 'hht8.jpg', 600000, 'Hộp hoa hồng tím tình yêu Hạnh phúc chính là em gồm 10 hoa hồng tìm, chuỗi ngọc đỏ tượng trưng cho tỉnh yêu thủy chung, nồng cháy', 10, 0),
(17, 'Tình Mãi Xanh', 'hhx1.jpg', 300000, 'Bó hoa tình yêu Tình mãi xanh gồm 32 bông hồng xịt màu xanh. Bó hoa như một bản tình ca cho một tình yêu không tuổi, mãi mãi và mãi mãi chỉ có em.', 11, 0),
(18, 'Mãi Xanh Tình Yêu', 'hhx2.jpg', 500000, 'Bó hoa tình yêu Mãi xanh tình yêu gồm 25 hồng xanh xịt màu phối với hoa Ngọc trong đá như một lời tỏ tình hết sức dễ thương.', 11, 0),
(19, 'Dấu Chân Tình Yêu', 'hhx3.jpg', 400000, 'Bó hoa hồng mừng sinh nhật tình yêu Dấu chân tình yêu gồm 30 hồng xanh (xịt màu) được bó với giấy báo đơn giản và sang trọng.', 11, 0),
(20, 'Tình Yêu Vĩnh Cửu', 'hhx4.jpg', 800000, 'Bó hoa hồng xanh Tình yêu vĩnh cửu gồm 28 hoa hồng xanh xịt màu bó đơn giản tạo vẻ đẹp tự nhiên và lạ', 11, 0),
(21, 'Xanh Nhẹ Nhàng', 'hhx5.jpg', 700000, 'Bó hoa tình yêu Tình mãi xanh gồm 11 bông hồng xanh xịt màu với giấy gói và phụ kiện độc đáo', 11, 0),
(22, 'Tình yêu Trong Sáng', 'hhx6.jpg', 200000, 'Truyền thuyết kể rằng, “nếu ta trồng một cây hoa hồng bằng cả trái tim dành cho người mình yêu thương thì nó sẽ nở ra một bông hoa hồng xanh', 11, 0),
(23, 'Chỉ Riêng Em', 'hhx7.jpg', 100000, 'Bó hoa tình yêu này thích hợp với những ai yêu thích màu xanh', 11, 0),
(24, 'Ngọt Ngào', 'hhx8.jpg', 600000, 'Bó hoa xanh ngọt ngào dành tặng cho người yêu. Tình yêu thăng hoa bền vững', 11, 0),
(25, 'Mãi Mãi Sung Túc', 'hl1.jpg', 900000, 'Kệ hoa khai trương 3 tầng Mãi mãi sung túc chính là món quà tặng thân thương, ý nghĩa và đầy sang trọng để chúng ta dành tặng cho đối tác, khách hàng, cấp trên và những người thân', 12, 0),
(26, 'Khu Vườn Mùa Xuân', 'hl2.jpg', 700000, 'Mẫu hoa Khu vườn mùa xuân chính là món quà sinh nhật mà chúng ta có thể dành tặng cho các cô nàng với lời cầu chúc về một ngày vui vẻ và ngập tràn hạnh phúc', 12, 0),
(27, 'Câu Hò Ví Dặm', 'hl3.jpg', 400000, 'Hoa chính là món quà rất đỗi thân thương và tuyệt diệu mà mẹ thiên nhiên đã ưu ái để ban tặng cho loài người chúng ta. Và việc dùng hoa làm quà tặng cho những người thân yêu chính là điều được nhiều người thực hiện. Lấy ý tưởng từ những lời hát ru ngọt ngào Hoa Sài Gòn đã cho ra đời sản phẩm Câu hò ví dặm', 12, 0),
(28, 'Câu Hát NGày Xưa', 'hl4.jpg', 500000, 'Bình hoa Câu hát ngày xưa chính là món quà tuyệt vời giúp mang đến một không khí ngập tràn vui tươi và tuyệt diệu. Bình hoa là sự kết hợp từ rất nhiều những loại hoa khác nhau như là lan hồ điệp tím, hồng da, hồng tím, lục môn và đồng thời có sự hiện diện của cành hoa thiên điểu đẹp mắt', 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_hoadon`
--

CREATE TABLE `chitiet_hoadon` (
  `Mahd` int(10) UNSIGNED NOT NULL,
  `id_sp` int(10) NOT NULL,
  `SoLuong` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitiet_hoadon`
--

INSERT INTO `chitiet_hoadon` (`Mahd`, `id_sp`, `SoLuong`) VALUES
(1, 6, 1),
(1, 5, 1),
(1, 8, 1),
(1, 1, 1),
(2, 1, 1),
(2, 28, 1),
(3, 10, 1),
(2, 3, 1),
(2, 11, 1),
(2, 8, 1),
(3, 28, 1),
(4, 17, 1),
(5, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `Mahd` int(10) UNSIGNED NOT NULL,
  `Ngay` date NOT NULL,
  `HoTen` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sdt` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TongTien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`Mahd`, `Ngay`, `HoTen`, `Sdt`, `DiaChi`, `TongTien`) VALUES
(1, '2017-12-13', 'Nguyễn Trung Nghĩa', '01226114548', 'Quy nhơn bình định', 2200000);

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `id_loaisp` int(11) NOT NULL,
  `tenloaisp` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`id_loaisp`, `tenloaisp`, `thutu`) VALUES
(9, 'Hoa Hồng', 1),
(10, 'Hoa Hồng Tím', 2),
(11, 'Hoa Hông Xanh', 3),
(12, 'Hoa Lan', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietsp`
--
ALTER TABLE `chitietsp`
  ADD PRIMARY KEY (`id_sp`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`Mahd`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`id_loaisp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietsp`
--
ALTER TABLE `chitietsp`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `id_loaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
