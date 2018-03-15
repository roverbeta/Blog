<%@include file="common/head.jsp"%>
<!-- Page Header -->
<header class="intro-header"
	style="background-image: url('${ctx}/resource/img/post-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
				<div class="post-heading">
					<h1>${article.title}</h1>
					<h3 class="subheading">
						Posted by ${article.user.name}
						<fmt:formatDate value="${article.createTime}"
							pattern="yyyy-MM-dd HH:mm:ss" />
				</div>
			</div>
		</div>
	</div>
</header>

<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
			<form action="/blog/${article.articleId}/update" method="post"
				id="contactForm" accept-charset="UTF-8">
				<div class="control-group">
					<div class="form-group floating-label-form-group controls">
						<label>Little</label> <input type="text" name="title"
							class="form-control" placeholder="Tittle" id="tittle" required
							data-validation-required-message="Please enter a tittle."
							value="${article.title}">
						<p class="help-block text-danger"></p>
					</div>
				</div>
				<div class="control-group">
					<div class="form-group floating-label-form-group controls">
						<label>Text</label>
						<textarea rows="10" name="text" class="form-control"
							placeholder="Text" id="text" required
							data-validation-required-message="Please enter a text.">${article.text}</textarea>
						<p class="help-block text-danger"></p>
					</div>
				</div>
				<br>
				<div class="form-group">
					<button type="submit" class="btn btn-secondary float-left">Update</button>
					<!-- delete -->
					<a class="btn btn-secondary float-right"
						href="/blog/${article.articleId}/delete">Delete</a>
				</div>
			</form>


		</div>
	</div>
</div>

<hr>
<%@include file="common/foot.jsp"%>