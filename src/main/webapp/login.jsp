<%@ page contentType="text/html;charset=utf-8" import="java.util.*" %>
<head>
        
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/notosanskr.css">
        <link rel="stylesheet" type="text/css" href="/WebProject1/css/reset.css">
        <link rel="stylesheet" type="text/css" href="/WebProject1/css/common.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.1.0/css/swiper.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="/WebProject1/css/style.css">
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&amp;display=swap" rel="stylesheet">
		

        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.1.0/js/swiper.js"></script>
		<script src="/js/jquery.min.js"></script>
        <script src="/js/script.js"></script>
    </head>
    <body class="">
        <div id="wrap" class="main">
            <header id="header" class="header">
            <div class="header-top">
                    <div class="wrapper">
                        <div class="user">
                            <ul class="clfix">
									<li><a href="/WebProject1/login.jsp"><i class="i-login"></i>로그인</a></li>
                            </ul>
                        </div>
                    </div>
            </div>
            </header> <div id="container" class="container" style="margin-top: 0px;">
		<div class="page-nav">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i></li>
				<li>로그인 및 회원정보</li>
				<li>로그인</li>		
			</ul>
		</div>
		<div style="clear:both"></div>
		<div id="content" class="content">
			<div class="sub-left">
				<h3><i class="fa fa-tags" aria-hidden="true"></i><br>
					로그인 <br>및 회원 정보</h3>
				<ul>
					<li><a href="">로그인</a></li>
					<li><a href="">회원가입</a></li>
					<li><a href="">회원정보</a></li>
                    <li><a href="/WebProject1/intro.jsp">캡스톤디자인</a></li>                    <!--					<li><a href="/studio_join/calendar/pdball/list.php">스튜디오 예약내역</a></li>-->
				</ul>
			</div>            
            <div class="sub-right">
                			    <style>
	.login{;padding:0;min-height: 87px;}
	.login .loginboxcombine{display: flex;flex-flow:column;}
	.login .loginbox{display: flex;justify-content:space-between;text-align: center;}
	.login .loginbox .loginInput{flex-basis: 60%;}
	.login .loginbox .loginSubmit{flex-basis: 35%;}
	.login .loginbox .loginInput input{width: 100%;height: 30px;display: inline-block;border: 1px solid #d5d5d5;border-radius: 3px;margin-bottom: 5px;padding-left: 5px;}
	.login .loginbox .loginSubmit input{width:100%;	height : 73px;display: inline-block;border : 1px solid #3a414c;border-radius: 3px;background: #3a414c;font-weight: bold;color: #fff;cursor:pointer;float: left;}
	.login .loginboxcombine .loginSubmit.combine .submit{width: 100%;height: 30px;border: 1px solid #d5d5d5;border-radius: 3px;margin-bottom: 5px;padding-left: 5px;background-color: #3a414c;color: #fff;height: 73px;display: flex;justify-content: center;align-items: center;font:bold 13.3333px arial;}
	.login .loginboxcombine .submit.combine{text-align: center;}
</style>

<h3>로그인</h3>
<div class="login">
    <div class="wrapper">
        <form name="loginpage" id="loginpage" method="post" action="login3.jsp">
			<input type="text" name="uid" placeholder="4자 이상" pattern="[A-Za-z0-9]{4,}" required> <br><br>
			<input type="password" name="upasswd" required> <br><br>
			<input type="reset" value="초기화">
			<input type="submit" value="로그인">
        </form>
    </div>
    </div>
</div>
            </div>
		</div>
	</div>

        </div>
    
</body>
</html>