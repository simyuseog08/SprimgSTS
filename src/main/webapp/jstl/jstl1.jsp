<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <%-- <c:set var="data1" value="abc"></c:set>
  NAME:<c:out value="${data1}"></c:out>
  LENGTH:<c:out value="${fn:length(data1)}"></c:out> --%>
  
  <c:set var="sp" value="abc-def-ghi"/>
  <c:set var="spl" value="${fn:split(sp,'-')}"></c:set>
  
  <c:forEach var="i" items="${spl}">
    <%-- ${i} <c:out value="${fn:contains(i,'d')}"></c:out><br> --%>
    <%-- ${i} <c:out value="${fn:endsWith(i,'c')}"></c:out><br> --%>
   <%--  ${i} <c:out value="${fn:startsWith(i,'a')}"></c:out><br> --%>
   ${i}String <c:out value="${fn:substring(i,1,2)}"></c:out><br>
   ${i}Before <c:out value="${fn:substringBefore(i,fn:substring(i,1,2))}"></c:out><br>
   ${i}After <c:out value="${fn:substringAfter(i,fn:substring(i,1,2))}"></c:out><br>

  </c:forEach>
 <%--  <c:out value="${spl}"></c:out> --%>

</body>
</html>








-




