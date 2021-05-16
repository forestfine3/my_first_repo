<%@ page contentType="text/html;charset=utf-8" import="java.util.*" %>

<%-- fmt태그 사용 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- DB 연동--%>
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
					<li><a href=""">비교과교육</a></li>
					<li><a href=""">창의융합전공</a></li>
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
					<h3>글쓰기</h3>
					<div class="sub7_tab_menu" style="text-align: center;">
				
					
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
					
					
				</div>

<div class="write-board">
<form name="boardwrite" style="margin:0;" method="post" action="crt.jsp" >
<br>
&nbsp;&nbsp;&nbsp;카테고리:&nbsp;
<select name="option">
	<option value="공지사항">  공지사항  </option>
	<option value="서식">  서식  </option>
	<option value="성과">  성과  </option>
	<option value="과제 계획서">  과제 계획서  </option>
	<option value="기업/기관 수요">  기업/기관 수요  </option>
</select>
<div class="wrName" style="width:100%; float:laft;">	
<input type='text' name='title' placeholder="제목을 입력하세요">
</div>

<div class="wrContent">
<input type='textarea' name="content" style=" width:700px; height:200px; " >	
</div>

<div class="wrName">
<input type='text' name='attach' placeholder="첨부파일">		
</div>

</div>

<%-- 작성될 글 번호 전송 --%>
<sql:query var="rs" dataSource="jdbc/mydb">
select max(no) as maxno
from post
</sql:query>
<c:forEach var="row" items="${rs.rows}">
<c:set var="max_no" value="${row.maxno}"/>
</c:forEach> 
<input type='hidden' name='max_no' value="${max_no+1}">

<%-- 현재 날짜 전송 --%>
<c:set var="today" value="<%=new java.util.Date() %>" />
<fmt:formatDate var="now" type="date" value="${today}" pattern="yyyy-MM-dd" />
<input type='hidden' name='register_date' value="${now}">

<input type='hidden' name='hits' value="0">
<input type='hidden' name='categoryname' value="${param.categoryname}">
<input type='hidden' name='page' value="${param.page}">
<input type='hidden' name='writer' value="${uname}">

<div class="boardWriteBtn"> 
<a href="crt.jsp?categoryname=${param.categoryname}">
<button id="write" type="submit" >
<i class="fa fa-pencil" aria-hidden="true">
</i> 글쓰기</button>
</a>
<a href="list.jsp?categoryname=${param.categoryname}&page=${param.page}">
<button id="cancel" type="button" >
<i class="fa fa-list" aria-hidden="true">
</i>목록으로</button>
</a> 
</div>

</form>


</body>
</html>