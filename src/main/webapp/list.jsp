<%@ page contentType="text/html;charset=utf-8" import="java.util.*" %>

<%-- fmt태그 사용 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- DB 연동--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&amp;display=swap" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.1.0/js/swiper.js"></script>
<script src="/WebProject1/js/jquery.min.js"></script>
<script src="/WebProject1/js/script.js"></script>
</head>

<body class="">
        <div id="wrap" class="main">
            <header id="header" class="header">      
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
            </header>
     <div id="container" class="container" style="margin-top: 0px;">
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
					<a href="/WebProject1/intro.jsp" class="sub7_tab" style="display: inline-block;">소개</a>
					<%
					// 카테고리를 순서대로 출력하기 위해 LinkedHashMap 타입으로 데이터 저장
					LinkedHashMap map = new LinkedHashMap();
					map.put("notice", "공지사항");
					map.put("docu", "서식");
					map.put("performance", "성과");
					map.put("task", "과제 계획서");
					map.put("demand", "기업/기관 수요");
					%>
					<c:set var="cateMap" value="<%=map %>"/>
					<c:set var="category" value="${param.categoryname}"/>
					<c:set var="catename" value="${cateMap[category]}"/>
			
					<!-- 카테고리 버튼 순서대로 출력 -->
					<c:forEach var="i" items="${cateMap}">
					<c:choose>
					<c:when test="${category == i.key}">
					<a href="/WebProject1/list.jsp?categoryname=${i.key}" class="sub7_tab check" style="display: inline-block;">${i.value}</a>
					</c:when>
					<c:otherwise>
					<a href="/WebProject1/list.jsp?categoryname=${i.key}" class="sub7_tab" style="display: inline-block;">${i.value}</a>
					</c:otherwise>
					</c:choose>
					</c:forEach>		
				</div>
					
<!-- rownum는 넘버링 용도로 사용됨 -->
<sql:query var="rs" dataSource="jdbc/mydb">
select no, title, writer, register_date, hits, category, attach, @rownum := @rownum + 1 as rownum
from post, (SELECT @rownum:=0) as r
where category=?
order by rownum desc
<sql:param value="${catename}"/>
</sql:query>
				
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

<!-- 읽어온 게시물 수를 출력 -->
<!-- 오늘날짜 출력 쿼리 -->
<c:set var="today" value="<%=new java.util.Date() %>" />
<fmt:formatDate var="now" type="date" value="${today}" pattern="yyyy-MM-dd" />
<sql:query var="todaycnt" dataSource="jdbc/mydb">
select count(*) as cnt
from post where category=? and register_date=?
<sql:param value="${catename}"/>
<sql:param value="${now}"/>
</sql:query>
							<span>오늘 :
							<strong>
							<c:forEach var="row" items="${todaycnt.rows}">${row.cnt}</c:forEach>
							</strong>건</span>

<!-- 총 게시물 수 출력 쿼리 -->
<sql:query var="totalcnt" dataSource="jdbc/mydb">
select count(*) as cnt
from post where category=?
<sql:param value="${catename}"/>
</sql:query>
							<span>총 :
							<strong>
							<c:forEach var="row" items="${totalcnt.rows}">${row.cnt}</c:forEach>
							</strong>건</span>
						</div>
					</div>
					<c:choose>
					<c:when test="${category == 'performance'}">
					<div class="board-glist">
  					  <div class="board-list-wrap">
    					  <ul class="clfix">
    					  <c:forEach var="row" items="${rs.rows}">
								<c:if test="${row.category == '공지사항'}">
									<li>
								<a href="/spb3/sboard3/read.php?db=capstoneresult&uid=171">
								<div>
								<img src="/spb3/sboard3/download.php?uid=171&db=capstoneresult&mode=download&upfile=f1" alt="파일">
								</div></a>
      							  <p class="subject"><a href="/spb3/sboard3/read.php?db=capstoneresult&uid=171">${row.title}</a></p>
    						    <p class="date">${row.register_date}</p>
							  </li>
								</c:if>
							</c:forEach>
    					  </ul>      
  					  </div>
  					</div>		
					</c:when>
					<c:otherwise>
					<div class="responsive-table clfix">
						<ul class="normal">
							<li class="table-head">
								<div class="th th-cell01">NO</div>
								<c:if test="${category == 'docu'}">
								<div class="th th-cell01">분류</div>
								</c:if>
								<div class="th th-cell02">제목</div>
								<c:choose>
								<c:when test="${category == 'docu'}">
								<div class="th th-cell03">담당자</div>
								</c:when>
								<c:otherwise>
								<div class="th th-cell03">작성자</div>
								</c:otherwise>
								</c:choose>								
								<div class="th th-cell04">등록일</div>
								<c:if test="${category == 'docu' or category == 'notice'}">
								<div class="th th-cell05">조회수</div>
								</c:if>
								<div class="th th-cell06">첨부</div>
							</li>
							
							<c:forEach var="row" items="${rs.rows}">
								<c:if test="${row.category == catename}">
									<li class="table-body-row">
										<div class="td td-cell01">${row.rownum}</div>
										<c:if test="${category == 'docu'}">
										<div class="td td-cell01">${row.category}</div>
										</c:if>
										<div class="td td-cell02" style="text-align: left">
										<a href="/WebProject1/read.jsp?postno=${row.no}">${row.title}</a></div>
										<div class="td td-cell03">${row.writer}</div>
										<div class="td td-cell04">${row.register_date}</div>
										<c:if test="${category == 'docu' or category == 'notice'}">
										<div class="td td-cell05">${row.hits}</div>
										</c:if>
										<div class="td td-cell06">
											<c:if test="${row.attach != NULL}">
												<%-- 첨부파일이 있으면 파일 아이콘 출력 --%>
												<img src="/WebProject1/images/icon_file.png">
											</c:if>
										</div>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					</c:otherwise>
					</c:choose>
        </div>
</body>