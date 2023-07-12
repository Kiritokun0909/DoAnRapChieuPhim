<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Cinema</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
 	<link rel="stylesheet" type="text/css" href="css/PublicHome.css">
 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div>
		<div class="header">
			<div class="menu">
				<nav class="navbar navbar-expand-lg bg-dark">
				  <div class="container-fluid">

				    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				      <span class="navbar-toggler-icon"></span>
				    </button>

				    <div class="collapse navbar-collapse" id="navbarSupportedContent">
				      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				      	<li class="nav-item dropdown text-success">
				          <a class="nav-link  text-success" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				            Menu
				          </a>
				          <ul class="dropdown-menu text-success">
				            <li ><a class="dropdown-item text-success" href="#">Hệ thống rạp</a></li>
				            <li ><a class="dropdown-item text-success" href="#">Lịch chiếu</a></li>
				            <li ><a class="dropdown-item text-success">Khuyến mãi | Sự kiện</a></li>
				            <li ><a class="dropdown-item text-success" href="#">Về chúng tôi</a></li>
				          </ul>
				        </li>
				        <li class="nav-item" >
				          <a class="nav-link text-success" aria-current="page" href="#">
				          	Trang chủ
				          </a>
				        </li>
				      </ul>
				      	<button class="btn btn-outline-success" type="submit">Mua vé</button>
				        <button class="btn btn-outline-success" type="submit">Đăng nhập</button>

				    </div>
				  </div>
				</nav>


			</div>
		</div>
		<div class="slider">
			<div id="carouselExampleIndicators" class="carousel slide">
			  <div class="carousel-indicators">
			    <button type="button " data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active btn btn-primary rounded-circle" aria-current="true" aria-label="Slide 1"></button>
			    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
			    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
			  </div>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="https://www.bhdstar.vn/wp-content/uploads/2023/07/1920X1080-MUA-NA%CC%80Y-TA%CC%A3%CC%86NG-KIA.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="https://www.bhdstar.vn/wp-content/uploads/2023/07/1920X1080-MUA-NA%CC%80Y-TA%CC%A3%CC%86NG-KIA.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="https://www.bhdstar.vn/wp-content/uploads/2023/07/1920X1080-MUA-NA%CC%80Y-TA%CC%A3%CC%86NG-KIA.jpg" class="d-block w-100" alt="...">
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div>
		</div>
		<div class="movie-list">
			    <div class="container-fluid">
			    <h1 class="text-center" style="color:#C3E457"> LỊCH CHIẾU THEO PHIM | LỊCH CHIẾU THEO RẠP</h1>
			    <div class="row">
			      <div class="owl-carousel owl-theme nonloop owl-loaded owl-drag" >
			        <div class="card">
			          <div class="card-body">
			            <img src="https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002703?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500" class="card-img-top" height="500px">
			            <div class="row" style="height:200px">
			              <h1 class="text-center">DETECTIVE CONAN THE MOVIE: BLACK IRON SUBMARINE</h1>
			            </div>
			          </div> 
			          <button class="btn btn-outline-success fixed-bottom" type="submit">Mua vé</button> 
			        </div>
			        <div class="card" >
			          <div class="card-body ">
			            <img src="https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002750?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500" class="card-img-top" height="500px">
			            <div class="row" style="height:200px"><h1 class="text-center">TẾU CÔNG CHUYỆN</h1></div>
			          </div>
			          <button class="btn btn-outline-success fixed-bottom" type="submit">Mua vé</button>
			        </div>
			        <div class="card">
			          <div class="card-body ">
			            <img src="https://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002723?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500" class="card-img-top" height="500px">
			            <div class="row" style="height:200px" ><h1 class="text-center">RALLY ROAD RACERS</h1></div>
			          </div>
			          <button class="btn btn-outline-success fixed-bottom" type="submit">Mua vé</button>
			        </div>
			      </div>
			    </div>
			  </div>
			  <h1></h1>
  		</div>
		<div class="bg-dark">
			<footer class="py-5 container">

				<div class="row">
					<div class="col-6 text-light">
						<h5 ">VỀ IT CINEMA</h5>
						<ul class="nav flex-column">
							<li class="nav-item mb-2">
								<a href="#" class="nav-link p-0 text-yellow">Hệ thống rạp</a>
							</li>
							<li class="nav-item mb-2">
								<a href="#" class="nav-link p-0 text-yellow">Tuyển dụng</a>
							</li>
							<li class="nav-item mb-2">
								<a href="#" class="nav-link p-0 text-yellow">Liên hệ</a>
							</li>
						</ul>
					</div>
					<div class="col-6 text-light">
						<h5>QUY ĐỊNH & ĐIỀU KHOẢN</h5>
						<ul class="nav flex-column text-warning">
							<li class="nav-item mb-2">
								<a href="#" class="nav-link p-0 text-yellow">Quy định thành viên</a>
							</li>
							<li class="nav-item mb-2">
								<a href="#" class="nav-link p-0 text-yellow">Điều khoản</a>
							</li>
							<li class="nav-item mb-2">
								<a href="#" class="nav-link p-0 text-yellow">Hướng dẫn đặt vé trực tuyến</a>
							</li>
							<li class="nav-item mb-2">
								<a href="#" class="nav-link p-0 text-yellow">Quy định và chính sách chung</a>
							</li>
							<li class="nav-item mb-2">
								<a href="#" class="nav-link p-0 text-yellow">Chính sách bảo vệ thông tin cá nhân của người tiêu dùng</a>
							</li>

						</ul>
					</div>
				</div>
				<div class="text-center p-3 text-light">
				    © 2020 Copyright: IT CINEPLEX
			  	</div>
			</footer>
		</div>
		

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">

$('.nonloop').owlCarousel({
    center: true,
    items:5,
    loop:true,
    margin:20,
    responsive:{
        600:{
            items:5
        }
    }
});
</script>
</body>
</html>