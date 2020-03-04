-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 02, 2020 lúc 11:46 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mysql_bai_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkycungcap`
--

CREATE TABLE `dangkycungcap` (
  `MaDKCC` char(5) NOT NULL,
  `MaNhaCC` char(6) DEFAULT NULL,
  `MaLoaiDV` char(4) DEFAULT NULL,
  `DongXe` char(10) DEFAULT NULL,
  `MaMP` char(4) DEFAULT NULL,
  `NgayBatDauCungCap` date DEFAULT NULL,
  `NgayKetThucCungCap` date DEFAULT NULL,
  `SoLuongXeDangKy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dangkycungcap`
--

INSERT INTO `dangkycungcap` (`MaDKCC`, `MaNhaCC`, `MaLoaiDV`, `DongXe`, `MaMP`, `NgayBatDauCungCap`, `NgayKetThucCungCap`, `SoLuongXeDangKy`) VALUES
('DK001', 'NCC001', 'DV01', 'Hiace', 'MP01', '2015-11-20', '2016-11-20', 4),
('DK002', 'NCC002', 'DV02', 'Vios', 'MP02', '2015-11-20', '2017-11-20', 3),
('DK003', 'NCC003', 'DV03', 'Escape', 'MP03', '2017-11-20', '2018-11-20', 5),
('DK004', 'NCC005', 'DV01', 'Cerato', 'MP04', '2015-11-20', '2019-11-20', 7),
('DK005', 'NCC002', 'DV02', 'Forte', 'MP03', '2019-11-20', '2020-11-20', 1),
('DK006', 'NCC004', 'DV03', 'Starex', 'MP04', '2016-11-10', '2021-11-20', 2),
('DK007', 'NCC005', 'DV01', 'Cerato', 'MP03', '2015-11-30', '2016-01-25', 8),
('DK008', 'NCC006', 'DV01', 'Vios', 'MP02', '2016-02-28', '2016-08-15', 9),
('DK009', 'NCC005', 'DV03', 'Grand-i10', 'MP02', '2016-04-27', '2017-04-30', 10),
('DK010', 'NCC006', 'DV01', 'Forte', 'MP02', '2015-11-21', '2016-02-22', 4),
('DK011', 'NCC007', 'DV01', 'Forte', 'MP01', '2016-12-25', '2017-02-20', 5),
('DK012', 'NCC007', 'DV03', 'Cerato', 'MP01', '2016-04-14', '2017-12-20', 6),
('DK013', 'NCC003', 'DV02', 'Cerato', 'MP01', '2015-12-21', '2016-12-21', 8),
('DK014', 'NCC008', 'DV02', 'Cerato', 'MP01', '2016-05-20', '2016-12-30', 1),
('DK015', 'NCC003', 'DV01', 'Hiace', 'MP02', '2018-04-24', '2019-11-20', 6),
('DK016', 'NCC001', 'DV03', 'Grand-i10', 'MP02', '2016-06-22', '2016-12-21', 8),
('DK017', 'NCC002', 'DV03', 'Cerato', 'MP03', '2016-09-30', '2019-09-30', 4),
('DK018', 'NCC008', 'DV03', 'Escape', 'MP04', '2017-12-13', '2018-09-30', 2),
('DK019', 'NCC003', 'DV03', 'Escape', 'MP03', '2016-01-24', '2016-12-30', 8),
('DK020', 'NCC002', 'DV03', 'Cerato', 'MP04', '2016-05-03', '2017-10-21', 7),
('DK021', 'NCC006', 'DV01', 'Forte', 'MP02', '2015-01-30', '2016-12-30', 9),
('DK022', 'NCC002', 'DV02', 'Cerato', 'MP04', '2016-07-25', '2017-12-30', 6),
('DK023', 'NCC002', 'DV01', 'Forte', 'MP03', '2017-11-30', '2018-05-20', 5),
('DK024', 'NCC003', 'DV03', 'Forte', 'MP04', '2017-12-23', '2019-11-30', 8),
('DK025', 'NCC003', 'DV03', 'Hiace', 'MP02', '2016-08-24', '2017-10-25', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongxe`
--

