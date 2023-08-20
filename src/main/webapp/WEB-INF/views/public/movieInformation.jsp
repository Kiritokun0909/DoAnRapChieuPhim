<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- Thư viện biểu mẫu (form)-->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Thư viện cơ bản (core)-->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cinema</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<link href="assets/css/public/home.css" rel="stylesheet" type="text/css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
	integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
	integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Get Current Path  -->
<base href="${pageContext.servletContext.contextPath }/">
</head>
<body>
	<div>
		<%@include file="/WEB-INF/views/public/include/header.jsp"%>
		<div class=""
			style="background-image: url(https://www.bhdstar.vn/wp-content/themes/bhd/assets/images/movie-details-bg.jpg)">
			<div class="container text-white">
				<div class="row">

					<div class="col-4">
						<div class="row">
							<!-- <div class="col-2"></div> -->
							<div class="col-12">
								<img
									src="http://booking.bhdstar.vn/CDN/media/entity/get/FilmPosterGraphic/HO00002696?referenceScheme=HeadOffice&allowPlaceHolder=true&height=500"
									class="col-12">
							</div>
						</div>

					</div>
					<div class="col-8">
						<div class="row" style="padding-left: 10px">
							<div class="col-12">
								<h1>INSIDIOUS: THE RED DOOR</h1>
								<p style="font-size: 18px;">10 năm sau các sự kiện xảy ra ở
									Quỷ Quyệt 2, khi Dalton, cậu con trai của Josh đã trưởng thành,
									chuẩn bị trước vào ngưỡng cửa đại học và phần còn lại của gia
									định Lambert phải đối mặt với hậu quả từ quyết định của họ
									trong quá khứ cách đây gần một thập kỉ</p style="font-size: 10px;">
								<br>
								<div class="row" style="font-size: 16px;">
									<div class="col-2">Phân Loại</div>
									<div class="col-10">T16 - PHIM DÀNH CHO KHÁN GIẢ TỪ 16
										TUỔI TRỞ LÊN</div>
								</div>
								<div class="row">
									<div class="col-2">Đạo diễn</div>
									<div class="col-10">Patrick Wilson</div>
								</div>
								<div class="row">
									<div class="col-2">Diễn viên</div>
									<div class="col-10">Ty Simpkins</div>
								</div>
								<div class="row">
									<div class="col-2">Thể loại</div>
									<div class="col-10">Horror</div>
								</div>
								<div class="row">
									<div class="col-2">Khởi chiếu</div>
									<div class="col-10">2023-07-14</div>
								</div>
								<div class="row">
									<div class="col-2">Thời lượng</div>
									<div class="col-10">107 phút</div>
								</div>
								<div class="row">
									<div class="col-2">Ngôn ngữ</div>
									<div class="col-10">Phim có phụ đề</div>
								</div>
								<div class="row" style="margin-top: 30px;">
									<div class="col-2">
										<button class="btn" data-bs-toggle="modal"
											data-bs-target="#exampleModal"
											style="background-color: #45ab3d; white-space: nowrap;">XEM
											TRAILER</button>
										<!-- Modal -->
										<div class="modal fade" id="exampleModal" tabindex="-1"
											aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog modal-xl">
												<div class="modal-content"
													style="background: transparent; margin-left: -100px;">

													<div class="modal-body">
														<iframe id="trailer-video" width="1280" height="720"
															src="https://www.youtube.com/embed/HJibv_IjstA"
															title="THÁM TỬ LỪNG DANH CONAN: TÀU NGẦM SẮT MÀU ĐEN (Official Trailer) | Khởi chiếu tại rạp 21.07.2023"
															frameborder="0"
															allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
															allowfullscreen></iframe>
													</div>
												</div>
											</div>
										</div>



									</div>
									<div class="col-10">
										<a class="btn " href="#chonthongtinve"
											style="background-color: #45ab3d;">MUA VÉ NGAY</a>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<h1 class="text-center mt-5" id="chonthongtinve">VUI LÒNG CHỌN
					THÔNG TIN VÉ</h1>
				<hr>
				<div class="container">
					<div class="row">
						<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>

							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link btn btn-success" data-bs-toggle="pill"
									data-bs-target="#pills-date" type="button" role="tab"
									aria-controls="pills-date" aria-selected="true">
									<div>Chủ nhật</div>
									<div>17-7</div>
								</button>
							</li>

						</ul>
						<hr>
						<div class="tab-content" id="pills-tabContent">
							<div class="tab-pane fade show active" id="pills-date"
								role="tabpanel" aria-labelledby="pills-date-tab" tabindex="0">
								<div class="row">
									<div class="col-4">
										<div class="card text-white bg-dark p-3">
											<div>BHD Star</div>
											<p>Tầng 4, Vincom Plaza Lê Văn Việt, 50 Lê Văn Việt,
												P.Hiệp Phú, Quận 9, TP.HCM</p>
										</div>
									</div>
									<div class="col-1"></div>
									<div class="col-6">
										<ul class="row text-center list-unstyled">
											<li class="col-2 p-0 m-1"><button
													class="btn btn-dark text-white" style="font-size: 20px;">10:00
												</button></li>
											<li class="col-2 p-0 m-1"><button
													class="btn btn-dark text-white" style="font-size: 20px;">10:00
												</button></li>
											<li class="col-2 p-0 m-1"><button
													class="btn btn-dark text-white" style="font-size: 20px;">10:00
												</button></li>
											<li class="col-2 p-0 m-1"><button
													class="btn btn-dark text-white" style="font-size: 20px;">10:00
												</button></li>
											<li class="col-2 p-0 m-1"><button
													class="btn btn-dark text-white" style="font-size: 20px;">10:00
												</button></li>
											<li class="col-2 p-0 m-1"><button
													class="btn btn-dark text-white" style="font-size: 20px;">10:00
												</button></li>

										</ul>

									</div>

								</div>
							</div>

						</div>
					</div>

				</div>
				<hr class="mb-3">
				<div class="container">
					<h1 class="text-center pb-5">MÀN HÌNH</h1>
					<div class="bg-dark p-3">
						<div class="row">
							<div class="">
								<label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label> <label class="checkbox-button"> <input type="checkbox">
									<span class="checkbox-label">A06</span>
								</label>




							</div>
							<div class="form-group bg-secondary"></div>
						</div>
						<hr>
						<button class="btn btn-success">Tiếp theo</button>

					</div>
				</div>



			</div>




			<%@include file="/WEB-INF/views/public/include/footer.jsp"%>


			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
				crossorigin="anonymous"></script>
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"
				integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw=="
				crossorigin="anonymous" referrerpolicy="no-referrer"></script>
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
				integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
				crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
	$('.nonloopDate').owlCarousel({
		center: false,
		items:14,
		loop:false,
		margin:10,
		responsive:{
			600:{
				items:14
			}
		}
	});
</script>
<script type="text/javascript">
	const myModal = document.getElementById('exampleModal')

	myModal.addEventListener('hidden.bs.modal', () => {
  // Xử lý khi cửa sổ popup đã được đóng
  		var video = $("#trailer-video").attr("src");
		$("#trailer-video").attr("src","");
		$("#trailer-video").attr("src",video);
	});
</script>
</body>
</html>