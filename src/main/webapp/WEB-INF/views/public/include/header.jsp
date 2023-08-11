<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<script src="assets/js/public/header.js"></script>
<div class="header">
	<div class="menu">
		<nav class="navbar navbar-expand-lg bg-dark">
			<div class="container-fluid">

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item dropdown text-success"><a
							class="nav-link  text-success" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Menu </a>
							<ul class="dropdown-menu text-success">
								<li><a class="dropdown-item text-success" href="#">Hệ
										thống rạp</a></li>
								<li><a class="dropdown-item text-success" href="#">Lịch
										chiếu</a></li>
								<li><a class="dropdown-item text-success">Khuyến mãi |
										Sự kiện</a></li>
								<li><a class="dropdown-item text-success" href="#">Về
										chúng tôi</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link text-success"
							aria-current="page" href="#"> Trang chủ </a></li>
					</ul>
					<c:choose>
						<c:when test="${SignedIn}">
							<button class="btn btn-outline-success" type="submit">Thông
								tin cá nhân</button>
							<button class="btn btn-outline-success" type="submit">Đăng
								xuất</button>
						</c:when>
						<c:otherwise>
							<button class="btn btn-outline-success" type="submit">Mua
								vé</button>
							<button class="btn btn-outline-success" data-bs-toggle="modal"
								data-bs-target="#exampleModal">Đăng nhập</button>

							<div id="exampleModal" class="modal" tabindex="-1">
								<div class="modal-dialog modal-dialog-centered">
									<form action="login.htm" method="post">
										<div class="modal-content p-3"
											style="background-color: #121825;">

											<div class="modal-body">
												<div class="mb-3">
													<label for="exampleFormControlInput1"
														class="form-label text-success">Email address</label> <input
														type="email" class="form-control"
														id="exampleFormControlInput1" name="username"
														placeholder="name@example.com">
												</div>
												<div class="mb-3">
													<label for="inputPassword5" class="form-label text-success">Password</label>
													<input type="password" id="inputPassword5" name="pwd"
														class="form-control" aria-describedby="passwordHelpBlock">
												</div>
												<div id="passwordHelpBlock" class="form-text text-white">Your
													password must be 8-20 characters long, contain letters and
													numbers, and must not contain spaces, special characters,
													or emoji.</div>
											</div>
											<div class="text-center">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">Thoát</button>
												<button type="submit" class="btn btn-success">Đăng
													nhập</button>
												<button type="button" class="btn btn-success">Đăng
													ký tài khoản</button>
											</div>
									</form>
								</div>
							</div>
				</div>

				</c:otherwise>
				</c:choose>

			</div>
	</div>
	</nav>


</div>
</div>