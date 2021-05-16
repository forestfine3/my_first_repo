<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("utf-8"); %>



<html>
<head><title>게시판 글쓰기</title></head>
<body>
<h2>게시판 글쓰기</h2>
<c:catch var="exception">
<sql:update dataSource="jdbc/mydb" var="updatedTable">
INSERT INTO test.post (no, title, writer, register_date, hits, attach, category) VALUES (?, ?, ?, ?, ?, ?, ?);
<sql:param value="${ param.max_no}" />
<sql:param value="${ param.title }" />
<sql:param value="${ param.writer }" />
<sql:param value="${ param.register_date }" />
<sql:param value="${ param.hits }" />
<sql:param value="${ param.attach }" />
<sql:param value="${ param.option }" />
</sql:update>

<sql:update dataSource="jdbc/mydb" var="updatedTable2">
INSERT INTO test.posttext (textno, no, text) VALUES (?, ?, ?);
<sql:param value="${ param.max_no}" />
<sql:param value="${ param.max_no}" />
<sql:param value="${ param.content }" />
</sql:update>


<c:if test="${updatedTable >= 1 and updatedTable2 >= 1}">

<%-- 정상적으로 DB에 입력됐다면 작성된 글로 리다이렉트 --%>
<%
String category = request.getParameter("categoryname");
String postno = request.getParameter("max_no");
String pageno = request.getParameter("page");
response.sendRedirect("read.jsp?postno="+postno+"&categoryname="+category+"&page="+pageno);
%>

 
글이 게시되었습니다.
<a href="list.jsp">목록으로 이동</a>
</c:if>
</c:catch>
<c:if test="${exception!=null}">
글이 게시되지 않았습니다.
</c:if>
</body>
</html>