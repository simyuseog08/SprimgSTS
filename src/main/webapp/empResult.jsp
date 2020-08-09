<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("table#ta").hide();
		var temp ="";
		$("input#btn").click(function() {
			$("input[name='eno']").each(function(index,dom) {
				if($(this).prop("checked")){
					//alert($(this).attr("value"));
					temp+=$(this).attr("value")+",";
					
				}
			});
			$.ajax({
				url:'empListIN.do',
				dataType:'json',
				type:'POST',
				data:{ val:temp},
				success:function(v){
					$(v).each(function() {
						$("table#ta").show();
						$("#tb").append("<tr><td>"+this.empno+"</td><td>"+this.ename+"</td><td>"+this.empno+"</td><td>"+this.job+"</td><td>"+this.mgr+"</td><td>"+this.hiredate+"</td><td>"+this.sal+"</td><td>"+this.comm+"</td><td>"+this.deptno+"</td></tr>");
					});
				},error:function(e){
					alert('error');
				}
			});
		});
		
		$("table#ta").dblclick(function() {
			$("table#ta").hide();
		});
	});
</script>
<style>
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
}

th, th:hover{
background: yellow;
}

th, th:active{
background: white;
}

th, td:hover {
    background: aqua;
}

th, td:active {
     background: white;
}

tr{
background: silver;
}
</style>
</head>
<body>
 <h1>empResult</h1>
 	<div>
 	<form action="" method="post" name="frm">
 		<select>
 			<option selected="selected" id="empty">선택해주세요</option>
 			<option>EMPNO</option>
 			<option>JOB</option>
 			<option>SAL</option>
 			<option>ENAME</option>
 		</select>
 	
 		<input type="text" name="data" id="data">
 		<input type="button" value="검색">
 		
 		</form>
 	</div>
 	<input type="button" value="Search" id="btn">
 <table>
  <tr>
  	 <th>NO</th>
    <th>EMPNO</th>
    <th>ENAME</th>
    <th>JOB</th>
    <th>MGR</th>
    <th>HIREDATE</th>
    <th>SAL</th>
    <th>COMM</th>
    <th>DEPTNO</th>
  </tr>
  <c:forEach var="i" items="${empList }" varStatus="cnt">
  <tr>
   <td>${cnt.count }</td>
   <td><input type="checkbox" name="eno" value="${i.empno }"> ${i.empno }</td>
   <td>${i.ename }</td>
    <td>${i.job }</td>
     <td>${i.mgr }</td>
      <td>${i.hiredate }</td>
       <td>${i.sal }</td>
        <td>${i.comm }</td>
        <td>${i.deptno }</td>
  </tr>
</c:forEach>
	
</table>
<br>
<br>
<br>



<table id="ta">
  <tr>
  	 <th>NO</th>
    <th>EMPNO</th>
    <th>ENAME</th>
    <th>JOB</th>
    <th>MGR</th>
    <th>HIREDATE</th>
    <th>SAL</th>
    <th>COMM</th>
    <th>DEPTNO</th>
  </tr>
 <tbody id="tb">
  <tr>
  </tr>
</tbody>
	
</table>



</body>
</html>