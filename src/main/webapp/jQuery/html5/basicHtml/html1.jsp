<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		function sendHtml(p_url) {
			$.ajax({
				url:p_url,
				dataType:'json',
				type:'post',
				success:function(v){
					if(v.section==1){
						$("section#section1").html("<b>"+v.section+"</b>"+"<b>"+v.name+"</b>"+"<b>"+v.ko+"</b>"+"<b>"+v.eng+"</b>"+"<b>"+v.mat+"</b>");
					}
				},error:function(){
					alert('error');
				}
			});
		}
		$("header img").click(function() {
			var url="";
			switch ($(this).attr("id")) {
			case "img1":
				url="data1.jsp";
				break;
			case "img2":
				url="data2.jsp";
				break;
			case "img3":
				url="data3.jsp";
				break;		
			}
			sendHtml(url);

		});
	});
</script>
</head>
<body>
	<header>
		<!-- <h1>제목</h1> -->
		<img src="/web/img/0.jpg" width="50" height="50" id="img1"> <img
			src="/web/img/1.jpg" width="50" height="50" id="img2"> <img
			src="/web/img/2.jpg" width="50" height="50" id="img3">
	</header>

	<section id="section1">내용1</section>
	<section id="section2">내용2</section>
	<footer> 바닥 </footer>
</body>
</html>








