<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/wordcloud.js"></script>
<script type="text/javascript">
$(function() {
	var text = '집가고 싶다';
	var lines = text.split(/[,\. ]+/g),
	    data = Highcharts.reduce(lines, function (arr, word) {
	        var obj = Highcharts.find(arr, function (obj) {
	            return obj.name === word;
	        });
	        if (obj) {
	            obj.weight += 1;
	        } else {
	            obj = {
	                name: word,
	                weight: 1
	            };
	            arr.push(obj);
	        }
	        return arr;
	    }, []);

	Highcharts.chart('container', {
	    series: [{
	        type: 'wordcloud',
	        data: data,
	        name: 'Occurrences'
	    }],
	    title: {
	        text: 'YouSeok Mind Map'
	    }
	});
});
</script>
<style type="text/css">
#container {
	min-width: 310px;
	max-width: 800px;
	margin: 0 auto
}

</style>
</head>
<body>
<div id="container"></div>
</body>
</html>