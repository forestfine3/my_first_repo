<%@ page contentType="text/html;charset=utf-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String uid = (String)session.getAttribute("uid");
%>

<c:set var="uid" value="<%=uid%>"/>

<!DOCTYPE html>
<html>
<head>

<title>목포대학교 링크플러스사업단</title>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/notosanskr.css">
<link rel="stylesheet" type="text/css" href="/WebProject1/css/reset.css">
<link rel="stylesheet" type="text/css" href="/WebProject1/css/common.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.1.0/css/swiper.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/WebProject1/css/style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&amp;display=swap">
<script	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.1.0/js/swiper.js"></script>
<script src="/WebProject1/js/jquery.min.js"></script>
<script src="/WebProject1/js/script.js"></script>

</head>

    <body class="">
        <div id="wrap" class="main">
            <header id="header" class="header">
            <div class="header-top">
                    <div class="wrapper">
                        <div class="user">
                            <ul class="clfix">
                                <c:if test="${ uid == null }">
									<li><a href="/WebProject1/login.jsp"><i class="i-login"></i>로그인</a></li>
								</c:if>
								<c:if test="${ uid != null }">
									<li><a href="/WebProject1/logout.jsp"><i class="i-login"></i>로그아웃</a></li>
                                	<li><a href="">회원정보</a></li>
								</c:if>
                            </ul>
                        </div>
                    </div>
            </div>
            </header> <div id="container" class="container" style="margin-top: 0px;">
		<div class="page-nav">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i></li>
				<li>교육프로그램</li>
				<li>캡스톤디자인</li>
			</ul>
		</div>
		<div style="clear:both"></div>
		<div id="content" class="content">
			<div class="sub-left">
				<h3><i class="fa fa-tags" aria-hidden="true"></i><br>
					교육프로그램</h3>
				<ul>
					<li><a href="">비교과교육</a></li>
					<li><a href="">창의융합전공</a></li>
					<li><a href="">캡스톤디자인</a></li>
					<li><a href="">프로젝트LAB</a></li>
					<li><a href="">현장실습</a></li>
					<li><a href="">창업교육</a></li>
					<li><a href="">어드벤처디자인</a></li>
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
					<a href="/WebProject1/intro.jsp" class="sub7_tab check" style="display: inline-block;">소개</a>
					<a href="/WebProject1/list.jsp?categoryname=notice" class="sub7_tab" style="display: inline-block;">공지사항</a>
					<a href="/WebProject1/list.jsp?categoryname=docu" class="sub7_tab" style="display: inline-block;">서식</a>
					<a href="/WebProject1/list.jsp?categoryname=performance" class="sub7_tab" style="display: inline-block;">성과</a>
					<a href="/WebProject1/list.jsp?categoryname=task" class="sub7_tab" style="display: inline-block;">과제 계획서</a>
					<a href="/WebProject1/list.jsp?categoryname=demand" class="sub7_tab" style="display: inline-block;">기업/기관 수요</a>
				</div>
				<div class="sub_onlinejoin_button">
					<a>캡스톤디자인 신청</a> <a style="width: 170px">캡스톤디자인 신청현황</a>
				</div>
				<div class="sub-right-content">
					<style>
.sub-sec-list-a {
	float: right;
}

.sub-div-border {
	padding-bottom: 12.5px;
	padding-top: 12.5px;
	height: 168px;
	border-bottom: dotted #E1E1E1;
}

.sub-stsub {
	margin-top: 0px;
}

