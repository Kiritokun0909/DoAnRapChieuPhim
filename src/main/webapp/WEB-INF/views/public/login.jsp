<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!-- Thư viện biểu mẫu (form)-->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Đăng ký thành viên</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<!-- <link rel="stylesheet" type="text/css" href="css/PublicHome.css"> -->
	
	<!-- My CSS -->
	<link href="assets/css/public/login.css" rel="stylesheet" type="text/css">

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
		
		<div class="form-container">
			<div class="column-item">
				<div class="form">
					<form action="login.htm" method="post">
						<div class="form__heading">
							<h3>Đăng nhập</h3>
						</div>
						
						<div class="form__row">
							<label class="form__label-sign-in">Email:</label>
							<input class="form__input" type="text" name="username"
							id="username" placeholder="Email hoặc số điện thoại">
						</div>
						
						<div class="form__row">
							<label class="form__label-sign-in">Mật khẩu:</label>
							<input class="form__input" type="password" name="pwd"
								id="pwd" placeholder="Nhập mật khẩu">
						</div>
						
						<div class="form__row__btn sign-in">
							<button type="submit">Đăng nhập</button>
							<a href="#">Quên mật khẩu</a> 
						</div>
					</form>
				</div>
			</div>
			
			<div class="column-item">
				<div class="form">
					<form action="register.htm" method="post">
						<div class="form__heading">
							<h3>Đăng ký</h3>
						</div>
						<div class="form__row">
							<label class="form__label">Họ và tên đệm:</label>
							<input class="form__input" type="text" 
								id="lastName" name="lastName" placeholder="Nhập họ và tên đệm"/>
						</div>
						
						<div class="form__row">
							<label class="form__label">Tên:</label>
							<input class="form__input" type="text" 
								id="firstName" name="firstName" placeholder="Nhập tên"/>
						</div>
						
						<div class="form__row">
							<label class="form__label">Email:</label>
							<input class="form__input" type="text" 
								id="email" name="email" placeholder="Nhập email"/>
						</div>
						
						<div class="form__row">
							<label class="form__label">Mật khẩu:</label>
							<input class="form__input" type="password" 
								id="password" name="password" placeholder="Nhập mật khẩu"/>
						</div>
						
						<div class="form__row">
							<label class="form__label">Số điện thoại:</label>
							<input class="form__input" type="text" 
								id="phone" name="phone" placeholder="Nhập số điện thoại"/>
						</div>
						
						<div class="form__row">
							<label class="form__label">Ngày sinh:</label>
							<div class="form__select">
								<select class="form__select" id="day" name="day"></select>
								<select class="form__select" id="month" name="month"></select>
								<select class="form__select" id="year" name="year"></select>
							</div>
						</div>
						
						<div class="form__row">
							<label class="form__label">Địa chỉ:</label>
							<input class="form__input" type="text" 
								id="address" name="address" placeholder="Nhập địa chỉ"/>
						</div>
						
						<div class="form__row__policy-text">
							Bằng việc đăng ký, bạn đã đồng ý với các 
							<a href="" class="form__row__policy-link">Điều khoản dịch vụ</a>
						</div>
							
						<div class="form__row__btn">
							<button type="submit">Đăng ký</button>
						</div>
					</form>
				</div>
				
				
			</div>
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
		
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	<script src="assets/js/birthday.js"></script>
</body>
</html>