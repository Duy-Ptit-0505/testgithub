<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaweb.security.utils.SecurityUtils" %>
<%--<nav class="navbar-expand-lg navbar-dark fixed-top">--%>
<%--	&lt;%&ndash;<div class="container">&ndash;%&gt;--%>
<%--		&lt;%&ndash;<a class="navbar-brand" href="#">Nhóm 1</a>&ndash;%&gt;--%>
<%--		&lt;%&ndash;<button class="navbar-toggler" type="button" data-toggle="collapse"&ndash;%&gt;--%>
<%--			&lt;%&ndash;data-target="#navbarResponsive" aria-controls="navbarResponsive"&ndash;%&gt;--%>
<%--			&lt;%&ndash;aria-expanded="false" aria-label="Toggle navigation">&ndash;%&gt;--%>
<%--			&lt;%&ndash;<span class="navbar-toggler-icon"></span>&ndash;%&gt;--%>
<%--		&lt;%&ndash;</button>&ndash;%&gt;--%>
<%--		&lt;%&ndash;<div class="collapse navbar-collapse" id="navbarResponsive">&ndash;%&gt;--%>
<%--			&lt;%&ndash;<ul class="navbar-nav ml-auto">&ndash;%&gt;--%>
<%--				&lt;%&ndash;<li class="nav-item active"><a class="nav-link" href="/trang-chu#">Trang chủ&ndash;%&gt;--%>
<%--						&lt;%&ndash;<span class="sr-only">(current)</span>&ndash;%&gt;--%>
<%--				&lt;%&ndash;</a></li>&ndash;%&gt;--%>
<%--				&lt;%&ndash;<security:authorize access = "isAnonymous()">&ndash;%&gt;--%>
<%--					&lt;%&ndash;<li class><a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a></li>&ndash;%&gt;--%>
<%--					&lt;%&ndash;<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>="nav-item"&ndash;%&gt;--%>
<%--				&lt;%&ndash;</security:authorize>&ndash;%&gt;--%>
<%--				&lt;%&ndash;<security:authorize access = "isAuthenticated()">&ndash;%&gt;--%>
<%--					&lt;%&ndash;<li class="nav-item"><a class="nav-link" href="#"> Xin chào <%=SecurityUtils.getPrincipal().getUsername()%></a></li>&ndash;%&gt;--%>
<%--					&lt;%&ndash;<li class="nav-item"><a class="nav-link" href="<c:url value='/logout'/>">Thoát</a></li>&ndash;%&gt;--%>
<%--				&lt;%&ndash;</security:authorize>&ndash;%&gt;--%>
<%--			&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--		&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--	&lt;%&ndash;</div>&ndash;%&gt;--%>




