-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 19, 2022 lúc 09:44 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `actor`
--

CREATE TABLE `actor` (
  `actor_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `actor`
--

INSERT INTO `actor` (`actor_id`, `name`, `id`, `img`) VALUES
(1, 'vanqui', 1, 'actor1.jpg'),
(2, 'hải', 1, 'bonchuyenbay.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(10) NOT NULL,
  `comment_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_text`, `id`, `username`) VALUES
(43, 'Phim rất hay', 2, 'vanqui0711'),
(44, 'phim khá hay', 3, 'vanqui0711'),
(45, 'phim dở quá', 2, 'vanqui0711'),
(46, 'phim như cức', 3, '<br />\r\n<b>Notice</b>:  Undefi'),
(47, 'ádads', 2, 'vanqui0711'),
(48, '123', 25, 'vanqui0711'),
(49, 'ádasd', 29, 'vanqui0711'),
(50, 'qưeqew', 4, 'vanqui0711');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie`
--

CREATE TABLE `movie` (
  `id` int(30) NOT NULL,
  `namemovie_vn` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namemovie_el` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(30) NOT NULL,
  `quality` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nation_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(100) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_des` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phimle_id` int(10) NOT NULL,
  `phimbo_id` int(10) NOT NULL,
  `year_manu` int(11) NOT NULL,
  `director` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_trailer` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_fim` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_like` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`id`, `namemovie_vn`, `namemovie_el`, `image`, `time`, `quality`, `nation_id`, `type_id`, `view`, `description`, `img_des`, `trailer_des`, `phimle_id`, `phimbo_id`, `year_manu`, `director`, `status`, `link_trailer`, `link_fim`, `number_like`) VALUES
(1, 'ĐỘI BÓNG CỦA TRẺ MỒ CÔI(2021)', '12 Mighty Orphans (2021)', 'doibongchay.jpg', 118, 'Bản đẹp', '8', '16', 6, 'Đội Bóng Của Trẻ Mồ Côi - 12 Mighty Orphans xoay quanh câu chuyện về người đàn ông Rusty Russell là một anh hùng trong chiến tranh, nhưng giờ đây anh đã nghỉ hưu và bắt đầu làm công việc huấn luyện viên. Không những thế anh cùng với gia đình đi đến Masonic Home một trại trẻ mồ côi để sinh sống. Tại đây, Rusty Russell đã cùng nhau huấn luyện những đứa trẻ có niềm đam mê với môn bóng bầu dục và tạo ra một đội tuyển từ những đứa trẻ mồ côi cho đến nhà vô địch.', 'trailerdoibongchay.npg', '', 13, 0, 2021, ' Ty Roberts', ' HD Vietsub + TM', 'https://www.youtube.com/embed/cgM_oyXE0d0', 'http://103.152.18.18/Data/English/hollywood/2021/12%20Mighty%20Orphans%20%282021%29/12.Mighty.Orphans.2021.720p.BluRay.x264.AAC-%5BYTS.MX%5D.mp4', '91'),
(2, 'NGƯỜI NHỆN KHÔNG CÒN NHÀ', 'Spider-Man: No Way Home (2021)', 'nguoinhenkhongconnha.jpg', 148, 'Bản đẹp', '12', '7', 10, 'Người Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', '', 'xem phim Người Nhện: Không Còn Nhà viesub, xem Bí Người Nhện: Không Còn Nhà vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim Spider-Man: No Way Home ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Người Nhện: Không Còn Nhà, xem Người Nhện: Không Còn Nhà tập 11, tập 12, tập 13, tập 14, tập 15, phim Người Nhện: Không Còn Nhà tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Người Nhện: Không Còn Nhà tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Người Nhện: Không Còn Nhà tap cuoi, Spider-Man: No Way Home vietsub tron bo, Người Nhện: Không Còn Nhà phim3s, Người Nhện: Không Còn Nhà motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Người Nhện: Không Còn Nhà youtube,vietsubtv, bomtan, Người Nhện: Không Còn Nhà phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Người Nhện: Không Còn Nhà full, Spider-Man: No Way Home online, Người Nhện: Không Còn Nhà Thuyết Minh, Người Nhện: Không Còn Nhà Vietsub, Người Nhện: Không Còn Nhà Lồng Tiếng', 13, 0, 2021, 'Jon Wats', 'HD Vietsub + TM', 'https://www.youtube.com/embed/o4NzWTNqSto', 'http://103.152.18.18/Data/English/hollywood/2021/Spider-Man%20No%20Way%20Home%20%282021%29/Spider%20Man%20No%20Way%20Home%202021%20720P%20CAMRip%20x265%20HEVC%20AAC%202.0%20%5Bshadow%5D.mp4', '27'),
(3, 'VENOM 2 ĐỐI MẶT TỬ THÙ', 'Venom: Let There Be Carnage (2021)', 'vemon2.jpg', 90, 'Bản đẹp', '12', '7', 20, 'là phim siêu anh hùng Mỹ sắp ra mắt dựa trên nhân vật Venom, được Columbia Pictures cùng với Marvel và Tencent Pictures đồng sản xuất. Được phân phối bởi Sony Pictures Releasing, phim sẽ là phần hậu truyện của Venom (2018). Phim được đạo diễn bởi Andy Serkis từ kịch bản của Kelly Marcel, dựa theo cốt truyện cô viết cùng với Tom Hardy (diễn viên thủ vai Venom). Phim quy tụ dàn diễn viên gồm Tom Hardy, Michelle Williams, Naomie Harris, Reid Scott, Stephen Graham và Woody Harrelson. Trong phim, Brock cố gắng xây dựng lại sự nghiệp của mình bằng cách phỏng vấn sát nhân Cletus Kasady, kẻ trở thành vật chủ của sinh vật Carnage, một sinh vật ngoài hành tinh giống Venom.18 tháng sau các sự kiện trong Venom (2018), phóng viên Eddie Brock cố gắng làm quen với việc sống như 1 vật chủ của sinh vật ngoài hành tinh Venom, kẻ ban cho anh siêu năng lực nhưng cũng khiến anh phải cảnh giác. Brock cố gắng xây dựng lại sự nghiệp của mình bằng cách phỏng vấn tên sát nhân Cletus Kasady, kẻ trở thành vật chủ của sinh vật Carnage và bỏ trốn khỏi nhà tù sau khi may mắn thoát khỏi hành quyết Venom: Let There Be Carnage (Venom 2) là bom tấn Marvel mới nhất của Sony, mới ra mắt vào ngày 1/10 vừa qua. Không chỉ tiếp nối câu chuyện của chàng phóng viên Eddie Brock sau khi quyết định chung sống với con ký sinh trùng vũ trụ trong cơ thể, bộ phim này còn trở thành giao điểm của vũ trụ điện ảnh Sony với MCU, đưa Venom và Spider-Man về chung 1 nhà. Bên cạnh đó, thành tích mà Venom 2 đạt được trên mặt trận doanh thu phòng vé cũng khá ấn tượng, nhất là trong bối cảnh dịch bệnh vẫn đang diễn biến phức tạp tại nhiều khu vực trên thế giới. Theo thống kê của BoxOfficeMojo, sau khoảng 3 tuần công chiếu, bộ phim này hiện đã thu về hơn 286 triệu USD, trong đó hơn 170 triệu đến từ quê nhà Mỹ, và gần 116 triệu đến từ các quốc gia còn lại. Ngày 3/10, theo Variety, Venom 2 trở thành phim có thành tích mở màn ấn tượng nhất tại phòng vé Bắc Mỹ trong thời dịch (tính từ tháng 3/2020 đến nay). Trước đó, Black Widow giữ kỷ lục với 80 triệu USD. Xếp sau lần lượt là Shang-Chi and the Legend of the Ten Rings (75 triệu USD) và Fast & Furious 9 (70 triệu USD).\r\nVenom 2 cũng chiếm ngôi đầu phòng vé được giữ bởi Shang-Chi and the Legend of the Ten Rings suốt tháng 9. Tom Rothman - giám đốc hãng Sony - cho biết: \"Chúng tôi rất vui mừng vì sự kiên trì và quyết định phát hành độc quyền tại rạp đã đem đến thành quả kỷ lục. Quan điểm cho rằng phòng vé đã chết thực chất là ý kiến bị phóng đại\".Doanh thu mở màn của Venom 2 thậm chí vượt xa thành tích của phần một, ra rạp năm 2018 với 80 triệu USD. Giới chuyên gia nhận xét kết quả này thực sự ấn tượng và báo hiệu sự phục hồi của phòng vé Bắc Mỹ.\r\n\r\nThành công của \"Shang-Chi và Huyền thoại thập luân\" đã khiến Sony Pictures mạnh dạn đưa bom tấn \"Venom: Let there be carnage\" ra rạp sớm trước 2 tuần so với kế hoạch.\r\nNgày 7/9, nhà sản xuất Sony Pictures đưa ra lịch phát hành mới của bom tấn \"Venom: Let there be carnage\". Cụ thể bộ phim sẽ chính thức ra mắt khán giả toàn cầu vào ngày 1/10 thay vì ngày 15/10 như kế hoạch trước đó.', 'des_vemon2.jpg', 'venom\r\nxem phim Venom 2: Đối Mặt Tử Thù viesub, xem Bí Venom 2: Đối Mặt Tử Thù vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim Venom: Let There Be Carnage ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Venom 2: Đối Mặt Tử Thù, xem Venom 2: Đối Mặt Tử Thù tập 11, tập 12, tập 13, tập 14, tập 15, phim Venom 2: Đối Mặt Tử Thù tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Venom 2: Đối Mặt Tử Thù tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Venom 2: Đối Mặt Tử Thù tap cuoi, Venom: Let There Be Carnage vietsub tron bo, Venom 2: Đối Mặt Tử Thù phim3s, Venom 2: Đối Mặt Tử Thù motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Venom 2: Đối Mặt Tử Thù youtube,vietsubtv, bomtan, Venom 2: Đối Mặt Tử Thù phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Venom 2: Đối Mặt Tử Thù full, Venom: Let There Be Carnage online, Venom 2: Đối Mặt Tử Thù Thuyết Minh, Venom 2: Đối Mặt Tử Thù Vietsub, Venom 2: Đối Mặt Tử Thù Lồng Tiến', 13, 0, 2021, 'Andy Serkis', ' HD Vietsub + TM', 'https://www.youtube.com/embed/EVWdzVtSh1I', 'http://103.152.18.18/Data/English/hollywood/2021/Venom%20Let%20There%20Be%20Carnage%20%282021%29/Venom.Let.There.Be.Carnage.2021.1080p.WEBRip.x264.AAC5.1-%5BYTS.MX%5D.mp4', '55'),
(4, 'SHANG-CHI VÀ HUYỀN THOẠI THẬP NHẪN', 'Shang-Chi and the Legend of the Ten Rings (2021)', 'sanchi.jpg', 132, 'Bản đẹp', '12,9', '9', 23, 'Bộ phim, dựa trên Marvel Comics, sẽ tập trung vào Shang-Chi; ‘Bậc thầy của Kung-Fu’. Shang-Chi là bậc thầy Kung Fu, tinh thông võ thuật. Sức mạnh của Shang-Chi đến từ hàng ngàn giờ luyện tập miệt mài và sự kỷ luật cao độ với bản thân. Siêu anh hùng võ thuật này được chính bố của mình tôi luyện, dạy dỗ để trở thành một sát thủ chuyên nghiệp và kế thừa tập đoàn tội ác của ông. Shang-Chi có lẽ không còn xa lạ với người hâm mộ truyện tranh Marvel, tuy nhiên, đây sẽ là lần đầu tiên nhân vật này được bước lên màn ảnh. Đặc biệt hơn, Shang-Chi cũng chính là nhân vật siêu anh hùng gốc Á đầu tiên của MCU được chuyển thể thành phim. Teaser trailer đầu tiên cũng hé lộ những hình ảnh thời niên thiếu của Shang-Chi, từ một cậu bé nhỏ tuổi được cha mình khổ luyện, đào tạo trong môi trường vô cùng khắc nghiệt cho tới khi trở thành một người đàn ông trưởng thành. Xuyên suốt trailer dài 2 phút là những pha phô diễn võ thuật, công phu choáng ngợp, đậm chất Á Đông, đúng như cội nguồn của nhân vật này.Shang-Chi và Huyền Thoại Thập Nhẫn là bộ phim thuộc giai đoạn 4 của Vũ trụ điện ảnh Marvel. Nhân vật này được biết đến như một bậc thầy Kung Fu, tinh thông võ thuật. Sức mạnh của Shang-Chi đến từ hàng ngàn giờ luyện tập miệt mài và sự kỷ luật cao độ với bản thân. Siêu anh hùng võ thuật này được chính bố dạy dỗ để trở thành một sát thủ chuyên nghiệp và kế thừa tập đoàn tội Lương Triều Vỹ được khán giả khen ngợi ngầu \'bá cháy\' trong \'Shang-Chi và Huyền thoại Thập Nhẫn\'\r\nLương Triều Vỹ quả rất xứng tầm với đẳng cấp của mình qua vai diễn Mandarin trong Shang-Chi và Huyền thoại Thập Nhẫn. Trong Shang-Chi và Huyền thoại Thập Nhẫn, Lương Triều Vỹ đóng vai cha của “Shang-Chi” Simu Liu, do liên quan đến vấn đề phân biệt chủng tộc, Marvel đã đem kẻ phản diện “The Mandarin” của Lương Triều Vỹ đổi thành “Wenwu”. Sau khi trailer bộ phim ra mắt, nhân vật của Lương Triều Vỹ được chú ý hơn nhân vật chính, chủ tịch Marvel – Kevin Feige đã khen Lương Triều Vỹ là “một trong những diễn viên xuất sắc nhất thời đại”. Dạo trước khi trả lời phỏng vấn báo chí, Kevin Feige đã nhắc đến Lương Triều Vỹ: “Việc mời Lương Triều Vỹ đóng vai thủ lĩnh Thập Luân, cha của Shang-Chi, phải nói là ước mơ thành hiện thực, vì anh ấy là một trong những diễn viên xuất sắc nhất của thời đại chúng ta”. Xem Trailer Phim Shang-Chi Và Huyền Thoại Thập Nhẫn Full HD', 'des_sanchi.jpg', 'Shang-Chi and the Legend of the Ten Rings Shang-Chi Và Huyền Thoại Thập Nhẫn\r\nxem phim Shang-Chi Và Huyền Thoại Thập Nhẫn viesub, xem Bí Shang-Chi Và Huyền Thoại Thập Nhẫn vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim Shang-Chi and the Legend of the Ten Rings ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Shang-Chi Và Huyền Thoại Thập Nhẫn, xem Shang-Chi Và Huyền Thoại Thập Nhẫn tập 11, tập 12, tập 13, tập 14, tập 15, phim Shang-Chi Và Huyền Thoại Thập Nhẫn tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Shang-Chi Và Huyền Thoại Thập Nhẫn tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Shang-Chi Và Huyền Thoại Thập Nhẫn tap cuoi, Shang-Chi and the Legend of the Ten Rings vietsub tron bo, Shang-Chi Và Huyền Thoại Thập Nhẫn phim3s, Shang-Chi Và Huyền Thoại Thập Nhẫn motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Shang-Chi Và Huyền Thoại Thập Nhẫn youtube,vietsubtv, bomtan, Shang-Chi Và Huyền Thoại Thập Nhẫn phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Shang-Chi Và Huyền Thoại Thập Nhẫn full, Shang-Chi and the Legend of the Ten Rings online, Shang-Chi Và Huyền Thoại Thập Nhẫn Thuyết Minh, Shang-Chi Và Huyền Thoại Thập Nhẫn Vietsub, Shang-Chi Và Huyền Thoại Thập Nhẫn Lồng Tiếng', 13, 0, 2021, 'Destin Daniel Cretton7', ' HD Vietsub + TM', 'https://www.youtube.com/embed/5K66kfVce0k', 'http://103.152.18.18/Data/English/hollywood/2021/Shang-Chi%20and%20the%20Legend%20of%20the%20Ten%20Rings%20%282021%29/Shang-Chi.And.The.Legend.Of.The.Ten.Rings.2021.1080p.BluRay.x264.AAC5.1-%5BYTS.MX%5D.mp4', '30'),
(5, 'GIẢI CỨU ‘GUY’', 'Free Guy (2021)', 'giaicuuguy.jpg', 0, 'Bản đẹp', '12', '11', 11, 'Guy – Nhân viên giao dịch ngân hàng, phát hiện anh ấy thực chất là người chơi nền trong trò chơi điện tử thế giới mở. Guy quyết định trở thành người anh hùng và viết lại câu chuyện của chính mình. Giờ đây, trong một thế giới không còn giới hạn, anh ấy quyết định trở thành người giải cứu thế giới, theo cách của chính mình.', '', 'Free Guy Giải Cứu ‘Guy’\r\nxem phim Giải Cứu ‘Guy’ viesub, xem Bí Giải Cứu ‘Guy’ vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim Free Guy ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Giải Cứu ‘Guy’, xem Giải Cứu ‘Guy’ tập 11, tập 12, tập 13, tập 14, tập 15, phim Giải Cứu ‘Guy’ tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Giải Cứu ‘Guy’ tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Giải Cứu ‘Guy’ tap cuoi, Free Guy vietsub tron bo, Giải Cứu ‘Guy’ phim3s, Giải Cứu ‘Guy’ motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Giải Cứu ‘Guy’ youtube,vietsubtv, bomtan, Giải Cứu ‘Guy’ phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Giải Cứu ‘Guy’ full, Free Guy online, Giải Cứu ‘Guy’ Thuyết Minh, Giải Cứu ‘Guy’ Vietsub, Giải Cứu ‘Guy’ Lồng Tiếng', 13, 0, 2021, '', ' HD Vietsub ', 'https://www.youtube.com/embed/SM0KiSJnWmM', 'http://103.152.18.18/Data/English/hollywood/2021/Free%20Guy%20%282021%29/Free.Guy.2021.1080p.BluRay.x264.AAC5.1-%5BYTS.MX%5D.mp4', '13'),
(6, '13 PHÚT', '13 Minute(2021)', 'minute.jpg', 24, 'Bản đẹp', '13', '2', 320, 'Bốn gia đình ở một thị trấn Heartland bị thử thách trong một ngày duy nhất khi một cơn lốc xoáy ập đến, buộc các con đường phải cắt ngang và xác định lại ý nghĩa của sự sống còn.', '', '', 13, 0, 2021, 'Lindsay Gossling', 'HD Vietsub', 'https://www.youtube.com/embed/6rpXIm41scw', 'http://103.152.18.18/Data/English/hollywood/2021/13%20Minutes%20%282021%29/13.Minutes.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(7, 'PHÁT SÚNG CHÍ MẠNG', 'One Shots(2021)', 'oneshot.jpg', 96, 'Bản đẹp', '12', '2', 9, 'Phát súng chí mạng - One Shot (2021) là bộ phim thuộc thể loại hành động, chính kịch, giật gân của Mỹ. Tác phẩm do đạo diễn James Nunn chịu trách nhiệm chỉ đạo, với sự tham gia của các diễn viên Scott Adkins, Ashley Greene và Ryan Phillippe.\r\n\r\nBộ phim xoay quanh nhà phân tích cơ sở của CIA Zoe Anderson (Ashley Greene), mở đầu phim với phân cảnh anh ta đang ngồi trên một chiếc trực thăng cùng đội ngũ tinh nhuệ của Hoa Kỳ. Biệt đội đột kích của hải quân được chỉ huy bởi Jake Harris (Scott Adkins).\r\n\r\nNhiệm vụ của nhóm là truy tìm một người đang bị giam giữ tại một nhà tù trên đảo tên là Amin Mansur (Waleed Elgadi), vốn là một địa điểm bí mật của CIA và mang anh ta trở lại Washington. Nhiệm vụ khẩn cấp và thời gian là điều quyết định mọi thứ.\r\n\r\nNhưng khi họ đến đó, Phó giám đốc công trường Jack Yorke (Ryan Phillippe) từ chối việc áp giải tù nhân đi. Tệ hơn nữa, khi họ đang tranh cãi thì một nhóm khủng bố khác gồm những kẻ khủng bố chưa rõ danh tính đã tràn lên đảo, cũng đang tìm kiếm Mansur. Khi đạn bay và lựu đạn nổ, rõ ràng Mansur là người sống sót duy nhất có thể ngăn chặn thảm kịch xảy ra tại Hoa Kỳ. Liệu rằng họ có tới kịp không?', '', '', 13, 0, 2021, 'James Nunn', 'Full  HD ', 'https://www.youtube.com/embed/R8-KVcksvzo', 'http://103.152.18.18/Data/English/hollywood/2021/137%20Shots%20%282021%29/137.Shots.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(8, 'GÓA PHỤ ĐEN', 'Black Widow (2021)', 'goaphuden.jpg', 143, 'Bản đẹp', '12', '2', 10, 'Góa Phụ Đen - Black Widow (2021) lấy bối cảnh ngay sau sự kiện Captain America: Civil War, lần này nữ điệp viên phải đối diện với những câu hỏi đầy bí ẩn trong nguồn gốc của mình. Những câu hỏi sẽ dẫn Natasha quay trở lại Budapest, nơi cô được luyện tập để trở thành siêu điệp viên của Nga.', 'des_goaphuden', 'black widow đặc vụ góa phụ đen góa phụ đen\r\nxem phim Góa Phụ Đen viesub, xem Bí Góa Phụ Đen vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim Black Widow ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Góa Phụ Đen, xem Góa Phụ Đen tập 11, tập 12, tập 13, tập 14, tập 15, phim Góa Phụ Đen tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Góa Phụ Đen tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Góa Phụ Đen tap cuoi, Black Widow vietsub tron bo, Góa Phụ Đen phim3s, Góa Phụ Đen motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Góa Phụ Đen youtube,vietsubtv, bomtan, Góa Phụ Đen phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Góa Phụ Đen full, Black Widow online, Góa Phụ Đen Thuyết Minh, Góa Phụ Đen Vietsub, Góa Phụ Đen Lồng Tiếng', 13, 0, 2021, 'Cate Shortland', ' HD Vietsub ', 'https://www.youtube.com/embed/2uVJPYbGHKo', 'http://103.152.18.18/Data/English/hollywood/2021/Black%20Widow%20%282021%29/Black.Widow.2021.1080p.WEBRip.x264.AAC5.1-%5BYTS.MX%5D.mp4', '3'),
(9, '15 VỤ GIẾT NGƯỜI', '15 Killings (2020)', 'kilings.jpg', 97, 'Bản đẹp', '12', '12', 30, 'Một nhà thần kinh học nổi tiếng đến thăm một kẻ giết người hàng loạt bị giam giữ, kẻ chịu trách nhiệm cho vô số vụ giết người. Khi cô vào trong tâm trí của một kẻ giết người, cô phát hiện ra nỗi kinh hoàng ẩn sau những xung động bạo lực của anh ta.', '', '', 12, 0, 2020, 'John Dracos', 'Full HD ', 'hhttps://www.youtube.com/embed/nQwWzz84MXY', 'http://103.152.18.18/Data/English/hollywood/2021/15%20Killings%20%282020%29/15.Killings.2020.1080p.WEBRip.x264.AAC5.1-%5BYTS.MX%5D.mp4', '3'),
(10, 'TRÁI TIM HÓA HỌC', 'Chemical Hearts', 'traitimhoahoc.jpg', 101, 'Bản đẹp', '12', '15', 7, 'Thời niên thiếu luôn là quãng thời gian đáng nhớ nhất của cuộc đời, và cũng là thời gian của những mối tình đầy đau thương. Henry và Grace cũng đã trải qua điều đó khi Grace mới chuyển từ trường East River đến và cùng tham gia vào soạn báo cho năm cuối cấp…', '', '', 12, 0, 2020, 'Richard Tanne', ' HD Vietsub ', 'https://www.youtube.com/embed/GuS5BZTUVJs', 'http://103.152.18.18/Data/English/hollywood/2021/2%20Hearts%20%282020%29/2.Hearts.2020.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(11, 'VỆ SĨ SÁT THỦ 2: NHÀ CÓ NÓC', 'Hitman\'s Wife\'s Bodyguard (2017)', 'vesisatthu.jpg', 0, 'Bản đẹp', '13', '2', 4, 'Người vệ sĩ Michael Bryce tiếp tục tình bạn của mình với sát thủ Darius Kincaid khi họ cố gắng cứu vợ của Darius là Sonia.', '', 'Nhà Có Nóc Vệ Sĩ Sát Thủ Vệ Sĩ Sát Thủ 2: Nhà Có Nóc\r\nxem phim Vệ Sĩ Sát Thủ 2: Nhà Có Nóc viesub, xem Bí Vệ Sĩ Sát Thủ 2: Nhà Có Nóc vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim Hitman\'s Wife\'s Bodyguard ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Vệ Sĩ Sát Thủ 2: Nhà Có Nóc, xem Vệ Sĩ Sát Thủ 2: Nhà Có Nóc tập 11, tập 12, tập 13, tập 14, tập 15, phim Vệ Sĩ Sát Thủ 2: Nhà Có Nóc tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Vệ Sĩ Sát Thủ 2: Nhà Có Nóc tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Vệ Sĩ Sát Thủ 2: Nhà Có Nóc tap cuoi, Hitman\'s Wife\'s Bodyguard vietsub tron bo, Vệ Sĩ Sát Thủ 2: Nhà Có Nóc phim3s, Vệ Sĩ Sát Thủ 2: Nhà Có Nóc motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Vệ Sĩ Sát Thủ 2: Nhà Có Nóc youtube,vietsubtv, bomtan, Vệ Sĩ Sát Thủ 2: Nhà Có Nóc phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Vệ Sĩ Sát Thủ 2: Nhà Có Nóc full, Hitman\'s Wife\'s Bodyguard online, Vệ Sĩ Sát Thủ 2: Nhà Có Nóc Thuyết Minh, Vệ Sĩ Sát Thủ 2: Nhà Có Nóc Vietsub, Vệ Sĩ Sát Thủ 2: Nhà Có Nóc Lồng Tiếng', 13, 0, 2021, '', ' HD Vietsub ', 'https://www.youtube.com/embed/hpjvAw3ey0s', 'http://103.152.18.18/Data/English/hollywood/2021/The%20Hitman%27s%20Bodyguard%20%282017%29/The.Hitman%27s.Bodyguard.2017.720p.BluRay.x264-%5BYTS.AG%5D.mp4', '3'),
(12, 'GIẢI THƯỞNG ÂM NHẠC BILLBOARD  năm 2021', 'Billboard Music Awards(2021)', 'giaithuongamnhac.jpg', 124, 'Bản đẹp', '13', '16', 6, 'Lễ trao giải Billboard Music Awards 2021 vinh danh những nghệ sĩ, album và bài hát hàng đầu trong năm qua.', '', '', 13, 0, 2021, ' Alex RudzinskiCarl Alaimo Jr. ', ' HD Vietsub ', 'https://www.youtube.com/embed/FBf2SfaU_Y8', 'http://103.152.18.18/Data/English/hollywood/2021/2021%20Billboard%20Music%20Awards%20%282021%29/2021.Billboard.Music.Awards.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(13, 'THẾ GIỚI BỊ LÀM NÔ LỆ BỞI VIRUS', 'The World enslaved by a Virus(2021)', 'boidaidich.jpg', 91, 'Bản đẹp', '13', '7', 1, 'Đó là năm 2025, Thế giới như chúng ta đã biết vào năm 2020 không còn tồn tại nữa. Virus đã thay đổi thế giới, và chủ nghĩa cộng sản ở khắp nơi. Một ngôn ngữ thế giới toàn cầu đã phát triển, các cuộc họp là bất hợp pháp, đi du lịch là bất hợp pháp, và Cơ đốc giáo là bất hợp pháp. Một nhóm Cơ đốc nhân đang cố gắng chống lại', '', '', 14, 0, 2022, 'Simon Wesely , Joshua Wesely', ' HD Vietsub ', 'https://www.youtube.com/embed/-KJRVuikVhY', 'http://103.152.18.18/Data/English/hollywood/2021/2025%20-%20The%20World%20Enslaved%20By%20A%20Virus%20%282021%29/2025.-.The.World.Enslaved.By.A.Virus.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(14, '3 NGÀY 3 ĐÊM', '3 Days 3 Nights', '3ngay3dem.jpg', 88, 'Bản đẹp', '13', '12', 1, 'Một bộ phim đầy cảm hứng về ba người lạ thuộc ba tầng lớp khác nhau khởi hành từ Atlanta trong một chuyến đi đến Knoxville, Louisville và Nashville. Cả ba gặp nhau là kết quả của việc chủ nhân của họ sắp xếp lịch làm việc quá mức. Ragan là một đại diện bán hàng, người thấy mình đi cùng với hai trợ lý, Tyrese và Vin, những người đang được giao công việc tạm thời.', '', '', 14, 0, 2021, 'Nina Hibbler Webster , Les Murphy , Bella Martin', 'HD Vietsub', 'https://www.youtube.com/embed/v9Yhj414JIY', 'http://103.152.18.18/Data/English/hollywood/2021/3%20Days%203%20Nights%20%282021%29/3.Days.3.Nights.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(15, '3 VÉ ĐẾN THIÊN ĐƯỜNG (2021)', '3 Tickets to Paradise (2021)', '3vedenthienduong.jpg', 88, 'Bản đẹp', '12', '2', 0, 'AJ Parker, chồng cũ của cô và là một đặc vụ liên bang đứng đầu một thị trấn ma ở Mexico có tên là Paradise để tìm kiếm nơi ẩn giấu 5000 đồng tiền vàng trị giá 20 đô la đại bàng đôi bị đánh cắp.', '', '', 13, 0, 2021, 'saac Piche', 'HD Vietsub', 'https://www.youtube.com/embed/wvmFY6zbeeU', 'http://103.152.18.18/Data/English/hollywood/2021/3%20Tickets%20To%20Paradise%20%282021%29/3.Tickets.To.Paradise.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(16, '3212 UN-REDACTED(2021)', '3212 Un-redacted (2021)', '3212un.jpg', 98, 'Bản đẹp', '13', '1', 0, 'Mô tả: Làm sáng tỏ sự thật đằng sau cái chết của 4 binh sĩ Lực lượng Đặc nhiệm Hoa Kỳ ở Châu Phi dẫn đến bằng chứng về sự che đậy ở các cấp cao nhất của Quân đội.', '', '', 13, 0, 2021, 'Đang cập nhật..', ' HD Vietsub ', 'https://www.youtube.com/embed/qwOPg-1G1J0', 'http://103.152.18.18/Data/English/hollywood/2021/3212%20Un-redacted%20%282021%29/3212.Un-redacted.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(17, '40 TÌNH YÊU', '40 Love (2021)', '40tinhyeu.jpg', 98, 'Bản đẹp', '12', '11', 0, 'Beek, một wiz thống kê 22 tuổi, tin rằng kỹ năng chơi Moneyball của anh ấy có thể giúp ngôi sao quần vợt đang lên Lois Kuzenkova giành chức vô địch US Open.', '', '', 13, 0, 2022, 'Fred Wolf', 'HD Vietsub', 'https://www.youtube.com/embed/dRZp3Y5PdQc', 'http://103.152.18.18/Data/English/hollywood/2021/40-Love%20%282021%29/40-Love.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(18, '400 VIÊN ĐẠN', '400 Bullets (2021)', '400viendan.jpg', 90, 'Bản đẹp', '13', '2', 0, '400 BULLETS là một câu chuyện về Hành động quân sự độc đáo về ý nghĩa của việc chiến đấu vì danh dự thay vì lợi nhuận. Bộ phim gói ghém những trận đấu súng, phân cảnh chiến đấu tay đôi hoành tráng và lời thoại dí dỏm vào thời lượng 90 phút của phim.', '', '', 13, 0, 2021, 'Tom Paton', ' HD Vietsub', 'https://www.youtube.com/embed/9xrMfqblLDA', 'http://103.152.18.18/Data/English/hollywood/2021/400%20Bullets%20%282021%29/400.Bullets.2021.720p.BluRay.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(19, '7 TÙ NHÂN', '7 Prisoners(2021)', '7tunhan.jpg', 94, 'Bản đẹp', '10', '6', 0, 'Đang tìm cách thoát khỏi nanh vuốt của kẻ buôn người, thiếu niên nghèo khổ phải đặt lên bàn cân những nguyên tắc đạo đức của mình trong khi đang chật vật để sống sót.', '', '', 13, 0, 2021, 'Alexandre Moratto', ' HD Vietsub ', 'https://www.youtube.com/embed/vupNkHJGBQ8', 'http://103.152.18.18/Data/English/hollywood/2021/7%20Prisoners%20%282021%29/7.Prisoners.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(20, 'Giáng Sinh 8 Bit ', '8-Bit Christmas', '8bit.jpg', 107, 'Bản đẹp', '12', '11', 0, 'Chất lượng: Bản đẹp\r\n\r\nGiáng Sinh 8 Bit - 8-Bit Christmas là bộ phim hài giáng sinh của Mỹ năm 2021. Tác phẩm do đạo diễn Michael Dowse chịu trách nhiệm chỉ đạo, với phần kịch bản của Kevin Jakubowski dựa trên cuốn tiểu thuyết cùng tên của ông. Phim có sự tham gia của các diễn viên Neil Patrick Harris, Winslow Fegley, June Diane Raphael, David Cross và Steve Zahn. Bộ phim được phát hành vào ngày 24 tháng 11 năm 2021 trên HBO Max.\r\n\r\nTrong 8 Bit Christmas, cậu bé 11 tuổi Jake (Winslow Fegley), giống như tất cả những người bạn của mình ở vùng ngoại ô Chicago cuối thập niên 80, sẽ làm bất cứ điều gì cho Nintendo, hoặc Jake trưởng thành (Neil Patrick Harris) kể điều đó với con gái của anh ta.\r\n\r\nMột đứa trẻ giàu có duy nhất trong khi phố có Nintendo được chọn từ đám đông tiểu học tụ tập bên ngoài nhà anh ta mỗi cuối tuần để chơi trong tầng hầm cực kỳ thú vị của anh ta. Nhưng Jake đang làm việc và phụ huynh trong lớp (June Diane Raphael và Steve Zahn) không muốn dùng bảng điều khiển.\r\n\r\nĐặc biệt là khi PTA bắt đầu cảnh báo về sự nguy hiểm của trò chơi điện tử đối với trẻ em. Khi một Scout Drive hứa hẹn một Nintendo cho giải nhất, Jake và anh ấy tất cả bạn bè đều tham gia. Họ sẽ làm bất cứ điều gì để có được một chiếc Nintendo vào dịp giáng sinh.', '', '', 13, 0, 2021, 'Michael Dowse', ' HD Vietsub ', 'https://www.youtube.com/embed/oTOHCX5JdiQ', 'http://103.152.18.18/Data/English/hollywood/2021/8-Bit%20Christmas%20%282021%29/8-Bit.Christmas.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(21, 'NGỰ LONG TU TIÊN TRUYỆN 2: VƯƠNG QUỐC MA THÚ', 'Dragon Sword: Outlander (2021)', 'ngulongtutruyen.jpg', 108, 'Bản đẹp', '9', '10', 2, 'Phó Viêm một người tu tiên với thể chất bình thường vô tình lọt vào vết nứt không gian, đến với một nơi có tên là Thú Nhân Vực. Phó Viêm trong lúc tìm kiếm lối ra đã giết chết vô số yêu thú, đến khi sức cùng lực kiệt mới phát hiện tu vi của mình đã bị giáng xuống Kết đan trung kỳ. Lúc này, xuất hiện một Quỷ tu ẩn mình trong băng ngọc mà Phó Viêm đeo trên người, giúp anh ta tìm được đường ra, đồng thời truyền dạy phương pháp luyện đan. Sau khi thoát ra khỏi đó, Phó Viêm đến thành Thọ Hoa và đã gặp gỡ với Lam Mặc Y, thánh nữ của Phiêu Diểu Cung, hai người trở nên quen thuộc và cùng đồng hành với nhau. Tuy nhiên, trên đường đi gặp phải vô vàn khó khăn, còn có sự xuất hiện của của Nữ hoàng Bọ Cạp…', '', 'Dragon Sword Dragon Sword: Outlander Ngự Long Tu Tiên Truyện Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú Outlander Vương Quốc Ma Thú\r\nxem phim Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú viesub, xem Bí Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim Dragon Sword: Outlander ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú, xem Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú tập 11, tập 12, tập 13, tập 14, tập 15, phim Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú tap cuoi, Dragon Sword: Outlander vietsub tron bo, Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú phim3s, Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú youtube,vietsubtv, bomtan, Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú full, Dragon Sword: Outlander online, Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú Thuyết Minh, Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú Vietsub, Ngự Long Tu Tiên Truyện 2: Vương Quốc Ma Thú Lồng Tiếng', 14, 0, 2021, '', ' HD Vietsub ', 'https://www.youtube.com/embed/X9oD4IJyaP8', '0', '20'),
(22, 'TRẤN MA TƯ: LINH NGUYÊN BÍ THUẬT', 'Demon Sealer Bureau (2022)', 'tranmatu.jpg', 99, 'Bản đẹp', '9', '9', 2, 'Một trăm năm trước, Ngọc Tu tiên sư phong ấn quái thú tám châu, và mộc thần Tây Nam biến thành gỗ khô (biến thành linh nguyên). Vào năm thứ 40 của triều đại nhà Triệu, Cố Niệm Đồng của Tà giáo, muốn phá vỡ phong ấn của tiên sư, tinh luyện mộc thần và biến nó thành mộc yêu, đầu độc chúng sinh. Vì vậy, tiên hoàng đã đặc biệt sắc lệnh cho Đường Lăng Phong và một số người khác của Ẩn giám Trấn ma tư, chỉ huy quân đội tiến về phía Tây Nam để bình định yêu tà. Để chinh phục mộc yêu cần quái thú do Công Thâu gia tạo ra. Cách để điều khiển con quái thú là \"linh nguyên mật thuật\" được ghi lại trong \"Lỗ Ban Toàn Thư\". Điều này cũng liên quan đến mối thù 10 năm trước của Đường gia với Công Thâu gia, Trấn ma tư...', '', 'Demon Sealer Bureau Trấn Ma Tư: Linh Nguyên Bí Thuật\r\nxem phim Trấn Ma Tư: Linh Nguyên Bí Thuật viesub, xem Bí Trấn Ma Tư: Linh Nguyên Bí Thuật vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim Demon Sealer Bureau ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Trấn Ma Tư: Linh Nguyên Bí Thuật, xem Trấn Ma Tư: Linh Nguyên Bí Thuật tập 11, tập 12, tập 13, tập 14, tập 15, phim Trấn Ma Tư: Linh Nguyên Bí Thuật tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Trấn Ma Tư: Linh Nguyên Bí Thuật tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Trấn Ma Tư: Linh Nguyên Bí Thuật tap cuoi, Demon Sealer Bureau vietsub tron bo, Trấn Ma Tư: Linh Nguyên Bí Thuật phim3s, Trấn Ma Tư: Linh Nguyên Bí Thuật motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Trấn Ma Tư: Linh Nguyên Bí Thuật youtube,vietsubtv, bomtan, Trấn Ma Tư: Linh Nguyên Bí Thuật phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Trấn Ma Tư: Linh Nguyên Bí Thuật full, Demon Sealer Bureau online, Trấn Ma Tư: Linh Nguyên Bí Thuật Thuyết Minh, Trấn Ma Tư: Linh Nguyên Bí Thuật Vietsub, Trấn Ma Tư: Linh Nguyên Bí Thuật Lồng Tiếng', 14, 0, 2021, 'Huo Sui Qiang', 'HD Vietsub', 'https://www.youtube.com/embed/x9qwNVnEfCg', '0', '3'),
(23, 'THE JACK IN THE BOX: AWAKENING', 'The Jack in the Box: Awakening (2022)', 'thejack.jpg', 93, 'Bản đẹp', '13', '12', 1, 'The Jack in the Box: Awakening - The Jack in the Box: Awakening (2022) nội dung bộ phim là câu chuyện về một người phụ nữ sắp chết, đau đớn, tuyệt vọng và ích kỷ, cô ta đã tìm đến chiếc hộp Jack-in-the-box cổ điển và làm một thỏa thuận với con quỷ bên trong chiếc hộp đó. Cô sẽ được khỏi bệnh, tiếp tục sống nhưng đổi lại cô phải tìm được 6 người vô tội khác để thế thân cho cô. Liệu đây có phải có là con quỷ trong chiếc hộp cổ điển hay chính là con quỷ trong lòng của mỗi con người chúng ta?', '', 'xem phim The Jack In The Box: Awakening viesub, xem Bí The Jack In The Box: Awakening vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim The Jack in the Box: Awakening ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim The Jack In The Box: Awakening, xem The Jack In The Box: Awakening tập 11, tập 12, tập 13, tập 14, tập 15, phim The Jack In The Box: Awakening tap 16, tap 17, tap 18, tap 19, tap 20, xem phim The Jack In The Box: Awakening tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, The Jack In The Box: Awakening tap cuoi, The Jack in the Box: Awakening vietsub tron bo, The Jack In The Box: Awakening phim3s, The Jack In The Box: Awakening motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi The Jack In The Box: Awakening youtube,vietsubtv, bomtan, The Jack In The Box: Awakening phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, The Jack In The Box: Awakening full, The Jack in the Box: Awakening online, The Jack In The Box: Awakening Thuyết Minh, The Jack In The Box: Awakening Vietsub, The Jack In The Box: Awakening Lồng Tiếng', 14, 0, 2022, '', ' HD Vietsub + TM', 'https://www.youtube.com/embed/i94q74umDGw', '0', '8'),
(24, 'CUỘC SĂN', 'The Hunting (2021)', 'cuocsan.jpg', 93, 'Bản đẹp', '13', '12', 1, 'Khi một cuộc tấn công của động vật bí ẩn để lại một cơ thể bị cắt xẻo trong rừng, một thám tử bảo thủ của thị trấn nhỏ phải tranh thủ sự giúp đỡ của một chuyên gia động vật hoang dã háo hức để khám phá sự thật đen tối và đáng lo ngại đang đe dọa thị trấn.', '', 'xem phim Cuộc Săn viesub, xem Bí Cuộc Săn vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim The Hunting ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Cuộc Săn, xem Cuộc Săn tập 11, tập 12, tập 13, tập 14, tập 15, phim Cuộc Săn tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Cuộc Săn tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Cuộc Săn tap cuoi, The Hunting vietsub tron bo, Cuộc Săn phim3s, Cuộc Săn motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Cuộc Săn youtube,vietsubtv, bomtan, Cuộc Săn phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Cuộc Săn full, The Hunting online, Cuộc Săn Thuyết Minh, Cuộc Săn Vietsub, Cuộc Săn Lồng Tiếng', 14, 0, 2021, 'Mark Andrew Hamer', ' HD Vietsub ', 'https://www.youtube.com/embed/pzkOD5KJxFE', '0', '3'),
(25, 'ĐỘI ĐẶC NHIỆM TEN', 'Special Affairs Team TEN (2011)', 'doidacnhiem10.jpg', 60, 'Bản đẹp', '6', '16', 1, 'Phim \"Đội Đặc Nhiệm TEN\" Nội dung phim Đội Đặc Nhiệm TEN: \"Special Affairs Team TEN\" là một đội điều tra hình sự chuyên điều tra về những tên tội phạm hung hãn nhất ở Hàn Quốc. Những tội phạm loại này thường có tỷ lệ bắt giữ dưới 10%. Họ đuổi theo những tên giết người khét tiếng nhất và những người thực hiện những vụ giết người hoàn hảo.', '', 'Đội Đặc Nhiệm TEN Special Affairs Team TEN\r\nxem phim Đội Đặc Nhiệm TEN viesub, xem Bí Đội Đặc Nhiệm TEN vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim Special Affairs Team TEN ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Đội Đặc Nhiệm TEN, xem Đội Đặc Nhiệm TEN tập 11, tập 12, tập 13, tập 14, tập 15, phim Đội Đặc Nhiệm TEN tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Đội Đặc Nhiệm TEN tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Đội Đặc Nhiệm TEN tap cuoi, Special Affairs Team TEN vietsub tron bo, Đội Đặc Nhiệm TEN phim3s, Đội Đặc Nhiệm TEN motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Đội Đặc Nhiệm TEN youtube,vietsubtv, bomtan, Đội Đặc Nhiệm TEN phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Đội Đặc Nhiệm TEN full, Special Affairs Team TEN online, Đội Đặc Nhiệm TEN Thuyết Minh, Đội Đặc Nhiệm TEN Vietsub, Đội Đặc Nhiệm TEN Lồng Tiếng', 0, 11, 2011, '', ' HD Vietsub ', 'https://www.youtube.com/embed/f5ZQaNGv9Tw', '0', '6'),
(26, 'ĂN CƠM ĐÃ, YÊU ĐỂ SAU', 'Eat Before Loving (2021)', 'ancomda.jpg', 0, 'Bản đẹp', '9', '17,2', 6, 'Ăn Cơm Đã, Yêu Để Sau - Eat Before Loving (2021) kể về cô nàng Trì Tiểu Niệm, vốn dĩ định nhân ngày kỷ niệm quen nhau làm cơm hộp mang đến nhà thi đấu cho bạn trai Lâm Duệ để tạo bất ngờ thì lại vô tình phát hiện bạn trai thân mật với đàn em khóa dưới. Trong lúc Tiểu Niệm đau khổ vì tình thì người bạn thanh mai trúc mã độc mồm là Ngôn Dụ đã dùng vẻ mặt kiêu ngạo nhất đề nghị giả thành bạn trai của Tiểu Niệm để trả thù tên bạn trai cũ cặn bã của cô. Chính vì thế tinh thần Tiểu Niệm cũng ngày một phấn chấn, đồng thời tìm lại được đam mê với nấu nướng.', '', 'Ăn Cơm Đã Yêu Để Sau Eat Before Loving\r\nxem phim Ăn Cơm Đã, Yêu Để Sau viesub, xem Bí Ăn Cơm Đã, Yêu Để Sau vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim Eat Before Loving ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Ăn Cơm Đã, Yêu Để Sau, xem Ăn Cơm Đã, Yêu Để Sau tập 11, tập 12, tập 13, tập 14, tập 15, phim Ăn Cơm Đã, Yêu Để Sau tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Ăn Cơm Đã, Yêu Để Sau tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Ăn Cơm Đã, Yêu Để Sau tap cuoi, Eat Before Loving vietsub tron bo, Ăn Cơm Đã, Yêu Để Sau phim3s, Ăn Cơm Đã, Yêu Để Sau motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Ăn Cơm Đã, Yêu Để Sau youtube,vietsubtv, bomtan, Ăn Cơm Đã, Yêu Để Sau phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Ăn Cơm Đã, Yêu Để Sau full, Eat Before Loving online, Ăn Cơm Đã, Yêu Để Sau Thuyết Minh, Ăn Cơm Đã, Yêu Để Sau Vietsub, Ăn Cơm Đã, Yêu Để Sau Lồng Tiếng', 0, 4, 2022, '', 'HD Trailler', 'https://www.youtube.com/embed/UEW3JpGCa5Q', '0', '3'),
(27, '86 Đại lộ Melrose\r\n', '86 Melrose Avenue (2020)', '86dailo.jpg', 83, 'Bản đẹp', '12', '16', 2, '86 Melrose Avenue là một bộ phim truyền hình kể về cuộc đụng độ hỗn loạn giữa một nhóm người theo chủ nghĩa chiết trung tại một cuộc triển lãm nhiếp ảnh ở LA. khi bị bắt làm con tin bởi một cựu quân nhân mắc PTSD', '', '', 13, 0, 2021, 'Tsutomu Hanabusa', ' HD Vietsub ', 'https://www.youtube.com/embed/ELeQRvNNRIQ', 'http://103.152.18.18/Data/English/hollywood/2021/86%20Melrose%20Avenue%20%282020%29/86.Melrose.Avenue.2020.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '13'),
(28, 'CUỘC VÂY HÃM TỬ THẦN', 'Deadlock (2021)', 'cuocvaytuthan.jpg', 0, 'Bản đẹp', '12', '16', 6, 'Cuộc Vây Hãm Tử Thần - Deadlock, Deadlock 2021 Full Một Cựu Quân Nhân Làm Việc Tại Một Nhà Máy điện Georgia Phải Bắt Tay Vào Hành động để Ngăn Chặn Thảm Họa Khi Một Nhóm Binh Lính Bất Hảo Giành Quyền Kiểm Soát Nhà Máy Và Bắt Các Nhân Viên Làm Con Tin.', '', 'xem phim Cuộc Vây Hãm Tử Thần viesub, xem Bí Cuộc Vây Hãm Tử Thần vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim Deadlock ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim Cuộc Vây Hãm Tử Thần, xem Cuộc Vây Hãm Tử Thần tập 11, tập 12, tập 13, tập 14, tập 15, phim Cuộc Vây Hãm Tử Thần tap 16, tap 17, tap 18, tap 19, tap 20, xem phim Cuộc Vây Hãm Tử Thần tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, Cuộc Vây Hãm Tử Thần tap cuoi, Deadlock vietsub tron bo, Cuộc Vây Hãm Tử Thần phim3s, Cuộc Vây Hãm Tử Thần motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi Cuộc Vây Hãm Tử Thần youtube,vietsubtv, bomtan, Cuộc Vây Hãm Tử Thần phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, Cuộc Vây Hãm Tử Thần full, Deadlock online, Cuộc Vây Hãm Tử Thần Thuyết Minh, Cuộc Vây Hãm Tử Thần Vietsub, Cuộc Vây Hãm Tử Thần Lồng Tiếng', 13, 0, 2021, 'Đang cập nhật..', ' HD Vietsub ', 'https://www.youtube.com/embed/95MSxHvbuLQ', 'http://103.152.18.18/Data/English/hollywood/2021/Deadlock%20%282021%29/Deadlock.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '3'),
(29, 'KING RICHARD: HUYỀN THOẠI NHÀ WILLIAMS', 'King Richard (2021)', 'huyenthoainhawiliam.jpg', 96, 'Bản đẹp', '12', '16', 3, 'King Richard: Huyền Thoại Nhà Williams - King Richard, King Richard 2021 Full Nhìn Lại Cách Các Siêu Sao Quần Vợt Venus Và Serena Williams Trở Thành Con Người Của Họ Sau Sự Huấn Luyện Từ Cha Của Họ Richard Williams.', '', 'King Richard King Richard: Huyền Thoại Nhà Williams\r\nxem phim King Richard: Huyền Thoại Nhà Williams viesub, xem Bí King Richard: Huyền Thoại Nhà Williams vietsub online tap 1, tap 2, tap 3, tap 4, tap 5 phim King Richard ep 5, ep 6, ep 7, ep 8, ep 9, ep 10, Lịch chiếu phim King Richard: Huyền Thoại Nhà Williams, xem King Richard: Huyền Thoại Nhà Williams tập 11, tập 12, tập 13, tập 14, tập 15, phim King Richard: Huyền Thoại Nhà Williams tap 16, tap 17, tap 18, tap 19, tap 20, xem phim King Richard: Huyền Thoại Nhà Williams tập 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, King Richard: Huyền Thoại Nhà Williams tap cuoi, King Richard vietsub tron bo, King Richard: Huyền Thoại Nhà Williams phim3s, King Richard: Huyền Thoại Nhà Williams motphim,vtv16, khoaitv, phimgi, hatdetv, xemphimso, hdo, topphimhd, khoaitv, vungtv, dongphim, fptplay, zingtv, xemphimgi King Richard: Huyền Thoại Nhà Williams youtube,vietsubtv, bomtan, King Richard: Huyền Thoại Nhà Williams phimmoi, hdonline, phimbathu, bilutv, banhtv, goldphim, bongngotv, bilutvs, phimmoizz, fullphim, 247phim, dongphym, xemphimvui, phimhay.co, galaxyplay, fptplay, hdviet, hdonline, hdo.tv, netflix, xemphimplus, VTVGiaitri, PhimHD7, Hplus, Kphim, Cliptv, yeuphimmoi, Vietsubtv, Bomtan, Biphim, Khophimplus, King Richard: Huyền Thoại Nhà Williams full, King Richard online, King Richard: Huyền Thoại Nhà Williams Thuyết Minh, King Richard: Huyền Thoại Nhà Williams Vietsub, King Richard: Huyền Thoại Nhà Williams Lồng Tiếng', 13, 0, 2021, 'Reinaldo Marcus Green,', ' HD Vietsub ', 'https://www.youtube.com/embed/BKP_0z52ZAw', 'http://103.152.18.18/Data/English/hollywood/2021/King%20Richard%20%282021%29/King.Richard.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '6'),
(30, '11/9 BỐN CHUYẾN BAY', '9/11: Four Flights (2021)', 'bonchuyenbay.jpg', 88, 'Bản đẹp', '12', '1', 5, 'Nội dung phim 9/11: Four Flights (2021) fshare: American 11, United 175, American 77 và United 93 kể về những câu chuyện nhân văn đầy xúc động và xúc động của những người trên từng chiếc máy bay phản lực cơ mà.; Trên đây là nội dung phim 9/11: Four Flights (2021) FSHARE', '', '', 13, 0, 2021, 'Đang cập nhật..', ' HD Vietsub +TM', 'https://www.youtube.com/embed/6Mjzi_n0P1g', 'http://103.152.18.18/Data/English/hollywood/2021/9%2011%20Four%20Flights%20%282021%29/9.11.Four.Flights.2021.720p.WEBRip.x264.AAC-%5BYTS.MX%5D.mp4', '17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nation`
--

CREATE TABLE `nation` (
  `nation_id` int(11) NOT NULL,
  `nation_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nation`
--

INSERT INTO `nation` (`nation_id`, `nation_name`) VALUES
(1, 'Việt Nam'),
(2, 'Thái Lan'),
(3, 'Ấn độ'),
(5, 'Singapore'),
(6, 'Hàn Quốc'),
(7, 'Đài Loan'),
(8, 'Hông Kông'),
(9, 'Trung Quốc'),
(10, 'Philippines'),
(11, 'Nhật Bản'),
(12, 'Mỹ'),
(13, 'Châu Âu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phimbo`
--

CREATE TABLE `phimbo` (
  `phimbo_id` int(11) NOT NULL,
  `phimbo_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phimbo`
--

INSERT INTO `phimbo` (`phimbo_id`, `phimbo_name`) VALUES
(1, 'Phim Bộ Hàn Quốc'),
(2, 'Phim Bộ Hồng Kông'),
(3, 'Phim Bộ Nhật Bản'),
(4, 'Phim Bộ Trung Quốc'),
(5, 'Phim Bộ Mỹ'),
(6, 'Phim Bộ Ấn Độ'),
(7, 'Phim Bộ Đài Loan'),
(8, 'Phim Bộ Thái Lan'),
(9, 'Phim Bộ Philippines'),
(11, 'Phim Bộ Mới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phimle`
--

CREATE TABLE `phimle` (
  `phimle_id` int(11) NOT NULL,
  `phimle_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phimle`
--

INSERT INTO `phimle` (`phimle_id`, `phimle_name`) VALUES
(1, 'Phim lẻ 2010'),
(2, 'Phim lẻ 2011'),
(4, 'Phim lẻ 2012'),
(5, 'Phim lẻ 2013'),
(6, 'Phim lẻ 2014'),
(7, 'Phim lẻ 2015'),
(8, 'Phin lẻ 2016'),
(9, 'Phim lẻ 2017'),
(10, 'Phim lẻ 2018'),
(11, 'Phim lẻ 2019'),
(12, 'Phim lẻ 2020'),
(13, 'Phim lẻ 2021'),
(14, 'Phim lẻ mới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_movie`
--

CREATE TABLE `type_movie` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_movie`
--

INSERT INTO `type_movie` (`type_id`, `type_name`) VALUES
(1, 'Chiến tranh'),
(2, 'Hành động'),
(4, 'Tâm lý'),
(5, 'Cổ trang'),
(6, 'Hình sự'),
(7, 'Viễn tưởng'),
(8, 'Gia đình'),
(9, 'Võ Thuật'),
(10, 'Hoạt hình'),
(11, 'Hài hước'),
(12, 'Kinh dị'),
(13, 'Thần thoại'),
(14, 'Tội phạm'),
(15, 'Tình Cảm'),
(16, 'Chiếu rạp'),
(17, 'Sắp chiếu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(15) NOT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `email`, `phone`, `role`) VALUES
(3, 'vanqui0711', 'd39eaa5305c13f7044787c9cc6827d06', 'Nguyen Van Qui', 'vanqui358@gmail.com', 978314903, 2),
(4, 'vanqui', '202cb962ac59075b964b07152d234b70', 'Nguyen Van Qui', 'quivipro@gmail.com', 978314903, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actor_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nation`
--
ALTER TABLE `nation`
  ADD PRIMARY KEY (`nation_id`);

--
-- Chỉ mục cho bảng `phimbo`
--
ALTER TABLE `phimbo`
  ADD PRIMARY KEY (`phimbo_id`);

--
-- Chỉ mục cho bảng `phimle`
--
ALTER TABLE `phimle`
  ADD PRIMARY KEY (`phimle_id`);

--
-- Chỉ mục cho bảng `type_movie`
--
ALTER TABLE `type_movie`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `actor`
--
ALTER TABLE `actor`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `nation`
--
ALTER TABLE `nation`
  MODIFY `nation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `phimbo`
--
ALTER TABLE `phimbo`
  MODIFY `phimbo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `phimle`
--
ALTER TABLE `phimle`
  MODIFY `phimle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `type_movie`
--
ALTER TABLE `type_movie`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
