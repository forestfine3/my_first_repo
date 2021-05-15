<%@ page contentType="text/html;charset=utf-8" import="java.util.*" %>
<%@ page import="java.lang.Math.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&amp;display=swap">
<script	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.1.0/js/swiper.js"></script>
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
					<c:set var="option" value="${param.option}"/>
					<c:set var="catename" value="${cateMap[category]}"/>
					<c:set var="word" value="${param.word}"/>
					<c:set var="page" value="${param.page}"/>
					
					<%-- 카테고리 버튼 순서대로 출력 --%>
					<c:forEach var="i" items="${cateMap}">
				    	<c:choose>
					        <c:when test="${category == i.key}">
								<a href="/WebProject1/list.jsp?categoryname=${i.key}&page=1" class="sub7_tab check" style="display: inline-block;">${i.value}</a>
							</c:when>
							<c:otherwise>
								<a href="/WebProject1/list.jsp?categoryname=${i.key}&page=1" class="sub7_tab" style="display: inline-block;">${i.value}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>		
				</div>				
<%--
**** 검색을 한 경우 불러오는 게시물 DB
**** rownum는 넘버링 용도로 사용됨
--%>
<c:choose>
	<c:when test ="${option == 'title'}">
		<sql:query var="rs" dataSource="jdbc/mydb">
			select no, title, writer, register_date, hits, category, attach, @rownum := @rownum + 1 as rownum
			from post, (SELECT @rownum:=0) as r
			where category=? and title like(?)
			order by rownum desc
		<sql:param value="${catename}"/>
		<sql:param value="%${word}%"/>
		</sql:query>
	</c:when>
	<c:when test ="${option == 'content'}">
		<sql:query var="rs" dataSource="jdbc/mydb">
			select post.no, title, writer, register_date, hits, category, attach, @rownum := @rownum + 1 as rownum
			from post, (SELECT @rownum:=0) as r, posttext
			where post.no=posttext.no
			order by rownum desc
		<sql:param value="${catename}"/>
		<sql:param value="%${word}%"/>
		</sql:query>
	</c:when>
	<c:when test ="${option == 'manager'}">
		<sql:query var="rs" dataSource="jdbc/mydb">
			select no, title, writer, register_date, hits, category, attach, @rownum := @rownum + 1 as rownum
			from post, (SELECT @rownum:=0) as r
			where category=? and writer=?
			order by rownum desc
		<sql:param value="${catename}"/>
		<sql:param value="${word}"/>
		</sql:query>
	</c:when>
	<c:otherwise>
		<sql:query var="rs" dataSource="jdbc/mydb">
			select no, title, writer, register_date, hits, category, attach, @rownum := @rownum + 1 as rownum
			from post, (SELECT @rownum:=0) as r
			where category=?
			order by rownum desc
			<sql:param value="${catename}"/>
		</sql:query>
	</c:otherwise>
</c:choose>

<c:choose>
	<c:when test ="${option == 'title'}">
		<sql:query var="rs_cnt" dataSource="jdbc/mydb">
			select count(*)
			from post
			where category=? and title like(?)
			order by rownum desc
		<sql:param value="${catename}"/>
		<sql:param value="%${word}%"/>
		</sql:query>
	</c:when>
	<c:when test ="${option == 'content'}">
		<sql:query var="rs_cnt" dataSource="jdbc/mydb">
			select count(*)
			from post, posttext
			where post.no=posttext.no and
   			   category=? and posttext.text like(?)
			order by rownum desc
		<sql:param value="${catename}"/>
		<sql:param value="%${word}%"/>
		</sql:query>
	</c:when>
	<c:when test ="${option == 'manager'}">
		<sql:query var="rs_cnt" dataSource="jdbc/mydb">
			select no, title, writer, register_date, hits, category, attach, @rownum := @rownum + 1 as rownum
			from post, (SELECT @rownum:=0) as r
			where category=? and writer=?
			order by rownum desc
		<sql:param value="${catename}"/>
		<sql:param value="${word}"/>
		</sql:query>
	</c:when>
	<c:otherwise>
		<sql:query var="rs_cnt" dataSource="jdbc/mydb">
			select no, title, writer, register_date, hits, category, attach, @rownum := @rownum + 1 as rownum
			from post, (SELECT @rownum:=0) as r
			where category=?
			order by rownum desc
			<sql:param value="${catename}"/>
		</sql:query>
	</c:otherwise>
