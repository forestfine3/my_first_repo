<%@ page contentType="text/html;charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head><title>게시판 DB 관리 페이지</title></head>

<body>
<sql:query var="post" dataSource="jdbc/mydb">
SELECT * FROM post
</sql:query>

<sql:query var="posttext" dataSource="jdbc/mydb">
SELECT * FROM posttext
</sql:query>

<h3>게시물 DB</h3>
<table border=1>
<tr>
<th>no</th>
<th>title</th>
<th>writer</th>
<th>register_date</th>
<th>hits</th>
<th>attach</th>
<th>category</th>
</tr>
<c:forEach var="row" items="${post.rows}">
<tr>
<td>${row.no}</td>
<td>${row.title}</td>
<td>${row.writer}</td>
<td>${row.register_date}</td>
<td>${row.hits}</td>
<td>${row.attach}</td>
<td>${row.category}</td>
</tr>
</c:forEach>
</table>

</body>

</html>
