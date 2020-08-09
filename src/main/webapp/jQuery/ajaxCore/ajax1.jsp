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
    	$("table").hide();
    	$("ul").hide();
    	$("input#bk1").click(function() {
			$.ajax({
				url:'board.xml',
				dataType:'text',
				success:function(data){
					//console.log(data);
					$(data).find("board").each(function() {
						//alert($(this).find("no").text()+" "+$(this).find("title").text()+" "+$(this).find("contents").text());
						$("tbody#ty").append("<tr><td>"+$(this).find("no").text()+"</td><td>"+$(this).find("title").text()+"</td><td>"+$(this).find("contents").text()+"</td><td>"+$(this).find("hit").text()+"</td></tr>");
					});
					$("table").show('slow');
				},error:function(){
					alert('error');
				}
				
			});
		});
    	
    	$("input#bk2").click(function() {
    		$.ajax({
				url:'board.xml',
				dataType:'text',
				success:function(data){
					//console.log(data);
					$(data).find("board").each(function() {
						//alert($(this).find("no").text()+" "+$(this).find("title").text()+" "+$(this).find("contents").text());
						$("#ul1").append("<tr><td>"+$(this).find("no").text()+"</td><td>"+$(this).find("title").text()+"</td><td>"+$(this).find("contents").text()+"</td><td>"+$(this).find("hit").text()+"</td></tr>");
						
					});
					$("table").show('slow');
				},error:function(){
					alert('error');
				}
				
			});
		});
    });
</script>    
</head>
<body>
	<input id="bk1" type="button" value="click1">
	<input id="bk2" type="button" value="click2">
	
	 <table id="tb" cellpadding="10" cellspacing="0" width="80%" align="center" border="1">
        <thead>
          <tr>
          <th>NO</th>
          <th>TITLE</th>
          <th>CONTENTS</th>
          <th>HIT</th>
          </tr>
        </thead>
        <tbody id="ty">
        </tbody>
    </table>
    
    
    <ul class="ul1">
    	
    
    </ul>
</body>
</html>