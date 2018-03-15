<%@include file="common/head.jsp"%>

<!-- Page Header -->
<header class="intro-header"
	style="background-image: url('${ctx}/resource/img/contact-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
				<div class="page-heading">
					<h1>Login</h1>
					<hr class="small">
					<span class="subheading">share your ideas.</span>
				</div>
			</div>
		</div>
	</div>
</header>

<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
			<form action="/blog/login" method="post" name="login" id="contactForm" >
				<div class="control-group">
					<div class="form-group floating-label-form-group controls">
						<label>UserId</label> <input type="number" name="userId" class="form-control"
							placeholder="UserId" id="userId" required
							data-validation-required-message="Please enter your userId.">
						<p class="help-block text-danger"></p>
					</div>
				</div>
				<div class="control-group">
					<div class="form-group floating-label-form-group controls">
						<label>Password</label> <input type="password"
							name="password" class="form-control" placeholder="Password" id="password"
							required
							data-validation-required-message="Please enter your password.">
						<p class="help-block text-danger"></p>
					</div>
				</div>
				<br>
				<div class="form-group">
					<input type="submit" class="btn btn-secondary float-left" value="Login">
					<!-- Register -->
				<a class="btn btn-secondary float-right"
					href="/blog/register">Register</a>
				</div>
			</form>
		</div>
	</div>
</div>

<hr>
<%@include file="common/foot.jsp"%>