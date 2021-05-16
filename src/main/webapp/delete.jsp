<%@ page contentType="text/html;charset=utf-8" import="java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String uid = (String)session.getAttribute("uid");
%>

<c:set var="no" value="${param.no}"/>
<c:set var="writer" value="${param.writer}"/>

<sql:query var="rs" dataSource="jdbc/mydb">
select no
from post
where no = ? and writer = ?
<sql:param value="${ no }" />
<sql:param value="${ writer }" />
</sql:query>

<c:forEach var="row" items="${rs.rows}">
<c:set var="select_no" value="${row.no}"/>
</c:forEach>

<html>
<head><title>db삭제 테스트</title></head>
<h2>db삭제 테스트</h2>
<body>
<c:if test="${select_no == null}">
삭제가 진행되지 않았습니다
</c:if>
<c:if test="${select_no != null}">
${select_no}번 글을 삭제합니다

<sql:update var="rs" dataSource="jdbc/mydb">
delete from post
where no = ?
<sql:param value="${ select_no }" />
</sql:update>

</c:if>
</body>


</html>