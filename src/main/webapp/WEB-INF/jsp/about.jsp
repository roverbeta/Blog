<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@include file="common/tag.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<head>
<meta charset="UTF-8"/>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Rover">

<title>Blog - Start Blog</title>

<!-- Bootstrap Core CSS -->
<link href="${ctx}/resource/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Additional fonts for this theme -->
<link href="${ctx}/resource/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this theme -->
<link href="${ctx}/resource/css/clean-blog.min.css" rel="stylesheet">

<!-- Temporary navbar container fix until Bootstrap 4 is patched -->
<style>
.navbar-toggler {
	z-index: 1;
}

@media ( max-width : 576px) {
	nav>.container {
		width: 100%;
	}
}
</style>

</head>

<body>
	<!-- jQuery Version 3.1.1 -->
	<script src="${ctx}/resource/lib/jquery/jquery.js"></script>
	<%--jQuery Cookie操作插件--%>
	<script
		src="http://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
	<script type="text/javascript">
	if(${state}==1){
		$.cookie('userId', ${user.userId}, { expires: 7, path: '/blog'} ); 
		}
	</script>
	<!-- Navigation -->
	<nav class="navbar fixed-top navbar-toggleable-md navbar-light"
		id="mainNav">
	<div class="container">
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			Menu <i class="fa fa-bars"></i>
		</button>
		<a class="navbar-brand page-scroll" href="/blog">Start Blog</a>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link page-scroll"
					href="/blog">主页</a></li>
				<li class="nav-item"><a class="nav-link page-scroll"
					href="/blog/about">关于</a></li>
				<li class="nav-item"><a class="nav-link page-scroll"
					href="/blog/post">发博客</a></li>
				<li id="loginl" class="nav-item"><a
					class="nav-link page-scroll" href="/blog/login">登录</a></li>
				<li class="nav-item"><a class="nav-link page-scroll"
					href="#contact">联系我们</a></li>
				<li id="logoutl" class="nav-item"><a
					class="nav-link page-scroll" href="javascript:deletecookie()">登出</a></li>

				<script type="text/javascript">
					var loginl = document.getElementById('loginl');
					var logoutl = document.getElementById('logoutl');
					if($.cookie('userId')){
						loginl.style.display='none';
					}else {
						logoutl.style.display='none';
					}
					 function deletecookie(){
						 $.cookie('userId', '', { expires: -1 });
						 window.location.href ='/blog';
					 }
				</script>
			</ul>
		</div>
	</div>
	</nav>

<!-- Page Header -->
<header class="intro-header"
	style="background-image: url('${ctx}/resource/img/about-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
				<div class="page-heading">
					<h1>About Me</h1>
					<span class="subheading">This is what I do.</span>
				</div>
			</div>
		</div>
	</div>
</header>

<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
			<p>2018.3.16--完成博客系统的包括登录、注册、发博客等大部分功能</p>
			<p>2018.3.17--将项目部署到了服务器，可通过访问公网IP使用博客</p>
			<p>系统将逐渐完善...</p>
		</div>
	</div>
</div>

<hr>

<%@include file="common/foot.jsp"%>
