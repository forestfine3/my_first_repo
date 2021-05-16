<%@ page contentType="text/html;charset=utf-8" import="java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String uid = (String)session.getAttribute("uid");
%>

<c:set var="uid" value="<%=uid%>"/>

<sql:query var="login" dataSource="jdbc/mydb">
select uname
from login
where uid = ?
<sql:param value="${uid}"/>
</sql:query>

<c:forEach var="row" items="${login.rows}">
<c:set var="uname" value="${row.uname}"/>
</c:forEach>



<!DOCTYPE html>
<html>

<c:set var="postno" value="${param.postno}"/>
<c:set var="categoryname" value="${param.categoryname}"/>
<c:set var="page" value="${param.page}"/>
<c:if test="${page == null }">
  <c:set var="page" value="1"/>
</c:if>

<%-- 현재 게시물 정보 DB에서 불러오기 --%>
<sql:query var="list" dataSource="jdbc/mydb">
select no, title, writer, register_date, hits, attach
from test.post
where no=?
<sql:param value="${postno}"/>
</sql:query>

<%-- 불러온 테이블에서 각 데이터를 변수에 저장 --%>
<c:forEach var="row" items="${list.rows}">
<c:set var="title" value="${row.title}"/>
<c:set var="writer" value="${row.writer}"/>
<c:set var="wdate" value="${row.register_date}"/>
<c:set var="hits" value="${row.hits}"/>
<c:set var="attach" value="${row.attach}"/>
</c:forEach>

<%-- 게시물 내용 DB에서 게시물 내용 불러오기 --%>
<sql:query var="post" dataSource="jdbc/mydb">
select no, text
from test.posttext
where no=?
<sql:param value="${postno}"/>
</sql:query>

<%-- 불러온 게시물 내용을 변수에 저장 --%>
<c:forEach var="row" items="${post.rows}">
<c:set var="text" value="${row.text}"/>
</c:forEach>




<head>
<title>목포대학교 링크플러스사업단</title>
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"
>
<link rel="stylesheet" type="text/css"
	href="/WebProject1/css/reset.css"
>
<link rel="stylesheet" type="text/css"
	href="/WebProject1/css/common.css"
>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.1.0/css/swiper.min.css"
>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
>
<link rel="stylesheet" type="text/css"
	href="/WebProject1/css/style.css"
>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&amp;display=swap"
	rel="stylesheet"
>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.1.0/js/swiper.js"
></script>
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
				
<%-- 현재 카테고리의 모든 게시물 번호, 제목 테이블 불러오기 --%>
<sql:query var="rs" dataSource="jdbc/mydb">
select no, title, @rownum := @rownum + 1 as rownum
from test.post, (SELECT @rownum:=0) as r
where category=?
order by rownum desc;
<sql:param value="${catename}"/>
</sql:query>

<%-- 현재 게시물의 위치 계산 --%>
<c:forEach var="row" items="${rs.rows}">
<c:if test="${postno == row.no}">
<c:set var="current_rownum" value="${row.rownum}"/>
</c:if>
</c:forEach>

<%-- 이전 게시물, 다음 게시물의 글번호, 제목 저장 --%>
<c:forEach var="row" items="${rs.rows}">
<c:if test="${row.rownum == current_rownum+1}">
<c:set var="pre_postno" value="${row.no}"/>
<c:set var="pre_title" value="${row.title}"/>
</c:if>
</c:forEach>
<c:forEach var="row" items="${rs.rows}">
<c:if test="${row.rownum == current_rownum-1}">
<c:set var="next_postno" value="${row.no}"/>
<c:set var="next_title" value="${row.title}"/>
</c:if>
</c:forEach>			
        
        
<div class="board-view">
		<div class="viewBoard">
			<div class="viewSubject">${title} </div>
			<div class="viewInfo"> <span>작성자: ${writer}</span> <span>작성일: ${wdate}</span> <span>조회수: ${hits}</span></div>
			<div class="viewContent"> 
				<div class="viewContent-body cke_editable ">
					${text}			
					<br>
					<br>

				</div>
				<hr class="hr1"> - 첨부파일: ${attach}<br><hr class="hr2">
				
				<div class="viewList">
				    <c:if test="${pre_postno == null}">
				    <div class="viewPrev"><span><i class="fa fa-angle-up" aria-hidden="true"></i> 이전글</span>
						이전 게시물이 없습니다.
					</div>
				    </c:if>
				    <c:if test="${pre_postno != null}">
					<div class="viewPrev"><span><i class="fa fa-angle-up" aria-hidden="true"></i> <a href="/WebProject1/read.jsp?postno=${pre_postno}&categoryname=${categoryname}&page=${page}">이전글</a></span>
					    <a href="/WebProject1/read.jsp?postno=${pre_postno}&categoryname=${categoryname}&page=${page}">${pre_title}</a>
					</div>
					</c:if>
					<c:if test="${next_postno == null}">
					<div class="viewNext"><span><i class="fa fa-angle-down" aria-hidden="true"></i> 다음글</span>
						다음 게시물이 없습니다.
					</div>
					</c:if>
					<c:if test="${next_postno != null}">
					<div class="viewNext"><span><i class="fa fa-angle-down" aria-hidden="true"></i> <a href="/WebProject1/read.jsp?postno=${next_postno}&categoryname=${categoryname}&page=${page}">다음글</a></span>
						<a href="/WebProject1/read.jsp?postno=${next_postno}&categoryname=${categoryname}&page=${page}">${next_title}</a>	
					</div>
					</c:if>
				</div>
			</div>
			<div class="viewWrite"> <span class="viewListBtn"> <a href="/WebProject1/list.jsp?&categoryname=${categoryname}&page=${page}"><i class="fa fa-list" aria-hidden="true"></i> 목록</a> </span> <span class="viewBtn"> <a href="/spb3/sboard3/reply.php?db=demand&amp;uid=32&amp;mode=reply"><i class="fa fa-pencil" aria-hidden="true"></i> 답변</a> <!--<a href="/spb3/sboard3/write.php?db=demand&uid=32&mode=write"><i class="fa fa-pencil" aria-hidden="true"></i> 글쓰기</a>--> <a href="/spb3/sboard3/modify.php?db=demand&amp;uid=32&amp;mode=modify&amp;num=14"><i class="fa fa-cog" aria-hidden="true"></i> 수정하기</a> <a href="/spb3/sboard3/ok.php?db=demand&amp;uid=32&amp;mode=delete" onclick="javascript: return confirm('정말 삭제하시겠습니까?');"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제하기</a>  </span> </div></div>
		</div>
	</div>
</div>
       
</body>
</html>