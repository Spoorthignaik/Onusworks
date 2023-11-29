<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Module</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body
	style="background-image: url('data:image/jpeg;base64,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'); background-size: cover; background-attachment: fixed">

	<div class="container">
		<div class="row">
			<div class="col m6">
				<div class="card">
					<div class="card-context">

						<h5>Register Here..!!</h5>
						<h6 id="msg" class="center-align"></h6>
						<div class="form center-align">
							<form action="register" method="post" id="myForm">
								<input type="text" name="user_name"
									placeholder="Enter Your Name"> <input type="password"
									name="user_password" placeholder="Enter Your Password">
								<input type="email" name="user_email"
									placeholder="Enter Your Email">
								<button type="submit">Click Here</button>


							</form>

						</div>
						<div class="loader center-align"
							style="margin-top: 10px; display: none">


							<div class="preloader-wrapper big active">
								<div class="spinner-layer spinner-blue">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-red">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-yellow">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>

								<div class="spinner-layer spinner-green">
									<div class="circle-clipper left">
										<div class="circle"></div>
									</div>
									<div class="gap-patch">
										<div class="circle"></div>
									</div>
									<div class="circle-clipper right">
										<div class="circle"></div>
									</div>
								</div>
							</div>

							<h6>Please Wait...</h6>

						</div>

					</div>
				</div>
			</div>
		</div>


		




		<script src="https://code.jquery.com/jquery-3.7.1.min.js"
			integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
			crossorigin="anonymous"></script>

		<script>
			$(document).ready(function() {

				console.log("page is ready")

				$("#myForm").on('submit', function(event) {
					event.preventDefault();


					var f = $(this).serialize();
					console.log(f);

					$(".loader").show();
					$(".form").hide();

					$.ajax({
						url : "register",
						data : f,
						type : 'post',
						success : function(data, textStatus, jqXHR) {
							console.log(data);
							$(".loader").hide();
							$(".form").show();

							if (data.trim() === "complete") {
								$('#msg').html("Successfully Registered !!");
								$('#msg').addClass('green-text');
							} else {
								$('#msg').html("Something Went Wrong");
								$('#msg').addClass('red-text');
							}

						},
						error : function(jqXHR, textStatus, errorThrown) {
							console.log(data);
							console.log("error...");
							$(".loader").hide();
							$(".form").show();
							$('#msg').html("something went wrong in server")
						}

					}) //ajax
				}) //event
			});
		</script>
</body>
</html>