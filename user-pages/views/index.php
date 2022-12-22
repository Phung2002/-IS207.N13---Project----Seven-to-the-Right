
<!doctype html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Trang chủ</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<!-- Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700' rel='stylesheet' type='text/css'>

	<!-- Css -->
	<link rel="stylesheet" href="assests/css/nivo-slider.css" type="text/css" />
	<link rel="stylesheet" href="assests/css/owl.carousel.css">
	<link rel="stylesheet" href="assests/css/owl.theme.css">
	<link rel="stylesheet" href="assests/css/bootstrap.min.css">
	<link rel="stylesheet" href="assests/css/font-awesome.min.css">
	<link rel="stylesheet" href="assests/css/style.css">
	<link rel="stylesheet" href="assests/css/responsive.css">

	<!-- jS -->
	<script src="assests/js/jquery.min.js" type="text/javascript"></script>
	<script src="assests/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assests/js/jquery.nivo.slider.js" type="text/javascript"></script>
	<script src="assests/js/owl.carousel.min.js" type="text/javascript"></script>
	<script src="assests/js/jquery.nicescroll.js"></script>
	<script src="assests/js/jquery.scrollUp.min.js"></script>
	<script src="assests/js/main.js" type="text/javascript"></script>
	<?php setcookie('cart', "", time() + 3600) ?>

</head>

<body>


	<!-- TOP HEADER Start
    ================================================== -->
	<?php include_once '../include/header.php' ?>








	<!-- SLIDER Start
    ================================================== -->


	<section id="slider-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div id="slider" class="nivoSlider">
						<img src="assests/images/Banner1.jpg" alt="" />
						<img src="assests/images/Banner2.png" alt="" />
						<img src="assests/images/Banner3.png" alt="" />
					</div> <!-- End of /.nivoslider -->
				</div> <!-- End of /.col-md-12 -->
			</div> <!-- End of /.row -->
		</div> <!-- End of /.container -->
	</section> <!-- End of Section -->



	<!-- FEATURES Start
    ================================================== -->

	<section id="features">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="block">
							<div class="media-body">
								<h6 class="media-heading">Miễn phí vận chuyển cho đơn hàng từ 200k trở lên</h6>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="block">
							<div class="media-body">
								<h6 class="media-heading">Đổi trả miễn phí nếu có bất kỳ lỗi từ nhà sản xuất</h6>
							</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="block">
							<div class="media-body">
								<h6 class="media-heading">Tự hào sản phẩm được sản xuất tại Việt Nam</h6>
							</div> <!-- End of /.media-body -->
					</div> <!-- End of /.block -->
				</div> <!-- End of /.col-md-4 -->
			</div> <!-- End of /.row -->
		</div> <!-- End of /.container -->
	</section> <!-- End of section -->




	<!-- PRODUCTS Start
    ================================================== -->

	<section id="products">
		<div class="container">
			
			<div class="row">
				<div class="col-md-12">
					<div class="block-heading">
						<h2>Sản Phẩm Mới</h2>
					</div>
				</div>
			</div>
		<div class="row">
				<?php
				$action = "getData";
				include '../controllers/productsController.php';
				$i = 0;
				foreach ($products as $prd) {
					$i++;
					if ($i < 6) {
						echo '<div class="col-md-3">
						<div class="products">
									<a href="../controllers/productsController.php?item=' . $prd->getCategoryDTO()->getId() . '&id=' . $prd->getId() . '&action=getSingleData">
							<img src="../../imgs/';
						if ($prd->getImg() == '') {
							echo 'productDefault.png';
						} else {
							echo $prd->getImg();
						}
						echo '" alt="" width="250px" style="object-fit: contain; height: 373px"></img>
						</a>
							
								<h4>' . $prd->getClothes_name() . '</h4>
						
							<p class="price">' . number_format($prd->getPrice()) . 'đ</p>';
						if ($user_id == -1) {
							echo '
							<a data-toggle="modal" data-target="#myModal" href="#" class="view-link shutter">';
						} else {
							echo '
							<a class="view-link shutter" href="../controllers/cartController.php?id=' . $prd->getId() . '&action=add2Cart&item=' . $prd->getCategoryDTO()->getId() . '">';
						}
						echo '
							<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>Thêm vào giỏ hàng</a>
						</div></div>';
					}
				}
				?>
			</div> <!-- End of /.col-md-3 -->
		</div> <!-- End of /.row -->
		</div> <!-- End of /.container -->
	</section> <!-- End of Section -->




	<!-- CALL TO ACTION Start
    ================================================== -->

	<section id="call-to-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="block">
						<div class="block-heading">
							<h2>Các đối tác của chúng tôi</h2>
						</div>
					</div> <!-- End of /.block -->
					<div id="owl-example" class="owl-carousel">
						<div> <img src="assests/images/Company1.png" alt=""></div>
						<div> <img src="assests/images/Company2.png" alt=""></div>
						<div> <img src="assests/images/Company3.png" alt=""></div>
						<div> <img src="assests/images/Company4.png" alt=""></div>
						<div> <img src="assests/images/Company5.png" alt=""></div>
				
					</div> <!-- End of /.Owl-Slider -->
				</div> <!-- End of /.col-md-12 -->
			</div> <!-- End Of /.Row -->
		</div> <!-- End Of /.Container -->
	</section> <!-- End of Section -->



	<!-- Footer -->
	<?php
	include_once '../include/footer.php';
	?>

	<a id="back-top" href="#"></a>
</body>

</html>