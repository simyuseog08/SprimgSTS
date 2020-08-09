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
    	/* $("img[title='t1']").click(function() {
			//alert(this.src);
			$(this).attr({src:$("img#img2").attr("src")});
		}); */
		
		/* $("img").click(function() {
			//alert($(this).attr("src"));//$(this).attr("src") =get.src 랑 같음
			//$(this).attr("src","/webPro/img/4.jpg");
			//$(this).attr({src:'/webPro/img/cry.gif',width:'250',height:'250',border:'10'});
			
			/* $("img").each(function(index,dom) {
				//alert($(this).attr("title"));
				$(this).attr("src","/webPro/img/cry.gif");
				
			}); */
			
			/* $("img").attr("src",function(){
				return "/webPro/img/cry.gif";
			});
			
		}); 
		
		$("table").click(function() {
			$("#tr1").text('gg');
			$("#tr1").html('<td>'+"안녕"+'</td>');
		}); */
		
		/* $("div").each(function(index,dom) {
			//alert($(this).text());
			//alert($(this).html());
			
		}); */
		
		//alert($("div").eq(0).text());
    	
		$("table").attr("id",function(i){
			//alert("i="+i);
			return $("#tr1")"div-id-"+i;
			
		}).each(function(ii,dom) {
			//alert("ii="+ii+" "+this.id);
			$("tr",this).html("(ID='<td>"+this.id+"</td>')"); //this를 쓰지 않으면 마지막것만 출력
			
		});
		
		
		
		
		
		
    });
</script>
  
</head>
<body>
	<!-- <img title="t1" src="/webPro/img/0.jpg" width="200" height="200">
	<img title="t2" id="img2" src="/webPro/img/1.jpg" width="200" height="200">
	<img title="t3" src="/webPro/img/2.jpg" width="200" height="200">
	<img title="t4" src="/webPro/img/3.jpg" width="200" height="200">
	<img title="t5" src="/webPro/img/4.jpg" width="200" height="200"> -->
	
	
	 <table border="5" bordercolor="blue">
		<tr id="tr1">
			
		</tr>
	
	
	</table>
	
	
	 <div id="d1">ZERO-TH<span></span> </div>
   <div id="d2">FIRST<span></span></div>
   <div id="d3">SECOND<span></span></div>
 
</body>
</html>





