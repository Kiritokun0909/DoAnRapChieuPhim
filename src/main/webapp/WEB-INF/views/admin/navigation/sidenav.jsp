<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Tạo Navigation Bar và Side Bar -->   
 
<!--Main Navigation-->
<header>
	<!-- Side Bar -->
	<nav id=main-sidebar" class="d-lg-block sidebar bg-white">
		<div class="position-sticky">
			<div class="list-group list-group-flush mx-3 mt-4">
				<a href="admin/room.htm" class="list-group-item list-group-item-action list-item-hover js-active-room" aria-current="true">
					<i class="fas fa-house-laptop fa-fw me-3"></i><span>Phòng chiếu</span>
				</a>
				<!-- <a href="admin/movie.htm" class="list-group-item list-group-item-action list-item-hover js-active-movie" aria-current="true">
					<i class="fas fa-sharp fa-solid fa-film fa-fw me-3"></i><span>Phim</span>
				</a>
       			<a href="#" class="list-group-item list-group-item-action list-item-hover js-active-showtime" aria-current="true">
 						<i class="fas fa-sharp fa-solid fa-video fa-fw me-3"></i><span>Lịch chiếu</span>
				</a>
       			<a href="#" class="list-group-item list-group-item-action list-item-hover js-active-employee" aria-current="true">
					<i class="fas fa-person fa-fw me-3"></i><span>Nhân viên</span>
				</a> -->
				<a href="admin/food-beverage.htm" class="list-group-item list-group-item-action list-item-hover js-active-food-bevarage" aria-current="true">
					<i class="fas fa-person fa-fw me-3"></i><span>Dịch vụ ăn uống</span>
				</a>
				
				<a href="#" class="list-group-item list-group-item-action list-item-hover" aria-current="true">
					<i class="fas fa-tachometer-alt fa-fw me-3"></i><span>...</span>
				</a>
			</div>
		</div>
	</nav>
	<!-- Sidebar -->


	<!-- Navbar -->
	<nav id="main-navbar" class="navbar navbar-expand bg-dark navbar-dark fixed-top py-1">
		<div class="container-fluid">
		
			<!-- Brand -->
			<a class="navbar-brand" href="admin/sidenav.htm">
				<img src="https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-logo-shadow.png" height="50" alt="" loading="lazy" />
			</a>
			
			<!-- Right links -->
		      <ul class="navbar-nav ms-auto d-flex flex-row">
		        <!-- Avatar -->
		        <li class="nav-item dropdown">
		           <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            <img
		                 src="https://cdn-icons-png.flaticon.com/512/2304/2304226.png"
		                 class="rounded-circle avatar"
		                 height="43"
		                 alt=""
		                 />
		                 Admin
		          </a>
		          <ul
		              class="dropdown-menu dropdown-menu-end"
		              aria-labelledby="navbarDropdownMenuLink"
		              >
		            <li><a class="dropdown-item" href="admin/sidenav.htm">Thông tin</a></li>
		            <li><a class="dropdown-item" href="admin/sidenav.htm">Đăng xuất</a></li>
		          </ul>
		        </li>
		      </ul>
		      
		      	
		</div>
	</nav>
	<!-- Navbar -->
 	
</header>
<!--Main Navigation-->
