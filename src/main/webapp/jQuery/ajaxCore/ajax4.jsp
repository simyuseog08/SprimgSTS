<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script type="text/javascript">
$(function() {
//$("#container").hide();

$("button#btn1").click(function() {
	$.ajax({
		url:'chart1.do',
		dataType:'text',
		success:function(v){
			eval(v);
		},error:function(){
			alert('error');
		}
	});
});

});
</script>
<style type="text/css">
#container {
	min-width: 310px;
	max-width: 800px;
	height: 400px;
	margin: 0 auto
}

</style>
</head>
<body>
<button id="btn1">Chart1</button>
<div id="container"></div>

</body>
</html>