</c:choose>
				<div class="board-search">
						<form name="search" style="margin: 0;"get";>
							<div class="search-con">
								<select name="option">
									<option value="title">제목</option>
									<option value="content">내용</option>
									<option value="manager">담당자</option>
								</select>
							</div>
							<input type="hidden" name="categoryname" value="${category}">
							<div class="search-input">
								<input type="text" name="word" placeholder="검색 내용을 입력해주세요"
									pattern="{2,}" required
								>
								<button id="btn_search" input type="submit" value="검색">검색</button>
							</div>
						</form>
						<div class="page-info">
						
<%-- 읽어온 게시물 수를 출력 --%>
<%-- 오늘날짜 출력 쿼리 --%>
<c:set var="today" value="<%=new java.util.Date() %>" />
<fmt:formatDate var="now" type="date" value="${today}" pattern="yyyy-MM-dd" />

<c:choose>
	<c:when test ="${option == 'title'}">
		<sql:query var="todaycnt" dataSource="jdbc/mydb">
			select count(*) as cnt
			from post
			where category=? and title like(?) and register_date=?
		<sql:param value="${catename}"/>
		<sql:param value="%${word}%"/>
		<sql:param value="${now}"/>
		</sql:query>
	</c:when>
	<c:when test ="${option == 'content'}">
		<sql:query var="todaycnt" dataSource="jdbc/mydb">
			select count(*) as cnt
			from post, posttext
			where post.no=posttext.no and category=? and posttext.text like(?) and register_date=?
		<sql:param value="${catename}"/>
		<sql:param value="%${word}%"/>
		<sql:param value="${now}"/>
		</sql:query>
	</c:when>
	<c:when test ="${option == 'manager'}">
		<sql:query var="todaycnt" dataSource="jdbc/mydb">
			select count(*) as cnt
			from post
			where category=? and writer=? and register_date=?
		<sql:param value="${catename}"/>
		<sql:param value="${word}"/>
		<sql:param value="${now}"/>
		</sql:query>
	</c:when>
	<c:otherwise>
		<sql:query var="todaycnt" dataSource="jdbc/mydb">
			select count(*) as cnt
			from post
			where category=? and register_date=?
			<sql:param value="${catename}"/>
			<sql:param value="${now}"/>
		</sql:query>
	</c:otherwise>
</c:choose>

							<span>오늘 :
							<strong>
							<c:forEach var="row" items="${todaycnt.rows}">${row.cnt}</c:forEach>
							</strong>건</span>

<%-- 총 게시물 수 출력 쿼리 --%>
<c:choose>
	<c:when test ="${option == 'title'}">
		<sql:query var="totalcnt" dataSource="jdbc/mydb">
			select count(*) as cnt
			from post
			where category=? and title like(?)
		<sql:param value="${catename}"/>
		<sql:param value="%${word}%"/>
		</sql:query>
	</c:when>
	<c:when test ="${option == 'content'}">
		<sql:query var="totalcnt" dataSource="jdbc/mydb">
			select count(*) as cnt
			from post, posttext
			where post.no=posttext.no and category=? and posttext.text like(?)
		<sql:param value="${catename}"/>
		<sql:param value="%${word}%"/>
		</sql:query>
	</c:when>
	<c:when test ="${option == 'manager'}">
		<sql:query var="totalcnt" dataSource="jdbc/mydb">
			select count(*) as cnt
			from post
			where category=? and writer=?
		<sql:param value="${catename}"/>
		<sql:param value="${word}"/>
		</sql:query>
	</c:when>
	<c:otherwise>
		<sql:query var="totalcnt" dataSource="jdbc/mydb">
			select count(*) as cnt
			from post
			where category=?
			<sql:param value="${catename}"/>
		</sql:query>
	</c:otherwise>
