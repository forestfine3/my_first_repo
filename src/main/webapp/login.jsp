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
			<!-- 새로추가 -->
				<div id="mobileAllMenu" class="mobile-all-menu">
					<div class="user">
						<img src="/images/mobile_logo.png" alt="" width="106">
												
												<a href="#none" class="close"></a>
					</div>
					<ul class="menu">
						<li><a href="#">사업단소개</a>
                            <ul>
                                <li><a href="/spb3/gourl.php?k=sub1_1_intro">사업단소개</a></li>
                                <li><a href="/spb3/gourl.php?k=sub1_2_intro">사업단 조직 및 담당자</a></li>
                                <li><a href="/spb3/gourl.php?k=sub1_3_intro">찾아오시는길</a></li>
                            </ul>						
						</li>
						<li><a href="#">교육프로그램</a>
                            <ul>
                                <li><a href="/spb3/gourl.php?k=sub2_1_intro">비교과교육</a></li>
                                <li><a href="/spb3/gourl.php?k=sub2_2_intro">창의융합전공</a></li>
                                <li><a href="/spb3/gourl.php?k=sub2_3_intro">캡스톤디자인</a></li>
                                <li><a href="/spb3/gourl.php?k=sub2_4_intro">프로젝트LAB</a></li>
                                <li><a href="/spb3/gourl.php?k=sub2_5_intro">현장실습</a></li>
                                <li><a href="/spb3/gourl.php?k=sub2_6_intro">창업교육</a></li>
								<li><a href="/spb3/gourl.php?k=sub2_7_intro">어드벤처디자인</a></li>
                            </ul>
						</li>
						<li><a href="#">산학협력</a>
                            <ul>
								<li><a href="/spb3/gourl.php?k=sub3_1_ICC">ICC</a></li>
								<li><a href="/spb3/gourl.php?k=sub3_2_intro">가족회사</a></li>
								<li><a href="/spb3/gourl.php?k=sub3_3_intro">기술지도</a></li><!--
								<li><a href="/sub3/sub3_4.php">미니클러스터</a></li>-->
								<li><a href="/spb3/gourl.php?k=sub3_4_intro">산학공동기술개발과제</a></li><!--
								<li><a href="/employee/list.php">재직자교육</a></li>-->
								<li><a href="/spb3/gourl.php?k=sub3_5_intro">공용장비센터</a></li>
								<li><a href="/spb3/gourl.php?k=sub3_6_intro">전문가Pool</a></li>
                            </ul>
						</li>
						<li><a href="#">지역협력</a>
                            <ul>
								<li><a href="/spb3/gourl.php?k=sub4_3_RCC">RCC</a></li>
								<li><a href="/spb3/gourl.php?k=sub4_1_intro">지역협력프로젝트</a></li>
								<li><a href="/spb3/gourl.php?k=sub4_4_intro">리빙랩</a></li>
								<li><a href="/spb3/gourl.php?k=sub4_2_intro">지역혁신선도과제</a></li>
                            </ul>
						</li>
						<li><a href="#">스튜디오</a>
                            <ul>
								<li><a href="/spb3/gourl.php?k=sub5_1_studio">스튜디오예약</a></li>
								<li><a href="/spb3/gourl.php?k=sub5_2_studio">스튜디오예약내역</a></li>
								<!--<li><a href="/spb3/sboard3/list.php?db=equipment">보유장비 목록 및 신청</a></li>
								<li><a href="/sub5/sub5_2.php">장비이용절차 및 이용요금규정</a></li>
								<li><a href="/sub5/sub5_3.php">예약신청</a></li>
								<li><a href="/sub5/sub5_4.php">장비수요조사</a></li>-->
                            </ul>
						</li>
						<li><a href="#">커뮤니티</a>
                            <ul>
								<li><a href="/spb3/gourl.php?k=sub6_1_notice">공지사항</a></li>
								<li><a href="/spb3/gourl.php?k=sub6_2_gallery">뉴스레터</a></li>
								<li><a href="/spb3/gourl.php?k=sub6_3_marketing">언론보도</a></li>
								<li><a href="/spb3/gourl.php?k=sub6_6_promotion">홍보마당</a></li>
								<li><a href="/spb3/sboard3/list.php?db=util">자료실</a></li>
								<li><a href="/spb3/gourl.php?k=sub6_4_util">Q&amp;A</a></li>
                            </ul>							
						</li>
					</ul>
					
					<div class="c-link">
						<a href="#none" class="linc">LINC+</a>
						<a href="http://www.mokpo.ac.kr" target="_blank">목포대학교 바로가기</a>
						<a href="https://mnuwb.mokpo.ac.kr/uat/uia/loginForm.do" target="_blank">목포대포탈로그인</a>
					</div>
				</div>
                <div class="header-top">
                    <div class="wrapper">
                        <div class="sites">
                            <ul class="clfix">
                                <li><a href="#none" class="current">LINC+</a></li>
                                <li><a href="http://www.mokpo.ac.kr" target="_blank">목포대학교 바로가기</a></li>
                                <li><a href="https://mnuwb.mokpo.ac.kr/uat/uia/loginForm.do" target="_blank">목포대포털로그인</a></li>
                            </ul>
                        </div>
                        <div class="user">
                            <ul class="clfix">
																	
                                	<!--<li><a href="/spb3/sjoin/join.php">회원가입</a></li>-->
								                                <!--<li><a href="#none">사이트맵</a></li>-->
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 로고 -->
                <div class="top-main">
                    <div class="wrapper">
                        <h1>
							<a href="/" class="p-logo"><span class="blind">목포대학교 linc+&nbsp;사업단</span></a>
							<a href="#none" class="m-menu"><span class="blind">메뉴</span></a>
						</h1>
                        <div class="news-wrap">
                            <div class="news">
                                <strong>NEWS &amp; NOTICE  &gt;</strong>
                                <div class="swiper-container swiper-container-vertical swiper-container-wp8-vertical">
                                    <div class="swiper-wrapper">
                                        <!-- Slides -->
                                       <!-- <div class="swiper-slide">2019년 입찰수기 및 고시공모 인사 공지 안내1...         2019-06-28</div>
                                        <div class="swiper-slide">2019년 입찰수기 및 고시공모 인사 공지 안내2...         2019-06-28</div>
                                        <div class="swiper-slide">2019년 입찰수기 및 고시공모 인사 공지 안내3...         2019-06-28</div>-->
										
						<div class="swiper-slide swiper-slide-active" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=177">2021학년도 하계 현장실습 모집 안내(실...</a></span><span style="float:right;">[21-04-30]</span></div>
					 
						<div class="swiper-slide swiper-slide-next" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=176">2021학년도 하계 현장실습 모집 안내(학생)</a></span><span style="float:right;">[21-04-30]</span></div>
					 
						<div class="swiper-slide" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=175">캡스톤디자인 3차 선정알림</a></span><span style="float:right;">[21-04-29]</span></div>
					 
						<div class="swiper-slide" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=174">4차 산업혁명 특강 "블록체인과 미래변화"</a></span><span style="float:right;">[21-04-28]</span></div>
					 
						<div class="swiper-slide" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=173">어드벤처 디자인 4차 추가모집(~5/7)</a></span><span style="float:right;">[21-04-28]</span></div>
					 
						<div class="swiper-slide" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=172">캡스톤디자인 4차 모집~5/7</a></span><span style="float:right;">[21-04-28]</span></div>
					                                     </div>
                                    <div class="dir">
                                        <div class="swiper-button-prev swiper-button-disabled"></div>
                                        <div class="swiper-button-next"></div>
                                        <div class="swiper-auto on">auto</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    var news = new Swiper('.news .swiper-container', {
                        direction : 'vertical',
                        loop: false,
                        navigation: {
                            nextEl: '.news .swiper-button-next',
                            prevEl: '.news .swiper-button-prev',
                        },
                        /*autoplay: {
                            delay: 3000,
                        },*/
                    });
                    var startStopBtn = document.querySelector(".news .swiper-auto");
                    startStopBtn.addEventListener("click", function(){
                        if(news.autoplay.running){
                            news.autoplay.stop();
                            this.classList.remove("on");
                        } else{
                            news.autoplay.start();
                            this.classList.add("on");
                        }
                        
                    })
                    //
                </script>
                <div class="gnb">
                    <div class="wrapper" id="gnb">
                        <ul class="clfix ngnb">
                            <li><a href="/spb3/gourl.php?k=sub1_1_intro">사업단소개</a></li>
                            <li><a href="/spb3/gourl.php?k=sub2_1_intro">교육프로그램</a></li>
                            <li><a href="/spb3/gourl.php?k=sub3_1_ICC">산학협력</a></li>
                            <li><a href="/spb3/gourl.php?k=sub4_3_RCC">지역협력</a></li>
                            <li><a href="/spb3/gourl.php?k=sub5_1_studio">스튜디오</a></li>
							<li><a href="/spb3/gourl.php?k=sub6_1_notice">커뮤니티</a></li>
                            <li class=""><a href="javascript:void(0)" class="all-menu-open">전체메뉴</a></li>
                        </ul>
                    </div>
                    <div id="allMenu" class="all-menu">
                        <div class="wrapper">
                            <ul>
                                <li><a href="/spb3/gourl.php?k=sub1_1_intro">사업단소개</a></li>
                                <li><a href="/spb3/gourl.php?k=sub1_2_intro">사업단 조직 및 담당자</a></li>
                                <li><a href="/spb3/gourl.php?k=sub1_3_intro">찾아오시는길</a></li>
                            </ul>
                            <ul>
                                <li><a href="/spb3/gourl.php?k=sub2_1_intro">비교과교육</a></li>
                                <li><a href="/spb3/gourl.php?k=sub2_2_intro">창의융합전공</a></li>
                                <li><a href="/spb3/gourl.php?k=sub2_3_intro">캡스톤디자인</a></li>
                                <li><a href="/spb3/gourl.php?k=sub2_4_intro">프로젝트LAB</a></li>
                                <li><a href="/spb3/gourl.php?k=sub2_5_intro">현장실습</a></li>
                                <li><a href="/spb3/gourl.php?k=sub2_6_intro">창업교육</a></li>
								<li><a href="/spb3/gourl.php?k=sub2_7_intro">어드벤처디자인</a></li>
                            </ul>
                            <ul>
								<li><a href="/spb3/gourl.php?k=sub3_1_ICC">ICC</a></li>
								<li><a href="/spb3/gourl.php?k=sub3_2_intro">가족회사</a></li>
								<li><a href="/spb3/gourl.php?k=sub3_3_intro">기술지도</a></li><!--
								<li><a href="/sub3/sub3_4.php">미니클러스터</a></li>-->
								<li><a href="/spb3/gourl.php?k=sub3_4_intro">산학공동기술개발과제</a></li><!--
								<li><a href="/employee/list.php">재직자교육</a></li>-->
								<li><a href="/spb3/gourl.php?k=sub3_5_intro">공용장비센터</a></li>
								<li><a href="/spb3/gourl.php?k=sub3_6_intro">전문가Pool</a></li>
                            </ul>
                            <ul>
								<li><a href="/spb3/gourl.php?k=sub4_3_RCC">RCC</a></li>
								<li><a href="/spb3/gourl.php?k=sub4_1_intro">지역협력프로젝트</a></li>
								<li><a href="/spb3/gourl.php?k=sub4_4_intro">리빙랩</a>
								</li><li><a href="/spb3/gourl.php?k=sub4_2_intro">지역혁신선도과제</a></li>
                            </ul>
                            <ul>
								<!--<li><a href="/spb3/sboard3/list.php?db=equipment">성과관리</a></li>
								<li><a href="/spb3/sboard3/list.php?db=kimyounggwang">김영광</a></li>
								<li><a href="/spb3/sboard3/list.php?db=jungdawoon">정다운</a></li>
								<li><a href="/spb3/sboard3/list.php?db=jungUchan">정유찬</a></li>
								<li><a href="/spb3/sboard3/list.php?db=jungdawoongallery">정다운gallery</a></li>-->
								<!--<li><a href="/sub5/sub5_2.php">장비이용절차 및 이용요금규정</a></li>
								<li><a href="/sub5/sub5_3.php">예약신청</a></li>
								<li><a href="/sub5/sub5_4.php">장비수요조사</a></li>-->
								<li><a href="#">스튜디오예약</a></li>
								<li><a href="#">스튜디오예약내역</a></li>
                            </ul>							
                            <ul>
								<li><a href="/spb3/gourl.php?k=sub6_1_notice">공지사항</a></li>
								<li><a href="/spb3/gourl.php?k=sub6_2_gallery">뉴스레터</a></li>
								<li><a href="/spb3/gourl.php?k=sub6_3_marketing">언론보도</a></li>
								<li><a href="/spb3/gourl.php?k=sub6_6_promotion">홍보마당</a></li>
								<li><a href="/spb3/gourl.php?k=sub6_4_util">자료실</a></li>
								<li><a href="/spb3/gourl.php?k=sub6_5_propose">Q&amp;A</a></li>
                            </ul>
                        </div>
                    </div>
				</div>
            </header>	<div id="container" class="container" style="margin-top: 0px;">
		<div class="sub-title">
			<h2>로그인 및 회원 정보</h2>
		</div>
		<div class="page-nav">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i></li>
				<li>

				
			</ul>
		</div>
		<div style="clear:both"></div>
		<div id="content" class="content">
			<div class="sub-left">
				<h3><i class="fa fa-tags" aria-hidden="true"></i><br>
					로그인 <br>및 회원 정보</h3>
				<ul>
					<li><a href="/spb3/sjoin/login.php">로그인</a></li>
					<li><a href="/spb3/sjoin/join.php">회원가입</a></li>
					<li><a href="/spb3/smember/profile.php">회원정보</a></li>
                    <li><a href="/spb3/gourl.php?k=student_capstone_list">캡스톤디자인</a></li>                    <!--					<li><a href="/studio_join/calendar/pdball/list.php">스튜디오 예약내역</a></li>-->
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
<h3>학생 통합로그인</h3>

