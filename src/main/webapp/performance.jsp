<%@ page contentType="text/html;charset=utf-8" %>
<%-- fmt태그 사용 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko"><head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="naver-site-verification" content="b73626fce2c5f926a58ba6b8a38fcd2f11857775">
		<title>목포대학교 링크플러스사업단</title>
<meta name="keywords" content="linc,lincplus,linc+,목포대,목포대학교,목포대링크플러스,목포대학교링크플러스,비교과교육,창의융합전공,캡스톤디자인,프로젝트LAB,현장실습,창업교육,ICC,가족회사,기술지도,미니클러스터,산학공동기술개발,재직자교육,공용장비센터,지역협력프로젝트,지역혁신선도과제,RCC">
<meta name="description" content="linc,lincplus,linc+,목포대,목포대학교,목포대링크플러스,목포대학교링크플러스,비교과교육,창의융합전공,캡스톤디자인,프로젝트LAB,현장실습,창업교육,ICC,가족회사,기술지도,미니클러스터,산학공동기술개발,재직자교육,공용장비센터,지역협력프로젝트,지역혁신선도과제,RCC">
		
        
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/notosanskr.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.1.0/css/swiper.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
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
													<a href="/spb3/sjoin/login.php" class="mm-login">로그인</a>
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
																	<li><a href="/spb3/sjoin/login.php"><i class="i-login"></i>로그인</a></li>
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
										
						<div class="swiper-slide swiper-slide-active" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=162">2021 우리 동네 문제 해결 리빙Lab  프...</a></span><span style="float:right;">[21-04-12]</span></div>
					 
						<div class="swiper-slide swiper-slide-next" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=161">2021학년도 1학기 현장실습 교재제작 및...</a></span><span style="float:right;">[21-04-12]</span></div>
					 
						<div class="swiper-slide" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=160">2021학년도 성과달성기반 자율비교과교...</a></span><span style="float:right;">[21-04-09]</span></div>
					 
						<div class="swiper-slide" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=159">2021학년도 어드벤처디자인 추가모집</a></span><span style="float:right;">[21-04-02]</span></div>
					 
						<div class="swiper-slide" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=158">2021학년도 캡스톤디자인 추가모집 안내</a></span><span style="float:right;">[21-04-02]</span></div>
					 
						<div class="swiper-slide" style="width: 72%; height: 3.35544e+07px;"><span><a href="/spb3/sboard3/read.php?db=notice&amp;uid=157">2021학년도 어드벤처디자인 선정팀 안내</a></span><span style="float:right;">[21-04-01]</span></div>
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
			<h2>교육프로그램</h2>
		</div>
		<div class="page-nav">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i></li>
				<li>
					교육프로그램</li>
				<li>캡스톤디자인</li>
			</ul>
		</div>
		<div style="clear:both"></div>
		<div id="content" class="content">
			<div class="sub-left">
				<h3><i class="fa fa-tags" aria-hidden="true"></i><br>
					교육프로그램</h3>
				<ul>
					<li><a href="/spb3/gourl.php?k=sub2_1_intro">비교과교육</a></li>
					<li><a href="/spb3/gourl.php?k=sub2_2_intro">창의융합전공</a></li>
					<li><a href="/spb3/gourl.php?k=sub2_3_intro">캡스톤디자인</a></li>
					<li><a href="/spb3/gourl.php?k=sub2_4_intro">프로젝트LAB</a></li>
					<li><a href="/spb3/gourl.php?k=sub2_5_intro">현장실습</a></li>
					<li><a href="/spb3/gourl.php?k=sub2_6_intro">창업교육</a></li>
					<li><a href="/spb3/gourl.php?k=sub2_7_intro">어드벤처디자인</a></li>
				</ul>
			</div>
			<style>
