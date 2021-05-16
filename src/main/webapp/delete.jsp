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

<c:if test="${select_no != null}">
<sql:update var="rs" dataSource="jdbc/mydb">
delete from post
where no = ?
<sql:param value="${ select_no }" />
</sql:update>

<%-- 정상적으로 삭제됐다면 공지사항 페이지로 리다이렉트 --%>
<% 
response.sendRedirect("list.jsp?categoryname=notice");
%>

</c:if>

<html>
<body>
<c:if test="${select_no == null}">
삭제가 진행되지 않았습니다
</c:if>
</body>


</html>