.sub-right-title {
	color: #009893;
	font-size: 22px;
	font-weight: 600;
	margin-bottom: 15px;
	margin-top: 30px;
	display: flex;
}
</style>
					<div class="sub-right-title">
						<img class="headermarker"
							src="${pageContext.request.contextPath}/images/headermarker.png"
							alt="headermarker"
						> 캡스톤디자인
					</div>
					<div class="sub-sec-title">
						<div class="img-sub-marker">
							<img
								src="${pageContext.request.contextPath}/images/headermarker_sub.png"
							>
						</div>
						기업/기관의 어려움을 창의적으로 해결해 드립니다.
					</div>
					<div class="sub-div-st intro">
						<table class="sub-inner-div-st capstone table intro"
							cellpadding="0" cellspacing="0" style="width: 60%;"
						>
							<colgroup>
								<col width="4%">
								<col width="96%">
							</colgroup>
							<tr class="sub-sec-list">
								<td>
									<div class="square"></div>
								</td>
								<td>기업/기관의 요구사항을 반영하여 교수와 학생들의 기획-설계-제작을 통해창의적인 해결책을 도출하는
									교과과정</td>
							</tr>
							<tr class="sub-sec-list">
								<td>
									<div class="square"></div>
								</td>
								<td>학기 중 상시 운영</td>
							</tr>
							<tr class="sub-sec-list">
								<td>
									<div class="square"></div>
								</td>
								<td>기업/기관 혜택 : 기업/기관에 필요한 창의적 해결책, 전문가 자문비 지원 등</td>
							</tr>
						</table>
						<div class="sub-inner-div-st capstone img intro"
							style="width: 40%"
						>
							<img
								src="${pageContext.request.contextPath}/images/sub2_3_picture1.jpg"
								alt="picture1"
							>
						</div>
					</div>
					<div class="sub-sec-title">
						<div class="img-sub-marker">
							<img
								src="${pageContext.request.contextPath}/images/headermarker_sub.png"
							>
						</div>
						지원대상
					</div>
					<ul class="sub-sec-list">
						<li>LINC+ 참여학과 3~4학년</li>
					</ul>
					<div class="sub-sec-title">
						<div class="img-sub-marker">
							<img
								src="${pageContext.request.contextPath}/images/headermarker_sub.png"
							>
						</div>
						지원자격
					</div>
					<ul class="sub-sec-list">
						<li>학과에서 개설한 교과목 중 종합설계 또는 Capstone Design으로 표기된 교과목을 수강하는
							학부생 3인 이상으로 구성된 팀</li>
					</ul>
					<div class="sub-sec-title">
						<div class="img-sub-marker">
							<img
								src="${pageContext.request.contextPath}/images/headermarker_sub.png"
							>
						</div>
						지원내용
					</div>
					<ul class="sub-sec-list">
						<li>과제 수행에 필요한 경비(회의비, 재료비, 시제품제작비 등)</li>
						<li>특허 출원&middot;등록 비용(지원금 외 별도 지원)</li>
					</ul>
					<div class="sub-sec-title">
						<div class="img-sub-marker">
							<img
								src="${pageContext.request.contextPath}/images/headermarker_sub.png"
							>
						</div>
						지원절차
					</div>
					<div class="sub-inner-div-st capstone img">
						<img
							src="${pageContext.request.contextPath}/images/support_process.jpg"
							alt="process"
						>
					</div>
					<div class="sub-sec-title" style="margin-bottom: 0;">
						<div class="img-sub-marker">
							<img
								src="${pageContext.request.contextPath}/images/headermarker_sub.png"
							>
						</div>
						유형
					</div>
					<div class="sub-div-st linner">
						<div class="sub-inner-div-st capstone img" style="width: 30%">
							<img
								src="${pageContext.request.contextPath}/images/sub2_3_picture2.png"
								alt="picture2"
							>
						</div>
						<table class="sub-inner-div-st capstone table" cellpadding="0"
							cellspacing="0" style="width: 70%"
						>
							<colgroup>
								<col width="4%">
								<col width="96%">
							</colgroup>
							<tr class="sub-sec-list">
								<td>
									<div class="img-sub-marker">
										<img
											src="${pageContext.request.contextPath}/images/headermarker_sub.png"
										>
									</div>
								</td>
								<td class="table-sub-title">기업/지역사회연계형 캡스톤디자인</td>
							</tr>
							<tr class="sub-sec-list">
								<td></td>
								<td>기업/지역사회에서 제안한 주제에 대한 작품제작을 추진하고 기업/지역사회 전문가와 함께 작품을
									지도하는 캡스톤 디자인</td>
							</tr>
						</table>
					</div>
					<div class="sub-div-st linner">
						<div class="sub-inner-div-st capstone img" style="width: 30%">
							<img
								src="${pageContext.request.contextPath}/images/sub2_3_picture3.png"
								alt="picture3"
							>
						</div>

						<table class="sub-inner-div-st capstone table" cellpadding="0"
							cellspacing="0" style="width: 70%"
						>
							<colgroup>
								<col width="4%">
								<col width="96%">
							</colgroup>
							<tr class="sub-sec-list">
								<td>
									<div class="img-sub-marker">
										<img
											src="${pageContext.request.contextPath}/images/headermarker_sub.png"
										>
									</div>
								</td>
								<td class="table-sub-title">성과집중형 캡스톤디자인</td>
							</tr>
							<tr class="sub-sec-list">
								<td></td>
								<td>
									직접적 성과 창출이 가능한 주제를 선정하여 특허, 기술이전, 창업 등 성과를 도출하는 성과집중형 캡스톤디자인<br>
									<strong>특허출원, 기술이전, 시제품 등 성과 필수</strong>
								</td>
							</tr>
						</table>
					</div>
					<div class="sub-div-st linner">
						<div class="sub-inner-div-st capstone img" style="width: 30%">
							<img
								src="${pageContext.request.contextPath}/images/sub2_3_picture4.png"
								alt="picture4"
							>
						</div>
						<table class="sub-inner-div-st capstone table" cellpadding="0"
							cellspacing="0" style="width: 70%"
						>
							<colgroup>
								<col width="4%">
								<col width="96%">
							</colgroup>
							<tr class="sub-sec-list">
								<td>
									<div class="img-sub-marker">
										<img
											src="${pageContext.request.contextPath}/images/headermarker_sub.png"
										>
									</div>
								</td>
								<td class="table-sub-title">창의적아이디어형 캡스톤디자인</td>
							</tr>
							<tr class="sub-sec-list">
								<td></td>
								<td>창의적인 아이디어나 창업 아이템을 도출하는 캡스톤디자인</td>
							</tr>
						</table>
					</div>
					<div class="sub-div-st">
						<div class="sub-inner-div-st capstone img" style="width: 30%">
							<img
								src="${pageContext.request.contextPath}/images/sub2_3_picture5.png"
								alt="picture5"
							>
						</div>
						<table class="sub-inner-div-st capstone table" cellpadding="0"
							cellspacing="0" style="width: 70%"
						>
							<colgroup>
								<col width="4%">
								<col width="96%">
							</colgroup>
							<tr class="sub-sec-list">
								<td>
									<div class="img-sub-marker">
										<img
											src="${pageContext.request.contextPath}/images/headermarker_sub.png"
										>
									</div>
								</td>
								<td class="table-sub-title">미래연계형 캡스톤디자인</td>
							</tr>
							<tr class="sub-sec-list">
								<td></td>
								<td>기존 캡스톤디자인 결과를 업그레이드하여 진행하는 캡스톤디자인</td>
							</tr>
						</table>
					</div>

				</div>
</body>
</html>