.sub7_tab_menu {
    margin-top: 50px;
    margin-bottom: 20px;
}
.sub7_tab_menu > .sub7_tab {
    display: inline-block;
    border: 1px solid #e1e1e1;
    border-bottom: none;
    width: 16%;
    text-align: center;
    line-height: 40px;
    background: #eee;
}
.check {
    background-color: #fff!important;
    border-top: 3px solid #0075c2!important;
}
</style>

				<div class="sub-right">
					<h3>캡스톤디자인</h3>
					<div class="sub7_tab_menu" style="text-align: center;">
					<a href="/WebProject1/intro.jsp" class="sub7_tab"
						style="display: inline-block;"
					>소개</a> <a href="/WebProject1/notice.jsp?categoryname=공지사항" class="sub7_tab" style="display: inline-block;">공지사항</a>
					<a href="/WebProject1/docu.jsp?categoryname=서식" class="sub7_tab"
						style="display: inline-block;"
					>서식</a> <a href="/WebProject1/performance.jsp?categoryname=성과" class="sub7_tab check" style="display: inline-block;">성과</a>
					<a href="/WebProject1/task.jsp?categoryname=과제 계획서" class="sub7_tab" style="display: inline-block;">과제 계획서</a> <a href="/WebProject1/demand.jsp?categoryname=기업/기관 수요"
						class="sub7_tab" style="display: inline-block;"
					>기업/기관 수요</a>
				</div>
					<div class="board-search">
						<form name="board3search" style="margin: 0;"
							action="/spb3/sboard3/list.php" method="get"
						>
							<input type="hidden" name="db" value="capstoneresult">
							<div class="search-con">
								<select name="sc_column">
									<option value="title">제목</option>
									<option value="content">내용</option>
									<option value="name">작성자</option>
								</select>
							</div>
							<div class="search-input">
								<input type="text" name="sc_string" value=""
									placeholder="검색 내용을 입력해주세요"
								>
								<button id="btn_search" type="submit">
									<i class="fa fa-search"></i> 검색
								</button>
							</div>
						</form>
						<script language="JavaScript" type="text/JavaScript">
							var form_select = document.board3search.sc_column;
							var form_value = '';
							for (var i = 0; i < form_select.length; i++) {
								if (form_select.options[i].value == form_value) {
									form_select.options[i].selected = true;
								}
							}
						</script>
												<div class="page-info">

							<!-- 읽어온 게시물 수를 출력 -->
							<c:set var="today" value="<%=new java.util.Date() %>" />
							<fmt:formatDate var="now" type="date" value="${today}" pattern="yyyy-MM-dd" />
							
							<!-- 전달받은 카테고리 파라미터 저장 -->
							<c:set var="category" value="${param.categoryname}"/>
							
							<span>오늘 : <strong>
							<% int nowcount = 0; %>
								<c:forEach var="row" items="${rs.rows}">
									<c:if test="${row.category == category &&  row.register_date >= now }">
										<% nowcount += 1; %>
									</c:if>
								</c:forEach>
							<% out.print(nowcount); %>
							</strong> 건 </span>
							<span>총 : <strong>
							<% int totalcount = 0; %>
								<c:forEach var="row" items="${rs.rows}">
									<c:if test="${row.category == category}">
										<% totalcount += 1; %>
									</c:if>
								</c:forEach>
							<% out.print(totalcount); %>
							</strong> 건 </span>
						</div>
					</div>
					<div class="board-glist">
						<div class="board-list-wrap">
							<ul class="clfix">


								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=171"
								><div>
											<img
												src="/spb3/sboard3/download.php?uid=171&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=171">'목포문학관'
											관광거점도시 성공을 위한 일본어 팸플릿 재검토</a>
									</p>
									<p class="date">21-03-22 14:08:32</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=170"
								><div>
											<img
												src="/spb3/sboard3/download(1).php?uid=170&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=170">너의
											폐기를 보여줘</a>
									</p>
									<p class="date">21-03-22 14:07:33</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=169"
								><div>
											<img
												src="/spb3/sboard3/download(2).php?uid=169&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=169">스마트
											음주운전 예방 시스템 개발</a>
									</p>
									<p class="date">21-03-22 14:06:55</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=168"
								><div>
											<img
												src="/spb3/sboard3/download(3).php?uid=168&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=168">소프트웨어
											개발 도구와 DevOps를 활용한 통합 모니터링 시스템의 모바일 환경 구축</a>
									</p>
									<p class="date">21-03-22 14:06:18</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=167"
								><div>
											<img
												src="/spb3/sboard3/download(4).php?uid=167&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=167">유아
											대상 환경교육을 위한 그린북 제작</a>
									</p>
									<p class="date">21-03-22 14:05:28</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=166"
								><div>
											<img
												src="/spb3/sboard3/download(5).php?uid=166&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=166">스마트캠퍼스
											구출 : IoT사물함</a>
									</p>
									<p class="date">21-03-22 14:04:59</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=165"
								><div>
											<img
												src="/spb3/sboard3/download(6).php?uid=165&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=165">미디어커머스
											- 캡스톤 디자인</a>
									</p>
									<p class="date">21-03-22 14:04:18</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=163"
								><div>
											<img
												src="/spb3/sboard3/download(7).php?uid=163&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=163">PPT를
											활용한 자동차 절세 방법 설명</a>
									</p>
									<p class="date">21-03-22 14:03:02</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=162"
								><div>
											<img
												src="/spb3/sboard3/download(8).php?uid=162&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=162">첨단
											화학분석 기자재를 활용한 유무기소재 및 바이오 천연물 분석 기술 개발</a>
									</p>
									<p class="date">21-03-22 14:02:22</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=161"
								><div>
											<img
												src="/spb3/sboard3/download(9).php?uid=161&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=161">문화콘텐츠
											기획안</a>
									</p>
									<p class="date">21-03-22 14:01:03</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=160"
								><div>
											<img
												src="/spb3/sboard3/download(10).php?uid=160&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=160">브레이크
											바퀴</a>
									</p>
									<p class="date">21-03-22 13:59:49</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=159"
								><div>
											<img
												src="/spb3/sboard3/download(11).php?uid=159&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=159">마스크
											유무를 통한 출입통제 시스템</a>
									</p>
									<p class="date">21-03-22 13:59:18</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=158"
								><div>
											<img
												src="/spb3/sboard3/download(12).php?uid=158&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=158">보안
											교육용 게임 개발</a>
									</p>
									<p class="date">21-03-22 13:58:33</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=157"
								><div>
											<img
												src="/spb3/sboard3/download(13).php?uid=157&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=157">OCR을
											활용한 이미지 검색</a>
									</p>
									<p class="date">21-03-22 13:58:01</p></li>



								<li><a
									href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=156"
								><div>
											<img
												src="/spb3/sboard3/download(14).php?uid=156&amp;db=capstoneresult&amp;mode=download&amp;upfile=f1"
												alt="파일" style="align-self: start;"
											>
										</div></a>
									<p class="subject">
										<a href="/spb3/sboard3/read.php?db=capstoneresult&amp;uid=156">접근제어
											분실방지 이어폰 &amp; 어플리케이션</a>
									</p>
									<p class="date">21-03-22 13:57:26</p></li>





							</ul>


						</div>
						<div class="board-btn">
							<a
								href="/spb3/sboard3/write.php?db=capstoneresult&amp;mode=write"
							>
								<button id="write">
									<i class="fa fa-pencil" aria-hidden="true"></i>글쓰기
								</button>
							</a>
							<div class="page">
								<div class="pagePrev">
									<span class="pageDoubleLeft"><span
										style="font-size: 11px; color: #999999;"
									><i class="fa fa-angle-double-left"></i></span></span> <span
										class="pageLeft"
									><span style="font-size: 11px; color: #999999;"><i
											class="fa fa-angle-left"
										></i></span></span>
								</div>
								<ul>

									<li class="on"><a href="">1</a></li>

									<li><a
										href="/spb3/sboard3/list.php?db=capstoneresult&amp;page=2"
									> 2 </a></li>

									<li><a
										href="/spb3/sboard3/list.php?db=capstoneresult&amp;page=3"
									> 3 </a></li>

									<li><a
										href="/spb3/sboard3/list.php?db=capstoneresult&amp;page=4"
									> 4 </a></li>

									<li><a
										href="/spb3/sboard3/list.php?db=capstoneresult&amp;page=5"
									> 5 </a></li>

								</ul>
								<div class="pageNext">
									<span class="pageRight"><a
										href="/spb3/sboard3/list.php?db=capstoneresult&amp;page=6"
									><span style="font-size: 11px;"><i
												class="fa fa-angle-right"
											></i></span></a></span> <span class="pageDoubleRight"><a
										href="/spb3/sboard3/list.php?db=capstoneresult&amp;page=8"
									><span style="font-size: 11px;"><i
												class="fa fa-angle-double-right"
											></i></span></a></span>
								</div>
							</div>
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
						<a href="#none" class="btn-go"><img src="/images/btn_go.png"
							alt=""
						></a>
					</div>
				</div>
			</div>
			<address>
				<div class="wrapper">
					<div class="foo-bottom">
						<h2>
							<a href="#none"><img src="/images/foo_logo.png" alt=""
								class="web-img"
							><img src="/images/foo_logo_mobile.png" alt=""
								class="mobile-img" width="66"
							></a>
						</h2>
						<div class="copy">
							<p>58554 전남 무안군 청계면 영산로 1666 산학협력 선도대학(LINC+) 육성사업단</p>
							<p>
								TEL : 061) 450-6407 / FAX : 0303) 0949-6149
								<!-- / 사업자등록번호 : 411-82-08251-->
							</p>
							<p>Copyright (c) lincplus.mokpo.ac.kr All rights reserved.</p>
						</div>
						<ul class="sns clfix">
							<li><a href="#none" target="_blank"><img
									src="/images/icon_sns01.png" alt=""
								></a></li>
							<li><a href="#none" target="_blank"><img
									src="/images/icon_sns02.png" alt=""
								></a></li>
							<li><a href="#none" target="_blank"><img
									src="/images/icon_sns03.png" alt=""
								></a></li>
							<li><a href="#none" target="_blank"><img
									src="/images/icon_sns04.png" alt=""
								></a></li>
						</ul>
					</div>
				</div>
			</address>
		</footer>
	</div>

</body>
</html>