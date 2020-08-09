<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

[
<c:forEach var="i" items="${empList}" varStatus="cnt">
      <c:choose>
        <c:when test="${fn:length(empList)!=cnt.count}">
          {
             "empno":${i.empno},
             "ename":"${i.ename}",
             "job":"${i.job}",
             "sal":${i.sal}             
          },
        
        </c:when>
        <c:otherwise>
         {
             "empno":${i.empno},
             "ename":"${i.ename}",
             "job":"${i.job}",
             "sal":${i.sal}             
          }
        </c:otherwise>
      
      </c:choose>

</c:forEach>
]
 
 
