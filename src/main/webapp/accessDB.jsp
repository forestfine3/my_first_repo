<%@ page contentType="text/html;charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head><title>게시판 DB 관리 페이지</title></head>

<body>
<c:set var="dbSelect" value="${param.dbSelect}"/>
<h1>DB Select: ${dbSelect}</h1>
<form method="post" action="accessDB.jsp">
DB: <input type="radio" name=dbSelect value="post">post
<input type="radio" name=dbSelect value="posttext">posttext
<br>
select no: <input type="number" min=1 name="no" style="width:60px;">
count: <input type="number" name="cnt" style="width:60px;">
<input type="submit" value="PUSH">
</form>



<sql:query var="post" dataSource="jdbc/mydb">
SELECT * FROM post
</sql:query>

<sql:query var="posttext" dataSource="jdbc/mydb">
SELECT * FROM posttext
</sql:query>

<!-- 속성명 출력을 위한 DB -->
<c:choose>
<c:when test="${dbSelect == 'posttext'}">
<sql:query var="postheader" dataSource="jdbc/mydb">
show full columns from posttext
</sql:query>
</c:when>
<c:otherwise>
<sql:query var="postheader" dataSource="jdbc/mydb">
show full columns from post
</sql:query>
</c:otherwise>
</c:choose>

<c:if test="${dbSelect == 'post'}"><h3>게시물 DB</h3></c:if>
<c:if test="${dbSelect == 'posttext'}"><h3>게시물 내용 DB</h3></c:if>
<table border=1>
<tr>
<c:forEach var="row" items="${postheader.rows}">
<th>${row.Field}</th>
</c:forEach>
</tr>
<tr>

<c:choose>
<c:when test="${dbSelect == 'post'}">
<c:forEach var="row" items="${post.rows}">
<td>${row.no}</td>
<td>${row.title}</td>
<td>${row.writer}</td>
<td>${row.register_date}</td>
<td>${row.hits}</td>
<td>${row.attach}</td>
<td>${row.category}</td>
</tr>
</c:forEach>
</c:when>
<c:when test="${dbSelect == 'posttext'}">
<c:forEach var="row" items="${posttext.rows}">
<td>${row.textno}</td>
<td>${row.no}</td>
<td>${row.text}</td>

</tr>
</c:forEach>
</c:when>

</c:choose>
</table>

</body>

</html>
