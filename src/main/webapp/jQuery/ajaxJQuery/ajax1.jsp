<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("button").eq(0).click(function() {
		//alert($(this).text());
		$.ajax({
			url:'dataValue1.jsp',
			dataType:'text',
			success:function(data){
				$("div").html(data);
			}
		});
	});
	
	
	$("button").eq(1).click(function() {
		//alert($(this).text());
		$.ajax({
			url:'dataValue2.jsp',
			dataType:'text',
			success:function(data){
				$("div").html(data);
			}
		});
	});
	
	
	$("button").eq(2).click(function() {
		//alert($(this).text());
		$.ajax({
			url:'dataValue3.jsp',
			dataType:'text',
			success:function(data){
				$("div").html(data);
			}
		});
	});
	$("button#btn4").click(function() {
		$.ajax({
			
			url:'dataValue4.jsp',
			dataType:'html',
			success:function(data){
				$("div").append(data);
			}
			
		});
	});
	$("button[id='btn5']").click(function() {
		$.ajax({
			url:'clock.js',
			dataType:'script',
			success:function(data){
				clockFunction();
			}
				
		});
	});
	
	$("#btn6").click(function() {
		$.ajax({
			url:'dataValue6.jsp',
			dataType:'json',
			success:function(data){
				var temp = "<li>"+data.name+"</li><li>"+data.since+"</li>";
				$("ul#uu").html(temp);
			}
		});
	});
	
});
</script>

</head>
<body>
	<button>Click1</button>
	<button>Click2</button>
	<button>Click3</button>
	<button id="btn4">Click4</button>
	<button id="btn5">Click5</button>
	<button id="btn6">Click6</button><br><br><br>
	<div></div><span id="clock"></span>
	
	<ul id="uu">
		
	
	</ul>
</body>
</html>