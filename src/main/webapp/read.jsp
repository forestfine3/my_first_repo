<%@ page contentType="text/html;charset=utf-8"%>

<%-- fmt태그 사용 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- DB 연동--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<!-- 게시물 DB -->
<sql:query var="list" dataSource="jdbc/mydb">
select no, title, writer, register_date, hits
from post
where no=1
</sql:query>
<c:forEach var="row" items="${list.rows}">
<c:set var="postno" value="${row.no}"/>
<c:set var="title" value="${row.title}"/>
<c:set var="writer" value="${row.writer}"/>
<c:set var="wdate" value="${row.register_date}"/>
<c:set var="hits" value="${row.hits}"/>
</c:forEach>


<sql:query var="post" dataSource="jdbc/mydb">
select no, text
from posttext
where no=1
</sql:query>
<c:forEach var="row" items="${post.rows}">
<c:set var="text" value="${row.text}"/>
</c:forEach>


<head><title>게시물 내용 읽기</title></head>
<h3> ${title}</h3>
<h2> 게시물 번호: ${postno} | 작성자: ${writer}| 작성일: ${wdate} | 조회수: ${hits} </h2>
<body>
${text}<br><br>
이전으로
</body>
</html>