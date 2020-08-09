<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("img").eq(2).click(function() {
		$("table").animate({
            left: '250px',
            height: '-=150px',
            width: '-=150px'
        });
	});
	$("img").eq(1).click(function() {
		$.ajax({
			url:'person.do',
			dataType:'json',
			success:function(v){
				//console.log(v.name+" "+v.age+" "+v.height);
				$(v).each(function(index,dom) {
					$("table").animate({
			            left: '250px',
			            height: '+=150px',
			            width: '+=150px'
			        });
					$("table").append("<tr><td>"+this.name+"</td><td>"+this.age+"</td><td>"+this.height+"</td></tr>");
				});
			},error:function(){
				alert('error');
			}
			
		});
	});
	$("img").eq(0).mouseover(function() {
	   
		 $.ajax({
			url:'mapProcess.do',
			dataType:'json',
			success:function(v){
				$("div#dv").html("<img src='/web/img/"+v.img+"' width=200 height=200> ");
			},error:function(){
				alert('error');
			}
			
		});
	});
});

</script>

<style type="text/css">
 table{
 	border: 5px dashed yellow;
 	border-width: 10px;
 	border-collapse: 5px;
 	border-spacing: 15px;
 }
 
 table td{
 	background-color: orange;
 	text-align: center;
 	font-family: cursive;
 	font-weight: bold;
 }
 
 table th{
 color: blue;
 font-family: "휴먼매직체";
 text-align: center;
 
 }

</style>
</head>
<body>
	<img src="/web/img/0.jpg" width="50" height="50">
	<img src="/web/img/2.jpg" width="50" height="50">
	<img src="/web/img/3.jpg" width="50" height="50">
	<div id="dv"></div>
	
	<table>
		<tr>
			<th>Name</th>
			<th>Age</th>
			<th>Height</th>
		</tr>
		
		
	</table>
	
</body>
</html>