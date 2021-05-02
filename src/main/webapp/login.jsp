<%@ page contentType="text/html; charset=utf-8"%>



<html>
<head>
<title>로그인</title>

<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"
>
<link rel="stylesheet" type="text/css" href="/WebProject1/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="/WebProject1/css/common.css"
>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.1.0/css/swiper.min.css"
>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
>
<link rel="stylesheet" type="text/css" href="/WebProject1/css/style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&amp;display=swap"
	rel="stylesheet"
>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.1.0/js/swiper.js"
></script>
<script src="/js/jquery.min.js"></script>
<script src="/js/script.js"></script>
</head>
<body>
	<div id="wrap" class="main">
		<header id="header" class="header"> </header>
		<div id="container" class="container">
			<div id="content" class="content">
				<div class="sub-right">
<style>
.login {;
	padding: 0;
	min-height: 87px;
}

.login .loginboxcombine {
	display: flex;
	flex-flow: column;
}

.login .loginbox {
	display: flex;
	justify-content: space-between;
	text-align: center;
}

.login .loginbox .loginInput {
	flex-basis: 60%;
}

.login .loginbox .loginSubmit {
	flex-basis: 35%;
}

.login .loginbox .loginInput input {
	width: 100%;
	height: 30px;
	display: inline-block;
	border: 1px solid #d5d5d5;
	border-radius: 3px;
	margin-bottom: 5px;
	padding-left: 5px;
}

.login .loginbox .loginSubmit input {
	width: 100%;
	height: 73px;
	display: inline-block;
	border: 1px solid #3a414c;
	border-radius: 3px;
	background: #3a414c;
	font-weight: bold;
	color: #fff;
	cursor: pointer;
	float: left;
}

.login .loginboxcombine .loginSubmit.combine .submit {
	width: 100%;
	height: 30px;
	border: 1px solid #d5d5d5;
	border-radius: 3px;
	margin-bottom: 5px;
	padding-left: 5px;
	background-color: #3a414c;
	color: #fff;
	height: 73px;
	display: flex;
	justify-content: center;
	align-items: center;
	font: bold 13.3333px arial;
}

.login .loginboxcombine .submit.combine {
	text-align: center;
}
</style>
					<div class="sub-right">
						
						<h3>로그인</h3>
						<div class="login">
							<div class="wrapper">
								<form name="loginpage" id="loginpage" method='post'
									action='/spb3/sjoin/login.php'
								>
									<input type='hidden' name='goto' value=''>
									<input type='hidden' name='mode' value='login'>
									<div class="loginbox">
										<div class="loginInput">
											<input type="text" name="userid" class="userid"
												placeholder="아이디"
											>
											<input type="password" name="passwd" class="passwd"
												placeholder="비밀번호"
											>
										</div>
										<div class="loginSubmit">
											<input type="submit" value="로그인" class="submit">
										</div>
									</div>
								</form>
								<div class="join">
									<p>회원가입을 하시면 다양하고 특별한 혜택이 준비되어 있습니다.</p>
									<a href="/spb3/sjoin/" class="memberJoin">회원가입 <i
										class="fa fa-angle-right" aria-hidden="true"
									></i></a>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		
	</div>
</body>
</html>