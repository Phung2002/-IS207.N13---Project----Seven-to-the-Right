-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2022 lúc 04:26 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbclothing_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `categories_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categorie`
--

INSERT INTO `categorie` (`id`, `categories_name`) VALUES
(1, 'Áo thun'),
(2, 'Áo polo và sơ mi'),
(3, 'Quần'),
(4, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_trans` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `product_price` int(15) NOT NULL,
  `quantity` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_cate` int(11) NOT NULL,
  `img` text NOT NULL,
  `product_name` char(100) NOT NULL,
  `product_description` varchar(500) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `id_cate`, `img`, `product_name`, `product_description`, `price`) VALUES
(1, 1, '1_Áo thun thể thao nam Active ProMax.jpg', 'Áo thun thể thao nam Active ProMax', '- Chất liệu: 100% Polyester\r\n- Công nghệ xử lý hoàn thiện vải: Quick-Dry (nhanh khô) và Wicking (thấm hút nhanh)\r\n- Vải được dệt và nhuộm theo quy trình không nước thải\r\n- Không nhăn và tạo cảm giác thoáng mát khi vận động\r\n- Tự hào may và hoàn thiện tại nhà máy Nobland, Bình Dương * Xem nhà máy >\r\n- Người mẫu: 1m80 - 75kg, mặc 2XL', 179000),
(2, 1, '2_Áo thun in Heal The World Clean Vietnam - màu Xanh Forest.jpg', 'Áo thun in Heal The World Clean Vietnam - màu Xanh Forest', '- Đây là sản phẩm thuộc Clean Vietnam Collection\r\n- Chất liệu: 80% Cotton - 20% Recycle Polyester\r\n- Mềm mại và không gây khó chịu khi mặc\r\n- Chất liệu co giãn 4 chiều đem lại sự thoải mái suốt ngày dài\r\n- Bền dai, không bai, nhão, xù lông\r\n- Tự hào sản xuất tại Việt Nam', 299000),
(3, 1, '3_Áo thun in Save The Future - màu Đen.jpg', 'Áo thun in Save The Future - màu Đen', '- Đây là sản phẩm thuộc Clean Vietnam Collection\r\n- Chất liệu: 80% Cotton - 20% Recycle Polyester\r\n- Mềm mại và không gây khó chịu khi mặc\r\n- Chất liệu co giãn 4 chiều đem lại sự thoải mái suốt ngày dài\r\n- Bền dai, không bai, nhão, xù lông\r\n- Tự hào sản xuất tại Việt Nam', 299000),
(4, 1, '4_Áo thun thể thao nam ProMax-S1.jpg', 'Áo thun thể thao nam ProMax-S1', '- Chất liệu: 100% Polyester\r\n- Công nghệ xử lý hoàn thiện vải: Quick-Dry (nhanh khô) và Wicking (thấm hút nhanh)\r\n- Vải được dệt và nhuộm theo quy trình không nước thải\r\n- Không nhăn và tạo cảm giác thoáng mát khi vận động\r\n- Tự hào may và hoàn thiện tại nhà máy Nobland, Bình Dương * Xem nhà máy >\r\n- Người mẫu: 1m75 - 75kg, mặc XL', 179000),
(5, 1, '5_Áo thun trơn Clean Vietnam.jpg', 'Áo thun trơn Clean Vietnam', '- Đây là sản phẩm thuộc Clean Vietnam Collection\r\n- Chất liệu: 80% Cotton - 20% Recycle Polyester\r\n- Mềm mại và không gây khó chịu khi mặc\r\n- Chất liệu co giãn 4 chiều đem lại sự thoải mái suốt ngày dài\r\n- Bền dai, không bai, nhão, xù lông\r\n- Tự hào sản xuất tại Việt Nam', 269000),
(6, 1, '6_Áo thun nam in Coolmate Cotton Compact phiên bản Premium.jpg', 'Áo thun nam in Cotton Compact phiên bản Premium', '- Chất liệu Cotton Compact - đẹp hơn, bền hơn, mượt hơn gấp 2 lần Cotton thường.\r\n- Không nhăn, không co rút sau giặt.\r\n- Tỉ mỉ trong từng đường may, đảm bảo sẽ không còn chỉ thừa\r\n- Pha Spandex giúp co giãn 4 chiều theo từng đường nét cử động.\r\n- Công nghệ in cao cấp không lo phai chữ ngay cả khi giặt với máy\r\n- Người mẫu: 1m83 - 78kg, áo size 2XL', 259000),
(7, 1, '7_Áo sát nách thể thao nam Dri-Breathe thoáng mát tối đa.jpg', 'Áo sát nách thể thao nam Dri-Breathe thoáng mát tối đa', '- Chất liệu: 100% Polyester tính năng Quick Dry (Nhanh Khô)\r\n- Sợi tính năng Quick-dry giúp vải có khả năng thấm hút mồ hôi nhanh và thoát nhiệt tốt\r\n- Kiểu dệt Twill (chéo) mới mang lại cảm giác thoải mái khi mặc\r\n- Tự hào may và hoàn thiện tại nhà máy Nobland, Bình Dương * Xem nhà máy >\r\n- Người mẫu: 1m75 - 75kg, mặc XL', 99000),
(8, 1, '8_Áo Tank top thể thao nam thoáng khí.jpg', 'Áo Tank top thể thao nam thoáng khí', '- Chất liệu: 100% Polyester tính năng Quick Dry (Nhanh Khô)\r\n- Sợi tính năng Quick-dry giúp vải có khả năng thấm hút mồ hôi nhanh và thoát nhiệt tốt\r\n- Kiểu dệt Twill (chéo) mới mang lại cảm giác thoải mái khi mặc\r\n- Người mẫu: 1m75 - 75kg, mặc XL\r\n- Tự hào sản xuất tại Việt Nam', 99000),
(9, 1, '9_Outlet - Áo sát nách thể thao nam Dri-Breathe thoáng mát tối đa.jpg', 'Áo sát nách thể thao nam Dri-Breathe thoáng mát tối đa', '- Chất liệu: 100% Polyester tính năng Quick Dry (Nhanh Khô)\r\n- Sợi tính năng Quick-dry giúp vải có khả năng thấm hút mồ hôi nhanh và thoát nhiệt tốt\r\n- Kiểu dệt Twill (chéo) mới mang lại cảm giác thoải mái khi mặc\r\n- Tự hào may và hoàn thiện tại nhà máy Nobland, Bình Dương * Xem nhà máy >\r\n- Người mẫu: 1m75 - 75kg, mặc XL', 189000),
(10, 1, '10_Áo thun nam Cotton Compact phiên bản Premium chống nhăn.jpg', 'Áo thun nam Cotton Compact phiên bản Premium chống nhăn', '- Chất liệu: 95% Cotton Compact - 5% Spandex\r\n- Mềm mại và không gây khó chịu khi mặc\r\n- Chất liệu co giãn 4 chiều đem lại sự thoải mái suốt ngày dài\r\n- Bền dai, không bai, nhão, xù lông\r\n- Sản xuất tại xưởng 8 năm kinh nghiệm tại TP Hồ Chí Minh * Xem nhà máy >\r\n- Tự hào sản xuất tại Việt Nam', 259000),
(11, 2, '11_Áo Polo nam Pique Cotton USA thấm hút tối đa (kẻ sọc).jpg', 'Áo Polo nam Pique Cotton USA thấm hút tối đa (kẻ sọc)', '- Chất liệu: 97% Cotton USA + 3% Spandex\r\n- Với chất liệu Cotton USA chất lượng cao, mang lại sự mềm mại và thấm hút mồ hôi tốt\r\n- Co giãn 4 chiều mang lại sự thoải mái khi mặc\r\n- Bo cổ dệt bằng sợi Cotton, viền phối Polyester để đảm bảo độ đàn hồi, chống bai và giữ màu qua các lần giặt\r\n- Form áo hơi ôm eo và phù hợp với dáng nam giới Việt\r\n- Tự hào sản xuất tại Việt Nam\r\n- Người mẫu cao 1m82, nặng 70kg, mặc áo size XL', 299000),
(12, 2, '12_Áo Polo nam công nghệ khử mùi Anti-Smell.jpg', 'Áo Polo nam công nghệ khử mùi Anti-Smell', '- Chất liệu: 80% Cotton + 20% polyester\r\n- Ứng dụng công nghệ Anti-Smell của Nhật Bản có khả năng kháng khuẩn, KHỬ MÙI. Xem kiểm định\r\n- Thoáng khí, không gây bết dính khó chịu\r\n- Vải xốp, xù nhẹ, giữ nguyên trạng thái tự nhiên của Cotton\r\n- Form áo regular fit, phù hợp với mọi dáng người\r\n- Tự hào dệt, nhuộm vải và cắt may tại Việt Nam\r\n- Người mẫu: 1m75 - 74kg; mặc áo size L', 349000),
(13, 2, '13_Áo sơ mi nam dài tay Café-DriS khử mùi hiệu quả.jpg', 'Áo sơ mi nam dài tay Café-DriS khử mùi hiệu quả', '- Chất liệu: 50% Café - 50% Recycled Poly from PET đem đến sự mềm mại và khử mùi hiệu quả\r\n- Co giãn tự nhiên tạo cảm giác thoải mái\r\n- Mỏng nhẹ và thấm hút mồi hôi giúp bạn luôn khô thoáng\r\n- Nguyên liệu bền vững, thân thiện với môi trường\r\n- Tự hào sản xuất tại Việt Nam\r\n- Người mẫu: 1m77 - 74kg * Mặc size XL', 499000),
(14, 2, '14_Áo Sơ mi nam Excool Limited ngắn tay chui đầu.jpg', 'Áo Sơ mi nam Excool Limited ngắn tay chui đầu', '- Chất liệu: 53% Polyester PET high stretch + 47% Polyester PTT Sorona\r\n- Vải EXCOOL là vải có 8 ưu điểm vượt trội: Co giãn, Thấm hút, Nhanh khô, Siêu nhẹ, Chống tia UV, Mát mẻ, Khử mùi, Độ bền cao\r\n- Thiết kế mới mẻ phù hợp với mọi trường hợp: đi chơi, đi làm, tham gia hoạt động lịch sự\r\n- Có khả năng cản tới 99,45% các tia UVA và 99,73% tia UVB\r\n- Hoàn thiện kỹ lưỡng đến từng đường may\r\n- Đây là mẫu sơ mi phong cách Nhật lần đầu tiên tại Coolmate\r\n- Tự hào sản xuất tại Việt Nam', 349000),
(15, 2, '15_Áo Polo thể thao nam ProMax-S2 thoáng khí.jpg', 'Áo Polo thể thao nam ProMax-S2 thoáng khí', '- Chất liệu: 100% Polyester hoàn thiện vải bằng công nghệ Wicking (thấm hút nhanh)\r\n- Vải dệt kiểu Mesh tạo những lỗ nhỏ thoáng khí\r\n- Vải được dệt và nhuộm theo quy trình không nước thải của nhà máy đạt tiêu chuẩn quốc tế\r\n- Thiết kế mới mẻ cùng phần xẻ tà tạo sự năng động, thể thao\r\n- Không nhăn và tạo cảm giác thoáng mát khi vận động\r\n- Người mẫu: 1m82 - 70kg, mặc áo XL\r\n- Tự hào sản xuất tại Việt Nam', 169000),
(16, 2, '16_Áo sơ mi nam dài tay Bamboo Ex-Soft kháng khuẩn màu xanh DBlue.jpg', 'Outlet - Áo sơ mi nam dài tay Bamboo Ex-Soft kháng khuẩn màu xanh DBlue', '- Chất liệu: 50% Real Bamboo - 50% Spun để chiếc áo mềm mại và kháng khuẩn tự nhiên\r\n- Điều hoà thân nhiệt\r\n- Hạn chế nhăn, chống co rút\r\n- Xử lý chống tia UV, bảo vệ sức khoẻ\r\n- Thân thiện với môi trường\r\n- Tự hào sản xuất tại Việt Nam\r\n- Người mẫu: 1m84 - 75kg, mặc áo XL', 229000),
(17, 2, '17_Áo Polo thể thao nam ProMax-S1 Logo thoáng khí.jpg', 'Áo Polo thể thao nam ProMax-S1 Logo thoáng khí', '- Chất liệu: 100% Poly với định lượng vải 155gsm siêu nhẹ\r\n- Công nghệ xử lý hoàn thiện vải: Quick-Dry (Nhanh khô) và Wicking (Thấm hút nhanh)\r\n- Khả năng vải khử mùi tự nhiên\r\n- Không nhăn và tạo cảm giác thoáng mát khi vận động\r\n- Tự hào may và hoàn thiện tại nhà máy Nobland, Bình Dương * Xem nhà máy >\r\n- Người mẫu: 1m84 - 73kg, Mặc XL', 239000),
(18, 2, '18_Áo Polo thể thao nam ProMax-S3 thoáng khí.jpg', 'Áo Polo thể thao nam ProMax-S3 thoáng khí', '- Chất liệu: 100% Polyester kết hợp công nghệ xử lý hoàn thiện vải: Quick-Dry (Nhanh khô) và Wicking (Thấm hút nhanh)\r\n- Thiết kế lưới 2 bên hông luôn thông thoáng trong mọi hoạt động\r\n- Khả năng vải khử mùi tự nhiên', 199000),
(19, 2, '19_Áo Polo nam thể thao thoáng khí, nhuộm sạch Cleandye.jpg', 'Áo Polo nam thể thao thoáng khí, nhuộm sạch Cleandye', '- Chất liệu: 100% polyester hoàn thiện bằng công nghệ Wicking & Quick Dry\r\n- Nhanh khô, thoáng khí phù hợp với hoạt động thể thao và mặc hàng ngày\r\n- Clean Dye - Công nghệ nhuộm vải KHÔNG SỬ DỤNG NƯỚC và hoá chất đầu tiên trên thế giới với nhà máy tại Việt Nam, đem đến những sản phẩm “thời trang sạch và bền vững\", xem thêm tại đây\r\n- Kiểu dáng hơi ôm eo để mang đến sự vừa vặn\r\n- Tự hào sản xuất tại Việt Nam\r\n- Người mẫu: 1m75 - 75kg, mặc XL', 289000),
(20, 2, '20_Áo Polo nam Excool.jpg', 'Áo Polo nam Excool', '- Chất liệu: 56% Polyester PET high stretch + 44% Polyester PTT Sorona\r\n- Form áo regular fit, phù hợp với mọi dáng người\r\n- Thấm hút và nhanh khô để bạn luôn cảm thấy thoải mái và tự tin\r\n- Một chiếc áo Polo thực sự chất lượng, tự hào sản xuất tại Quận 12, Hồ Chí Minh, Việt Nam\r\n- Người mẫu: 1m77 - 74kg; mặc áo size XL', 399000),
(21, 3, '21_Quần nam Printed Short chống UV (túi sau có khóa).jpg', 'Quần nam Printed Short chống UV (túi sau có khóa)', '- Chất liệu : 100% Polyester Microfiber đem đến độ siêu mịn và bền của vải\r\n- Co giãn tốt và thoáng mát hơn nhiều lần vải Polyester\r\n- Công nghệ xử lý hoàn thiện vải : Sanding (mài bề mặt) để đem đến độ mịn bề mặt\r\n- Sợi vải có khả năng chống tia UV cao, với chỉ số UPF 50+\r\n- Họa tiết trên quần được in chuyển nhiệt, tạo độ bền, không phai màu\r\n- Quần có túi 2 bên, túi sau có khóa kéo và đai chun có dây rút tiện lợi\r\n- Tự hào sản xuất tại Việt Nam', 289000),
(22, 3, '22_Quần short nam thể thao Movement 7 co giãn.jpg', 'Quần short nam thể thao Movement 7\" co giãn', '-Chất liệu: 100% Polyester kết hợp tính năng: Wicking (Thấm hút nhanh), 4-way Mechanical stretch (Co giãn 4 chiều) và Quick-Dry (Nhanh khô)\r\n-Vải siêu nhẹ chỉ 106 gsm, mang lại cảm giác mặc như không mặc\r\n-Công nghệ hoàn thiện vải giúp chiếc quần thoải mái, khô thoáng và dễ chịu tối đa cho các hoạt động chạy nhẹ và tập gym\r\n-Dệt kiểu Double Weaving mang lại cảm giác Cooling khi mặc\r\n-Có túi 2 bên đựng đồ cá nhân nhỏ gọn và tiện lợi\r\n-Vải được nhuộm bằng công nghệ Zero Water Discharge (Không nước', 239000),
(23, 3, '23_Quần Short nam mặc nhà Excool.jpg', 'Quần Short nam mặc nhà Excool', '-Chất liệu: 53% Polyester PET high stretch + 47% Polyester PTT Sorona\r\nEXCOOL là vải có ưu điểm vượt trội: mát, mềm, co giãn, chống tia UV,...\r\n-Mặc ở nhà thoải mái, phù hợp với các hoạt động thể thao vận động nhẹ\r\n-Quần ngắn, ống rộng thoải mái và cạp chun để bạn luôn thấy tiện lợi\r\n-Hoàn thiện kỹ lưỡng đến từng đường may\r\n-Độ dài quần: 5 inch', 89000),
(24, 3, '24_Quần dài Kaki Excool co giãn.jpg', 'Quần dài Kaki Excool co giãn', '-Chất liệu: 43% Sợi Sorona + 57% Polyester co giãn\r\n-Quần ống dài, lưng quần âu có chun CO GIÃN bên trong vừa vặn với cơ thể\r\n-Dáng quần hơi ôm một chút để bạn luôn cảm thấy thoải mái và lịch sự\r\n-Ứng dụng công nghệ Excool: Co giãn 4 chiều, Nhẹ, Thoáng khí, Chống tia UV SPF50+\r\n-Không nên ủi, nếu cần thì ủi ở nhiệt độ thấp dưới 110 độ', 499000),
(25, 3, '25_Quần nam Daily Pants - sợi Sorona, nhuộm Cleandye.jpg', 'Quần nam Daily Pants - sợi Sorona, nhuộm Cleandye', '-Chất liệu: 47% Polyester Sorona + 53% Polyester\r\n-Sử dụng sợi SORONA có nguồn gốc từ thực vật\r\n-Sản phẩm đầu tiên nhuộm bằng công nghệ CLEANDYE tại Việt Nam\r\n-Quần ống dài, lưng chun CÓ DÂY RÚT tiện lợi vừa vặn với cơ thể\r\n-Dáng suông, không bo ống, rộng gấu phù hợp mặc đa chức năng', 299000),
(26, 3, '26_Quần thể thao Jogger co giãn.jpg', 'Quần thể thao Jogger co giãn', '-Chất liệu 100% Polyester PTT, đảm bảo nhẹ, thoáng khí, co giãn tuyệt vời\r\n-Dáng quần Slimfit, bạn có thể chọn tăng thêm 1 size\r\n-Quần Jogger độ dày vừa phải và co giãn tối đa đảm bảo sự thoải mái trong mọi hoạt động, đặc biệt hoạt động thể thao\r\n-Thiết kế đơn giản, kiểu dáng khoẻ khoắn với túi khoá kéo YKK\r\n-Đai chun bo zip kèm dây tiện lợi, vừa vặn với cơ thể', 289000),
(27, 4, '27_Túi Clean Bag.jpg', 'Túi Clean Bag', '- Chất liệu: Vải Polyester\r\n- Túi vải mỏng nhẹ, bền với 2 màu lựa chọn: Xanh rêu - Xám ghi\r\n- Kích thước: 40cm x 37cm, mang cả thế giới của bạn trong chiếc túi Clean Bag này\r\n- Thiết kế và hoàn thiện đến từng chi tiết, đồng nhất màu chỉ', 49000),
(28, 4, '28_Mũ Nón Bucket Hat thêu Care & Share Handwriting.jpg', 'Mũ/Nón Bucket Hat thêu Care & Share Handwriting', '-Chất liệu 65% Cotton, 35% Polyester\r\n-Thiết kế độc đáo được thêu phía trước mũ nổi bật\r\n-Vành hẹp; Chu vi mũ 60cm\r\n-Một kích thước phù hợp với tất cả', 169000),
(29, 4, '29_Tất Vớ thể thao cổ dài Compression Cushion.jpg', 'Tất/Vớ thể thao cổ dài Compression Cushion', '- Chất liệu: 65% Nylon, 20% Cotton, 10% Polyester, 5% Spandex\r\n- Sợi Nylon kết hợp với kiểu dệt lưới (Mesh) ở 1 số vị trí giúp tất Vừa thoáng khí, nhanh khô mà vẫn đảm bảo độ bền cao.\r\n- Thiết kế dáng tất đặc biệt dành riêng cho các hoạt động thể thao\r\n- Tất với kiểu dáng cổ dài luôn bảo vệ bạn khi vận động mạnh\r\n- Phần gót và mũi bàn chân được gia cố tốt, giúp bảo vệ khi có hoạt động mạnh\r\n- Có thể giặt máy với nước lạnh, không nên sấy và sử dụng chất tẩy, lộn ngược tất khi giặt để tất bền hơn', 69000),
(30, 4, '30_Mũ Nón lưỡi trai nam Tech Cap.jpg', 'Mũ/Nón lưỡi trai nam Tech Cap', '-Chất liệu: 100% Nylon kết hợp tính năng trượt nước Water Repellent 6\r\n-Khả năng chống UV chỉ số UPF 50+\r\n-Một chiếc mũ với thiết kế mới đem đến vẻ ngoài mới mẻ và thể thao\r\n-Thiết kế tối giản và không có phần chóp tròn không lo chạm vào phần đỉnh đầu\r\n-Vải được xử lý công nghệ ưu việt: Wicking (Thoáng khí), Quick-Dry (Nhanh khô) và Chống tia UV\r\n-Size: Vòng đầu 60cm', 199000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `name_customer` char(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `email` char(100) NOT NULL,
  `note` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `user_name` text NOT NULL,
  `img` text NOT NULL,
  `phone` decimal(10,0) NOT NULL,
  `address` text NOT NULL,
  `administrator` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `user_name`, `img`, `phone`, `address`, `administrator`) VALUES
(1, 'admin123', '12345678', 'Minh Phụng', '', '333644448', 'KTX Khu A, Linh Trung, Thủ Đức', 1),
(2, 'minhthai@gmail.com', '12345678', 'Minh Thái', '', '12345674', 'C111, Kp6, Linh Trung, Thủ Đức', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_trans` (`id_trans`,`id_user`,`id_product`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cate` (`id_cate`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_trans`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_cate`) REFERENCES `categorie` (`id`);

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
