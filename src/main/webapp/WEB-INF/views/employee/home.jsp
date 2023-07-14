<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!--Main Navigation-->
	<header>
		<!-- Side Bar -->
		<nav id=main-sidebar" class="d-lg-block sidebar bg-white">
			<div class="position-sticky">
				<div class="list-group list-group-flush mx-3 mt-4">
					<a href="employee/film.htm" class="list-group-item list-group-item-action list-item-hover list-group-film" aria-current="true">
						<i class="fas fa-house-laptop fa-fw me-3"></i><span>Phim đang chiếu</span>
					</a>
					<a href="employee/calendar.htm" class="list-group-item list-group-item-action list-item-hover list-group-calendar" aria-current="true">
						<i class="fas fa-sharp fa-solid fa-film fa-fw me-3"></i><span>Lịch chiếu</span>
					</a>
        			<a href="employee/ticket.htm" class="list-group-item list-group-item-action list-item-hover list-group-ticket" aria-current="true">
  						<i class="fas fa-sharp fa-solid fa-video fa-fw me-3"></i><span>Đặt vé</span>
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
				<a class="navbar-brand" href="employee/film.htm">
					<img src="https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-logo-shadow.png" height="50" alt="" loading="lazy" />
				</a>
				
				<!-- Right links -->
			      <ul class="navbar-nav ms-auto d-flex flex-row">
			        <!-- Avatar -->
			        <li class="nav-item dropdown">
			           <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			            <img
			                 src="https://play-lh.googleusercontent.com/4qAz40o6M5w6hJ62VsjwGbYueB0fRWPmiG1yOZpNHn3qo2uzlhZZ1mwE5jtBlPp3Lw"
			                 class="rounded-circle avatar"
			                 height="43"
			                 alt=""
			                 />
			                 Nhân viên
			          </a>
			          <ul
			              class="dropdown-menu dropdown-menu-end"
			              aria-labelledby="navbarDropdownMenuLink"
			              >
			            <li><a class="dropdown-item" href="employee/home.htm">Tài khoản</a></li>
			            <li><a class="dropdown-item" href="employee/home.htm">Đăng xuất</a></li>
			          </ul>
			        </li>
			      </ul>
			      
			      	
			</div>
		</nav>
		<!-- Navbar -->
	 	
	</header>
	<!--Main Navigation-->
