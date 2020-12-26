-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2020 lúc 07:31 PM
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
-- Cơ sở dữ liệu: `quanshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'admin1', 'admin1@gmail.com', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(14, 'Việt Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(22, 'Quần áo nam và nữ'),
(23, 'Giày / Dép'),
(24, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(7, 'ngominhquan1999', 'TPHCM', 'adsad', 'hcm', '1111', '111111111', '123@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(34, 'Áo Khoác Hoodie Thiết Kế C03', '', '50', '0', '50', 22, 14, '<p><span>Chất liệu ch&iacute;nh : Vảy c&aacute; ch&eacute;o</span><br /><span>Th&agrave;nh phần: 95%cotton 5%spandex</span><br /><span>Co d&atilde;n 4 chiều n&ecirc;n tạo được sự thoải m&aacute;i khi mặc</span><br /><span>Vải thấm h&uacute;t mồ h&ocirc;i tốt, tho&aacute;ng kh&iacute;</span></p>', 0, '325000', '747aa3e983.jpg'),
(35, 'Áo Khoác Hoodie Văn Hiến Chi Bang Ver1 Thổ', '', '50', '0', '50', 22, 14, '<p><span>Chất liệu: Vảy c&aacute; ch&eacute;o</span><br /><span>Th&agrave;nh phần: 95%cotton 5%spandex</span><br /><span>Co d&atilde;n 4 chiều n&ecirc;n tạo được sự thoải m&aacute;i khi mặc</span><br /><span>Vải thấm h&uacute;t mồ h&ocirc;i tốt, tho&aacute;ng kh&iacute;</span></p>', 0, '350000', '36c18412c9.jpg'),
(36, 'Áo Thun Anubis Ver2', '', '50', '0', '50', 22, 14, '<p><span>Chất liệu: Cotton 2 chiều</span><br /><span>Th&agrave;nh phần: 100% Cotton</span><br /><span>- Co d&atilde;n 2 chiều</span><br /><span>- Thấm h&uacute;t mồ h&ocirc;i tốt mang lại cảm gi&aacute;c tho&aacute;ng m&aacute;t</span><br /><span>HDSD:</span><br /><span>- Giặt tay để sản phẩm giữ được độ bền cao</span><br /><span>- Ủi sản phẩm bằng b&agrave;n ủi hơi nước hoặc ủi khi sản phẩm c&ograve;n ẩm để dễ d&agrave;ng l&agrave;m phẳng</span></p>', 0, '185000', '2d44bad5e4.jpg'),
(37, 'Áo Thun Thiết Kế BG03', '', '50', '0', '50', 22, 14, '<p><span>Chất liệu: Cotton 2 chiều</span><br /><span>Th&agrave;nh phần: 100% Cotton</span><br /><span>- Co d&atilde;n 2 chiều</span><br /><span>- Thấm h&uacute;t mồ h&ocirc;i tốt mang lại cảm gi&aacute;c tho&aacute;ng m&aacute;t</span><br /><span>- H&igrave;nh in: kỹ thuật in dẻo, in trame</span></p>', 0, '185000', '80af4f5ba3.jpg'),
(38, 'Balo A Cửu Long Ver1', '', '50', '0', '50', 24, 14, '<p><span>Balo A Cửu Long Ver1</span><br /><br /><span>- Chất liệu : 840HD + L&oacute;t 210D PU</span><br /><span>- Lưng balo l&agrave; 1 tấm EVA chống sốc cao cấp</span><br /><span>- Quai đeo c&oacute; lớp đệm d&agrave;y, gi&uacute;p &ecirc;m &aacute;i, chống đau lưng khi đeo</span><br /><span>Thiết kế:</span><br /><span>+ In dẻo con Rồng thời nh&agrave; Nguyễn</span><br /><span>+ Viền g&acirc;n phản quang ở tất cả c&aacute;c t&uacute;i</span><br /><span>+ Phối d&acirc;y viền phản quang ở t&uacute;i</span><br /><span>K&iacute;ch thước: 43 x 30 x 13 cm</span><br /><span>(*) Tặng k&egrave;m:</span><br /><span>+ Strap phản quang Cửu Long Giang</span><br /><span>+ T&uacute;i giấy thiết kế ri&ecirc;ng</span></p>', 0, '499000', 'bd8c7357e0.jpg'),
(39, 'Dép Đơn Giản A14', '', '50', '0', '50', 23, 14, '<p><span>D&eacute;p Nam Y2010 A14</span><br /><br /><span>- Đế cao l&ecirc;n đến 4cm: Hack chiều cao \"khủng\"</span><br /><span>Chất liệu:</span><br /><span>- Vải Mesh+ eva 2mm</span><br /><span>- D&acirc;y đai nylon</span><br /><span>- Logo TPR Y2010</span><br /><span>- Khoen D</span><br /><span>- viền thun lạnh</span><br /><span>- Đế KN004 phylon - mặt đế cao su</span></p>', 0, '279000', '17da9d21be.jpg'),
(40, 'Giày Thời Trang Thiết Kế G08 BD-A52', '1', '50', '0', '50', 23, 14, '<p><span>Chất liệu PHẢN QUANG ĐA SẮC ấn tượng</span><br /><span>- C&oacute; m&agrave;u đen &aacute;nh xanh dương nhẹ khi ở &aacute;nh s&aacute;ng thường</span><br /><span>- Phản quang đa sắc nhiều m&agrave;u ở dưới &aacute;nh s&aacute;ng mạnh.</span><br /><br /><span>Chất liệu</span><br /><span>- Vải dệt Knit &eacute;p cực quang</span><br /><span>- Phủ lưới polyester</span><br /><span>- L&oacute;t vải mesh +Pu foam 5mm</span><br /><span>- Đế phylon si&ecirc;u nhẹ 50-55 shore</span><br /><span>- D&acirc;y gi&agrave;y cotton tr&ograve;n 5mm</span><br /><span>- Trong: Talon PU foam mousse mũi 3mm g&oacute;t 10 mm + simili ( l&oacute;t gi&agrave;y )</span><br /><br /><span>Thiết kế</span><br /><span>- Thiết kế đơn giản tinh tế</span><br /><span>- Form gi&agrave;y gọn nhẹ</span><br /><span>- Full box trang trọng</span></p>', 1, '375000', 'e758572c61.jpg'),
(41, 'PKTT Nón Anubis Ver1', '', '50', '0', '50', 24, 14, '<p><span>Chất liệu : Kaki - phối vải nhung</span><br /><span>Th&agrave;nh phần: 100% cotton</span><br /><span>- Kỹ thuật lazer chữ ANUBIS</span><br /><span>- Logo Anubis th&ecirc;u</span></p>', 0, '140000', 'f2e3abfaf1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(14, 'Men collection', 'a7008a501b.jpg', 1),
(15, 'Men collection', 'cc6359cdb3.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(6, 7, 41, 'PKTT Nón Anubis Ver1', '140000', 'f2e3abfaf1.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
