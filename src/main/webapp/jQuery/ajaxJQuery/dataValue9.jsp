<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:set value="5" var="end"/>
<c:choose>
	<c:when test="${param.value1 eq 'oop' and param.value2 eq 'java' }">
		<c:set var="end" value="10"></c:set>
	</c:when>

</c:choose>
<c:forEach var="i" begin="1" end ="${end }">
   <img src='/webPro/img/1.jpg' width=100 height=100>
</c:forEach>    

   