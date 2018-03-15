<%@include file="common/head.jsp"%>

<!-- Page Header -->
<header class="intro-header"
	style="background-image: url('${ctx}/resource/img/contact-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
				<div class="page-heading">
					<h1>Register</h1>
					<hr class="small">
					<span class="subheading">Join us and share your ideas.</span>
				</div>
			</div>
		</div>
	</div>
</header>

<!-- Main Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
			<form action="/blog/register" method="post" name="login" id="contactForm" >
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
				<div class="control-group">
					<div class="form-group floating-label-form-group controls">
						<label>Name</label> <input type="text" name="name" class="form-control"
							placeholder="Name" id="name" required
							data-validation-required-message="Please enter your name.">
						<p class="help-block text-danger"></p>
					</div>
				</div>
				<br>
				<div class="form-group">
					<button type="submit" class="btn btn-secondary">Register</button>
				</div>
			</form>
		</div>
	</div>
</div>

<hr>
<%@include file="common/foot.jsp"%>