</c:choose>
							<span>총 :
							<strong>
							<c:forEach var="row" items="${totalcnt.rows}">${row.cnt}</c:forEach>
							</strong>건</span>
						</div>
					</div>

<%-- 한 페이지 내 게시물 수 maxlists--%>
<c:set var="maxlists" value="5"/>

<c:forEach var="row" items="${totalcnt.rows}">
<c:set var="maxno" value="${row.cnt}"/>
</c:forEach>
<c:set var="maxpostno" value="${maxno - (maxlists*(page-1))}"/>
<c:set var="minpostno" value="${maxpostno-(maxlists-1)}"/>
                    
<%-- 총 페이지 수 변수 totalpage --%>
<c:set var="totalpage" value="${maxno/maxlists}"/>
<fmt:parseNumber var="totalpage" integerOnly="true" value="${totalpage+(1-(totalpage%1))%1}"/>


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
							    <c:if test="${minpostno <= row.rownum and row.rownum <= maxpostno}">
								<c:if test="${row.category == catename}">
									<li class="table-body-row">
										<div class="td td-cell01">${row.rownum}</div>
										<c:if test="${category == 'docu'}">
										<div class="td td-cell01">${row.category}</div>
										</c:if>
										<div class="td td-cell02" style="text-align: left">
										<a href="/WebProject1/read.jsp?postno=${row.no}&categoryname=${category}">${row.title}</a></div>
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
								</c:if>
							</c:forEach>
						</ul>
					</div>
					</c:otherwise>
          </c:choose>
					<div class="board-btn">
        				<a href="create.jsp"><button id="write"><i class="fa fa-pencil" aria-hidden="true"></i>글쓰기</button></a>
        			</div>
					<div class="page">
					    <c:if test="${page == 1}">
						<div class="pagePrev"> <span class="pageDoubleLeft"><span style="font-size:11px; color:#999999;">
							<i class="fa fa-angle-double-left"></i></span></span> <span class="pageLeft"><span style="font-size:11px; color:#999999;">
							<i class="fa fa-angle-left"></i></span></span>
						</div>
						</c:if>
						<c:if test="${page != 1}">
						<div class="pagePrev"> <span class="pageDoubleLeft"><a href='/WebProject1/list.jsp?categoryname=${param.categoryname}&page=1'><span style="font-size:11px;">
							<i class="fa fa-angle-double-left"></i></span></a></span> <span class="pageLeft"><a href='/WebProject1/list.jsp?categoryname=${param.categoryname}&page=${page-1}'><span style="font-size:11px;">
							<i class="fa fa-angle-left"></i></span></a></span>
						</div>
						</c:if>
						<ul>
						    <%-- 게시물 페이지 버튼 출력 --%>
						    <c:forEach var="i" begin="1" end="${totalpage}">
						    <c:if test="${page == i}">
							    <li class="on"><a href='/WebProject1/list.jsp?categoryname=${param.categoryname}&page=${i}'> ${i} </a></li>
							</c:if>
							<c:if test="${page != i}">
							    <li><a href='/WebProject1/list.jsp?categoryname=${param.categoryname}&page=${i}'> ${i} </a></li>
						    </c:if>
						    </c:forEach>
						</ul>
						
						<c:if test="${page == totalpage}">
						<div class="pageNext"> <span class="pageRight"><span style="font-size:11px; color:#999999;">
							<i class="fa fa-angle-right"></i></span></span> <span class="pageDoubleRight"><span style="font-size:11px; color:#999999;">
							<i class="fa fa-angle-double-right"></i></span></span>
						</c:if>
						<c:if test="${page != totalpage}">
						<div class="pageNext"> <span class="pageRight"><a href='/WebProject1/list.jsp?categoryname=${param.categoryname}&page=${page+1}'><span style="font-size:11px;">
							<i class="fa fa-angle-right"></i></span></a></span> <span class="pageDoubleRight"><a href="/WebProject1/list.jsp?categoryname=${param.categoryname}&page=${totalpage}"><span style="font-size:11px;">
							<i class="fa fa-angle-double-right"></i></span></a></span>
						</div>
						</c:if>
					</div>
					
       	</div>
        
</body>
</html>