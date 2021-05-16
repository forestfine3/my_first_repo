<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:query var="rs" dataSource="jdbc/mydb">
select uname from login where uid=? and upasswd=?
<sql:param value="${ param.uid }" />
<sql:param value="${ param.upasswd }" />
</sql:query>

<c:forEach var="row" items="${rs.rows}">
<c:set var="uname" value="${row.uname}"/>
</c:forEach>

<html>
<head><title>사용자 로그인</title></head>
<body>
<h2>사용자 로그인</h2>
<c:choose>
<c:when test="${uname == null}">
사용자 이름 혹은 암호가 일치하지 않습니다.
</c:when>
<c:otherwise>
<%
String uid = request.getParameter("uid");
session.setAttribute("uid", uid);
%>
'${uname}'님 환영합니다.
</c:otherwise>
</c:choose>
<a href="list.jsp?categoryname=notice">홈페이지로 이동</a>
</body>
</html>