<%@include file="common/head.jsp"%>

<!-- Page Header -->
<header class="intro-header"
	style="background-image: url('${ctx}/resource/img/home-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
				<div class="site-heading">
					<h1>${article.title}</h1>
					<h3 class="subheading">
						Posted by ${article.user.name}
						<fmt:formatDate value="${article.createTime}"
							pattern="yyyy-MM-dd HH:mm:ss" />
					</h3>
				</div>
			</div>
		</div>
	</div>
</header>

<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
			<div class="post-preview">
				<a>
					<h2 class="post-title" align="center">${article.title}</h2>

					<h4 class="post-subtitle" style="white-space: pre-wrap">${article.text}</h4>
				</a>
				<hr>
				<p class="post-meta">
					Posted by <a href="#">${article.user.name}</a>
					<fmt:formatDate value="${article.createTime}"
						pattern="yyyy-MM-dd HH:mm:ss" />
				</p>
			</div>
			<hr>
			<!-- Edit -->
			<div id="edit" class="clearfix">
				<a class="btn btn-secondary float-right"
					href="/blog/${article.articleId}/edit">Edit</a>
			</div>
			<script type="text/javascript">
					var edit = document.getElementById('edit');
					if($.cookie('userId')!=${article.userId}){
						edit.style.display='none';
					}
				</script>
		</div>
	</div>
</div>
<hr>

<%@include file="common/foot.jsp"%>