<%--		<div class="row navbar">--%>
<%--			<div class="col-12 col-md-3">--%>
<%--				<div class="logo">--%>
<%--					<a href="">--%>
<%--						<img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/logo.png?1676257083798"--%>
<%--							 alt="">--%>
<%--					</a>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--			<div class="col-12 col-md-6">--%>
<%--				<div class="item-menu">--%>
<%--					<div class="nav nav1">--%>
<%--						<div class="nav-item p-2">--%>
<%--							<a class="nav-item-link" href="/trang-chu">--%>
<%--								<span style="color: var(--primary-color);">Trang chủ</span>--%>
<%--							</a>--%>
<%--						</div>--%>
<%--						<div class="nav-item p-2">--%>
<%--							<a href='<c:url value='/gioi-thieu'/>'>--%>
<%--								&lt;%&ndash;<span>Giới thiệu</span>&ndash;%&gt;--%>
<%--								<span style="color: var(--primary-color);">Giới thiệu</span>--%>
<%--							</a>--%>
<%--						</div>--%>
<%--						<div class="nav-item p-2">--%>
<%--							&lt;%&ndash;<a class="nav-item-link" href="./Duan.html">&ndash;%&gt;--%>
<%--							<a href='<c:url value='/san-pham'/>'>--%>
<%--								&lt;%&ndash;<span>Sản phẩm</span>&ndash;%&gt;--%>
<%--								<span style="color: var(--primary-color);">Sản phẩm</span>--%>
<%--							</a>--%>
<%--						</div>--%>
<%--						<div class="nav-item p-2">--%>
<%--							<a href='<c:url value='/tin-tuc'/>'>--%>
<%--								&lt;%&ndash;<span>Tin tức</span>&ndash;%&gt;--%>
<%--								<span style="color: var(--primary-color);">Tin tức</span>--%>
<%--							</a>--%>
<%--						</div>--%>
<%--						<div class="nav-item p-2">--%>
<%--							<a href='<c:url value='/lien-he'/>'>--%>
<%--								&lt;%&ndash;<span>Liên hệ</span>&ndash;%&gt;--%>
<%--									<span style="color: var(--primary-color);">Liên hệ</span>--%>
<%--							</a>--%>
<%--						</div>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</div>--%>
<%--			<div class="collapse navbar-collapse" id="navbarResponsive">--%>
<%--				<ul class="navbar-nav ml-auto">--%>
<%--					&lt;%&ndash;<li class="nav-item active"><a class="nav-link" href="/trang-chu#">Trang chủ&ndash;%&gt;--%>
<%--						&lt;%&ndash;<span class="sr-only">(current)</span>&ndash;%&gt;--%>
<%--					&lt;%&ndash;</a></li>&ndash;%&gt;--%>
<%--					<security:authorize access = "isAnonymous()">--%>
<%--						<li class><a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a></li>--%>
<%--						<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>--%>
<%--					</security:authorize>--%>
<%--					<security:authorize access = "isAuthenticated()">--%>
<%--						<li class="nav-item"><a class="nav-link" href="#"> Xin chào <%=SecurityUtils.getPrincipal().getUsername()%></a></li>--%>
<%--						<li class="nav-item"><a class="nav-link" href="<c:url value='/logout'/>">Thoát</a></li>--%>
<%--					</security:authorize>--%>
<%--				</ul>--%>
<%--			</div>--%>
<%--		</div>--%>
<%--</nav>--%>
<div class="site-mobile-menu">
	<div class="site-mobile-menu-header">
		<div class="site-mobile-menu-close mt-3">
			<span class="icon-close2 js-menu-toggle"></span>
		</div>
	</div>
	<div class="site-mobile-menu-body"></div>
</div> <!-- .site-mobile-menu -->

<div class="site-navbar mt-4">
	<div class="container py-1">
		<div class="row align-items-center">
			<div class="col-8 col-md-8 col-lg-4">
				<h1 class="mb-0"><a href="index.html" class="text-white h2 mb-0"><strong>Homeland<span class="text-danger">.</span></strong></a></h1>
			</div>
			<div class="col-4 col-md-4 col-lg-8">
				<nav class="site-navigation text-right text-md-right" role="navigation">

					<div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

					<ul class="site-menu js-clone-nav d-none d-lg-block">
						<li class="active">
							<a href="/trang-chu">Home</a>
						</li>
<%--						<li><a href="buy.html">Buy</a></li>--%>
<%--						<li><a href="rent.html">Rent</a></li>--%>
						<li class="has-children">
							<a href="#">Properties</a>
							<ul class="dropdown arrow-top">
								<li><a href="#">Condo</a></li>
								<li><a href="#">Property Land</a></li>
								<li><a href="#">Commercial Building</a></li>
								<li class="has-children">
									<a href="#">Sub Menu</a>
									<ul class="dropdown">
										<li><a href="#">Menu One</a></li>
										<li><a href="#">Menu Two</a></li>
										<li><a href="#">Menu Three</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<li class><a class="nav-link" href="<c:url value='/admin/home'/>">Trang chu Admin</a></li>

						</security:authorize>
						<security:authorize access = "isAnonymous()">
							<li class><a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>
						</security:authorize>
						<security:authorize access = "isAuthenticated()">
							<li class="nav-item"><a class="nav-link" href="#"> Xin chào <%=SecurityUtils.getPrincipal().getUsername()%></a></li>
							<li class="nav-item"><a class="nav-link" href="<c:url value='/logout'/>">Thoát</a></li>
						</security:authorize>

						<li><a href="#">Blog</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</nav>
			</div>


		</div>
	</div>
</div>
</div>