<%@include file="common/head.jsp"%>

<!-- Page Header -->
<header class="intro-header"
	style="background-image: url('${ctx}/resource/img/home-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
				<div class="site-heading">
					<h1>Rover's Blog</h1>
					<span class="subheading">A Blog By Programmer</span>
				</div>
			</div>
		</div>
	</div>
</header>

<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
			<c:forEach items="${list}" var="at">
				<div class="post-preview">
					<a href="/blog/${at.articleId}/article">
						<h2 class="post-title">${at.title}</h2>
						<h4 class="post-subtitle">${fn:substring(at.text, 0, 50)}</h4>
					</a>
					<p class="post-meta">
						Posted by <a href="">${at.user.name}</a>
						<fmt:formatDate value="${at.createTime}"
							pattern="yyyy-MM-dd HH:mm:ss" />
					</p>
				</div>
				<hr>
			</c:forEach>
			<!-- Pager -->
			<div id="older" class="clearfix">
				<a class="btn btn-secondary float-right"
					href="/blog/${pageId+1}/posts">Older Posts &rarr;</a>
			</div>
			<script type="text/javascript">
					var older = document.getElementById('older');
					if(${list}== ""){
						older.style.display='none';
					}
				</script>
		</div>
	</div>
</div>

<hr>
<%@include file="common/foot.jsp"%>
