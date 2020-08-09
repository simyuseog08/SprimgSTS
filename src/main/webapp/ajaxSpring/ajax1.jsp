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
		
		$("button#btn1").click(function() {
			$.ajax({
				url:'../dataValue/value1.jsp',
				dataType:'json',
				success:function(v){
				$(v).each(function(index,dom) {
					$("ul#uu").append("<li>"+this.cnt+"</li><li>"+this.message+"</li>"); //this.cnt,dom.cnt,dom[cnt]
				});
				
				},error:function(){
					alert('error');
				}
			});
		});
		
		
		/* $("button#btn2").click(function() {
			$.ajax({
				url:'../dataValue/value2.jsp',
				dataType:'json',
				success:function(img){
					$(img).each(function(index,dom) {
						//$("div#dv").append("<img alt='"+this.message+"' src='"+this.img+"'> width=200 height=200");
						alert(this.img);
					});
				}
			});
		}); */
		
		 $("button#btn2").click(function(){
			 $.ajax({
				    url:'messageAction.do',
				    dataType:'json',
				    success:function(v){
				    	$(v).each(function(index,dom) {
							//alert(this.empno+" "+this.ename+" "+this.job+" "+this.sal);
				    		/* $("ul#uu").append("<li>"+this.empno+"</li><li>"+this.ename+"</li><li>"+this.job+"</li><li>"+this.sal+"</li>"); */
						});
				    	
				    		
						
				    },error:function(){
				    	alert('error');
				    }
			  });		 
		 });
		
		$("button").eq(2).dblclick(function() {
			/* alert($(this).text()); */
			$.ajax({
				url:'empList.do',
				dataType:'json',
				success:function(v){
					//console.log(v);
					 $(v).each(function(index,dom) {
						
					$("ul#uuu").append(" <marquee behavior='slide' direction='left'><li>"+this.empno+"</li></marquee><li>"+this.ename+"</li><li>"+this.job+"</li><li>"+this.sal+"</li>");
					}); 
					
				},error:function(){
					alert('error');
				}
				
			});
		});
		
	});


</script>
<style type="text/css">
 #uuu li{
 font-family: "휴먼매직체";
 font-size: 20px;
 color: aqua;
 border: 5px dotted yellow;
 border-width: 30px;
 text-align: center;
}


/* UI Object */
.tbl_type,.tbl_type th,.tbl_type td{border:0}
.tbl_type{width:100%;border-bottom:2px solid #dcdcdc;font-family:Tahoma;font-size:11px;text-align:center}
.tbl_type caption{display:none}
.tbl_type th{padding:7px 0 4px;border-top:2px solid #dcdcdc;background-color:#f5f7f9;color:#666;font-family:'돋움',dotum;font-size:12px;font-weight:bold}
.tbl_type td{padding:6px 0 4px;border-top:1px solid #e5e5e5;color:#4c4c4c}
/* //UI Object */
</style>
</head>
<body>
<button id="btn1">Click1</button>
<button id="btn2">Click2</button>
<button id="btn3">Click3</button>

<br>
<ul id="uu">
	
</ul>

<ul id="uuu" style="list-style: none;">
	
</ul>

<!-- <table id="td">
	<thead>
		<tr>
			<th>Empno</th>
			<th>Ename</th>
			<th>Job</th>
			<th>Sal</th>
		</tr>
	</thead>

</table> -->

<!-- UI Object -->



<table class="tbl_type" border="1" cellspacing="0" summary="유형별 자산목록리스트">
<caption>유형별 자산목록</caption>
<colgroup>
<col width="12%"><col><col width="12%" span="6">
</colgroup>
<thead>
<tr>
<th scope="col">구분</th>
<th scope="col">신자산번호</th>
<th scope="col">제조사</th>
<th scope="col">기기번호</th>
<th scope="col">모델명</th>
<th scope="col">TYPE</th>
<th scope="col">소유유형</th>
<th scope="col">지역</th>
</tr>
</thead>
<tbody>
<tr>
<td>PC</td>
<td>A12334654</td>
<td>DELL</td>
<td>3QZG615</td>
<td>GX620</td>
<td>DESKTOP</td>
<td>공용</td>
<td>젤존</td>
</tr>
<tr>
<td><img alt="킹베" src="/web/img/0.jpg" width="50" height="50" style="z-index: -9999px;"> </td>
<td>A12334654</td>
<td>삼성전자</td>
<td>3QZG615</td>
<td>GX620</td>
<td>NOTEBOOK</td>
<td>공용</td>
<td>벤처</td>
</tr>
<tr>
<td>PC</td>
<td>A12334654</td>
<td>DELL</td>
<td>3QZG615</td>
<td>GX620</td>
<td>DESKTOP</td>
<td>공용</td>
<td>젤존</td>
</tr>
<tr>
<td>PC</td>
<td>A12334654</td>
<td>삼성전자</td>
<td>3QZG615</td>
<td>GX620</td>
<td>NOTEBOOK</td>
<td>공용</td>
<td>벤처</td>
</tr>
<tr>
<td>PC</td>
<td>A12334654</td>
<td>DELL</td>
<td>3QZG615</td>
<td>GX620</td>
<td>DESKTOP</td>
<td>공용</td>
<td>젤존</td>
</tr>
<tr>
<td>PC</td>
<td>A12334654</td>
<td>DELL</td>
<td>3QZG615</td>
<td>GX620</td>
<td>DESKTOP</td>
<td>공용</td>
<td>젤존</td>
</tr>
<tr>
<td>PC</td>
<td>A12334654</td>
<td>삼성전자</td>
<td>3QZG615</td>
<td>GX620</td>
<td>NOTEBOOK</td>
<td>공용</td>
<td>벤처</td>
</tr>
<tr>
<td>PC</td>
<td>A12334654</td>
<td>DELL</td>
<td>3QZG615</td>
<td>GX620</td>
<td>DESKTOP</td>
<td>공용</td>
<td>젤존</td>
</tr>
<tr>
<td>PC</td>
<td>A12334654</td>
<td>삼성전자</td>
<td>3QZG615</td>
<td>GX620</td>
<td>NOTEBOOK</td>
<td>공용</td>
<td>벤처</td>
</tr>
<tr>
<td>PC</td>
<td>A12334654</td>
<td>DELL</td>
<td>3QZG615</td>
<td>GX620</td>
<td>DESKTOP</td>
<td>공용</td>
<td>젤존</td>
</tr>
</tbody>
</table>
<!-- //UI Object -->

</body>
</html>