<h3>로그인</h3>
<div class="login">
    <div class="wrapper">
        <form name="loginpage" id="loginpage" method="post" action="login3.jsp">
<input type="text" name="uid" placeholder="4자 이상"
pattern="[A-Za-z0-9]{4,}" required> <br><br>
<input type="password" name="upasswd" required> <br><br>
<input type="reset" value="초기화">
<input type="submit" value="로그인">
            </div>
        </form>

    </div>
</div>
            </div>
		</div>
	</div>
<footer id="footer" class="footer">
                <div class="foo-top">
                    <div class="wrapper">
                        <ul class="clfix">
                            <li><a href="/spb3/gourl.php?k=sub1_1_intro">사업단소개</a></li>
                            <li><a href="/spb3/gourl.php?k=license">이용약관</a></li>
                            <li><a href="/spb3/gourl.php?k=privacy">개인정보처리방침</a></li>
                            <!--li><a href="/spb3/sjoin/email.php">이메일무단수집거부</a></li-->
                            <li><a href="/spb3/gourl.php?k=sub1_3_intro">찾아오시는길</a></li>
                        </ul>
                        <div class="rel-site">
                            <select>
                                <option value="http://www.mokpo.ac.kr">목포대학교</option>
                            </select>
                            <a href="#none" class="btn-go"><img src="/images/btn_go.png" alt=""></a>
                        </div>
                    </div>
                </div>
                <address>
                    <div class="wrapper">
                        <div class="foo-bottom">
                            <h2><a href="#none"><img src="/images/foo_logo.png" alt="" class="web-img"><img src="/images/foo_logo_mobile.png" alt="" class="mobile-img" width="66"></a></h2>
                            <div class="copy">
                                <p>58554 전남 무안군 청계면 영산로 1666  산학협력 선도대학(LINC+) 육성사업단</p>
                                <p>TEL : 061) 450-6407 / FAX : 0303) 0949-6149<!-- / 사업자등록번호 : 411-82-08251--></p>
                                <p>Copyright (c) lincplus.mokpo.ac.kr All rights reserved.</p>
                            </div>
                            <ul class="sns clfix">
                                <li><a href="#none" target="_blank"><img src="/images/icon_sns01.png" alt=""></a></li>
                                <li><a href="#none" target="_blank"><img src="/images/icon_sns02.png" alt=""></a></li>
                                <li><a href="#none" target="_blank"><img src="/images/icon_sns03.png" alt=""></a></li>
                                <li><a href="#none" target="_blank"><img src="/images/icon_sns04.png" alt=""></a></li>
                            </ul>
                        </div>
                    </div>
                </address>
            </footer>
        </div>
    
</body></html>