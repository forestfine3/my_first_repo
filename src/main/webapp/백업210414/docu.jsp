<%@ page contentType="text/html;charset=utf-8"%>
<!-- DB연동 코드 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<sql:query var="rs" dataSource="jdbc/mydb">
select postid, title, username, date, view, attach from post
</sql:query>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no"
>
<meta name="naver-site-verification"
	content="b73626fce2c5f926a58ba6b8a38fcd2f11857775"
/>
<title>목포대학교 링크플러스사업단</title>
<meta name="keywords"
	content="linc,lincplus,linc+,목포대,목포대학교,목포대링크플러스,목포대학교링크플러스,비교과교육,창의융합전공,캡스톤디자인,프로젝트LAB,현장실습,창업교육,ICC,가족회사,기술지도,미니클러스터,산학공동기술개발,재직자교육,공용장비센터,지역협력프로젝트,지역혁신선도과제,RCC"
/>
<meta name="description"
	content="linc,lincplus,linc+,목포대,목포대학교,목포대링크플러스,목포대학교링크플러스,비교과교육,창의융합전공,캡스톤디자인,프로젝트LAB,현장실습,창업교육,ICC,가족회사,기술지도,미니클러스터,산학공동기술개발,재직자교육,공용장비센터,지역협력프로젝트,지역혁신선도과제,RCC"
/>

<!-- css파일 적용 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/notosanskr.css"
>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/swiper.min.css"
>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css"
>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/nanumgothic.css"
>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/reset.css"
/>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css"
/>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css"
/>
<script src="${pageContext.request.contextPath}/js/swiper.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
</head>
<body>
	<div id="container" class="container">

		<div id="content" class="content">
			<div class="sub-left">
				<h3>교육프로그램</h3>
				<ul>
					<li>비교과교육</li>
					<li>창의융합전공</li>
					<li><a href="/WebProject1/intro.jsp">캡스톤디자인</a></li>
					<li>프로젝트LAB</li>
					<li>현장실습</li>
					<li>창업교육</li>
					<li>어드벤처디자인</li>
				</ul>
			</div>

			<style>
.sub7_tab_menu {
	margin-top: 50px;
	margin-bottom: 20px;
}

.sub7_tab_menu>.sub7_tab {
	display: inline-block;
	border: 1px solid #e1e1e1;
	border-bottom: none;
	width: 16%;
	text-align: center;
	line-height: 40px;
	background: #eee;
}

.check {
	background-color: #fff !important;
	border-top: 3px solid #0075c2 !important;
}

@media ( max-width :1104px) {
	.sub7_tab_menu>.sub7_tab {
		width: 32.1%;
	}
}
</style>

			<div class="sub-right">
				<h3 style="margin-bottom: 0;">캡스톤디자인</h3>
				<div class="sub7_tab_menu" style="text-align: center;">
					<a href="/WebProject1/intro.jsp" class="sub7_tab"
						style="display: inline-block;"
					>소개</a> <a class="sub7_tab" style="display: inline-block;">공지사항</a> <a
						href="/WebProject1/docu.jsp" class="sub7_tab check"
						style="display: inline-block;"
					>서식</a> <a class="sub7_tab" style="display: inline-block;">성과</a> <a
						class="sub7_tab" style="display: inline-block;"
					>과제 계획서</a> <a class="sub7_tab" style="display: inline-block;">기업/기관
						수요</a>
				</div>
				<div class="board-search">
					<form name="search" style="margin: 0;"get">
						<div class="search-con">
							<select name="option">
								<option value="title">제목</option>
								<option value="content">내용</option>
								<option value="manager">담당자</option>
							</select>
						</div>
						<div class="search-input">
							<input type="text" name="word" placeholder="검색 내용을 입력해주세요"
								pattern="{2,}" required
							>
							<button id="btn_search" input type="submit" value="검색">검색</button>
						</div>
					</form>
					<div class="page-info">
						<!-- 수정) 읽어온 게시물 수를 출력해야 함 -->
						<span>오늘 : <strong>0</strong> 건
						</span> <span>총 : <strong>0</strong> 건
						</span>
					</div>
				</div>
				<div class="board-cate">
					카테고리 :
					<select name="category">
						<option value="c1">공지사항</option>
						<option value="c2">비교과교육</option>
						<option value="c3">창의융합전공</option>
						<option value="c4">캡스톤디자인</option>
						<option value="c5">프로젝트LAB</option>
						<option value="c6">현장실습</option>
						<option value="c7">창업교육</option>
						<option value="c8">어드벤처디자인</option>
						<option value="c9">가족회사</option>
						<option value="c10">기술지도</option>
						<option value="c11">산학공동기술개발과제</option>
						<option value="c12">지역협력프로젝트</option>
						<option value="c13">지역혁신선도과제</option>
						<option value="c14">전문가Pool</option>
						<option value="c15">리빙랩</option>
					</select>
				</div>

				<div class="responsive-table clfix">
					<ul class="normal">
						<li class="table-head">
							<div class="th th-cell01">NO</div>
							<div class="th th-cell01">분류</div>
							<div class="th th-cell02">제목</div>
							<div class="th th-cell03">담당자</div>
							<div class="th th-cell04">등록일</div>
							<div class="th th-cell05">조회수</div>
							<div class="th th-cell06">첨부</div>
						</li>
						<c:forEach var="row" items="${rs.rows}">
							<li class="table-body-row">
								<div class="td td-cell01">${row.postid}</div>
								<div class="td td-cell01">${row.category}</div>
								<div class="td td-cell02">${row.title}</div>
								<div class="td td-cell03">${row.username}</div>
								<div class="td td-cell04">${row.date}</div>
								<div class="td td-cell05">${row.view}</div>
								<div class="td td-cell06">${row.attach}</div>
							</li>
						</c:forEach>

					</ul>

				</div>
</body>
</html>