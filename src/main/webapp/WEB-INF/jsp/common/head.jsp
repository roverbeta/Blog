<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@include file="tag.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<head>

<meta charset="utf-8">
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