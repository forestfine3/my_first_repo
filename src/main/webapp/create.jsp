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
            </header> <div id="container" class="container" style="margin-top: 0px;">
            <!-- 
            <div class="sub-title">
			<h2>교육프로그램</h2>
		    </div>
		     -->
		<div class="page-nav">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i></li>
				<li>교육프로그램</li>
				<li>캡스톤디자인</li>
<li><a href="login.jsp"><i class="i-login"></i>로그인</a></li>
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

<div class="write-board">
<form name="boardwrite" style="margin:0;" method="post" action="crt.jsp" >

<div class="wrName">
<input type='text' name='no' 
placeholder="번호">
</div>	
<div class="wrName">	
<input type='text' name='title' placeholder="제목">
</div>
<div class="wrName">
<input type='text' name='writer' placeholder="작성자">
</div>
<div class="wrSubject">
<input type='date' name='register_date' placeholder="등록일">
</div>
<div class="wrName">
<input type='text' name='hits' placeholder="조회수">
</div>
<div class="wrName">
<input type='text' name='attach' placeholder="첨부파일">		
</div>
<div class="wrName">
<input type='text' name='category' placeholder="카테고리">
</div>
<div class="wrContent">
<input type='textarea' name="content" style=" width:700px; height:200px; " >	
</div>

</div>

<div class="boardWriteBtn"> 
<a href="crt.jsp">
<button id="write" type="submit" >
<i class="fa fa-pencil" aria-hidden="true">
</i> 글쓰기</button>
</a>
<a href="list.jsp">
<button id="cancel" type="button" >
<i class="fa fa-list" aria-hidden="true">
</i>목록으로</button>
</a> 
</div>

</form>


</body>
</html>