CREATE TABLE `dongxe` (
  `DongXe` char(10) NOT NULL,
  `HangXe` char(10) DEFAULT NULL,
  `SoChoNguoi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dongxe`
--

INSERT INTO `dongxe` (`DongXe`, `HangXe`, `SoChoNguoi`) VALUES
('Cerato', 'KIA', 7),
('Escape', 'Ford', 5),
('Forte', 'KIA', 5),
('Grand-i10', 'Huyndai', 7),
('Hiace', 'Toyota', 16),
('Starex', 'Huyndai', 7),
('Vios', 'Toyota', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaidichvu`
--

CREATE TABLE `loaidichvu` (
  `MaLoaiDV` char(4) NOT NULL,
  `TenLoaiDV` char(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaidichvu`
--

INSERT INTO `loaidichvu` (`MaLoaiDV`, `TenLoaiDV`) VALUES
('DV01', 'Dịch vụ xe taxi'),
('DV02', 'Dịch vụ xe buýt công cộng theo tuyến cố định'),
('DV03', 'Dịch vụ xe cho thuê theo hợp đồng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mucphi`
--

CREATE TABLE `mucphi` (
  `MaMP` char(4) NOT NULL,
  `DonGia` decimal(5,3) DEFAULT NULL,
  `MoTa` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mucphi`
--

INSERT INTO `mucphi` (`MaMP`, `DonGia`, `MoTa`) VALUES
('MP01', '10.000', 'Áp dụng từ 1/2015'),
('MP02', '15.000', 'Áp dụng từ 2/2015'),
('MP03', '20.000', 'Áp dụng từ 1/2010'),
('MP04', '25.000', 'Áp dụng từ 2/2011');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNhaCC` char(6) NOT NULL,
  `TenNhaCC` char(30) DEFAULT NULL,
  `DiaChi` char(15) DEFAULT NULL,
  `SoDT` varchar(11) DEFAULT NULL,
  `MaSoThue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNhaCC`, `TenNhaCC`, `DiaChi`, `SoDT`, `MaSoThue`) VALUES
('NCC001', 'Cty TNHH Toàn Pháp', 'Hai Chau', '05113999888', 568941),
('NCC002', 'Cty Cố Phần Đông Du', 'Lien Chieu', '05113999889', 456789),
('NCC003', 'Ông Nguyễn Văn A', 'Hoa Thuan', '05113999890', 321456),
('NCC004', 'Cty Cổ Phần Toàn Cầu Xanh', 'Hai Chau', '05113658945', 513364),
('NCC005', 'Cty TNHH AMA', 'Thanh Khe', '05113875466', 546546),
('NCC006', 'Bà Trần Thị Bích Vân', 'Lien Chieu', '05113587469', 524545),
('NCC007', 'Cty TNHH Phan Thành', 'Thanh Khe', '05113987456', 113021),
('NCC008', 'Ông Phan Đình Nam', 'Hoa Thuan', '05113532456', 121230),
('NCC009', 'Tập Đoàn Đông Nam Á', 'Lien Chieu', '05113987121', 533654),
('NCC010', 'Cty Cổ Phần Rạng Đông', 'Lien Chieu', '05113569654', 187864);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dangkycungcap`
--
ALTER TABLE `dangkycungcap`
  ADD PRIMARY KEY (`MaDKCC`),
  ADD KEY `MaNhaCC` (`MaNhaCC`),
  ADD KEY `MaLoaiDV` (`MaLoaiDV`),
  ADD KEY `DongXe` (`DongXe`),
  ADD KEY `MaMP` (`MaMP`);

--
-- Chỉ mục cho bảng `dongxe`
--
ALTER TABLE `dongxe`
  ADD PRIMARY KEY (`DongXe`);

--
-- Chỉ mục cho bảng `loaidichvu`
--
ALTER TABLE `loaidichvu`
  ADD PRIMARY KEY (`MaLoaiDV`);

--
-- Chỉ mục cho bảng `mucphi`
--
ALTER TABLE `mucphi`
  ADD PRIMARY KEY (`MaMP`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNhaCC`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dangkycungcap`
--
ALTER TABLE `dangkycungcap`
  ADD CONSTRAINT `dangkycungcap_ibfk_1` FOREIGN KEY (`MaNhaCC`) REFERENCES `nhacungcap` (`MaNhaCC`),
  ADD CONSTRAINT `dangkycungcap_ibfk_2` FOREIGN KEY (`MaLoaiDV`) REFERENCES `loaidichvu` (`MaLoaiDV`),
  ADD CONSTRAINT `dangkycungcap_ibfk_3` FOREIGN KEY (`DongXe`) REFERENCES `dongxe` (`DongXe`),
  ADD CONSTRAINT `dangkycungcap_ibfk_4` FOREIGN KEY (`MaMP`) REFERENCES `mucphi` (`MaMP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
