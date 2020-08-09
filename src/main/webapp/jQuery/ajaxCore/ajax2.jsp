<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script type="text/javascript">
     $(function(){
    	 $("button").click(function(){
    		//alert($("input[name='data']").val());
    		$("li").remove();
    		$.getJSON("http://flickr.com/services/feeds/photos_public.gne?tags="+$("input[name='data']").val()+"&tagmode=any&format=json&jsoncallback=?",
    		function(data){
   
    			//console.log(data);
    			$(data.items).each(function(index,dom) {
    				//$("ul#uu").append("<li><marquee behavior='scroll' direction='right'><img src='"+this.media.m+"' width=80 height=80></marquee></li>");
    				$(".bo").append("<aside><marquee behavior='scroll' direction='right'><img src='"+this.media.m+"' width=80 height=80></marquee></aside>");
    			
    			});
    			
    			
    		});
    	 });
     });
</script>
<style type="text/css">
 
 ul li{
 list-style-type: none;
 	color: blue;
 	background-color: yellow;
 	border:5px groove purple;
 	text-align: center;
 	border-width: 50px;
 }
 
 .bo{
 	border: 1px solid black;
 }
 
 .bo aside{
 	background-color: yellow;
 }

</style>
</head>
<body>
  <input type="text" name="data">
  <button>검색</button>

	<ul id="uu">
		
	
	</ul>
	
	<div class="bo">
		
		
		
	
	
	</div>
	
</body>
</html>





