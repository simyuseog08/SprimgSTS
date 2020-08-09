<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC >
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Start Simple Web</title>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/clean-blog.css" rel="stylesheet">
<link href="css/board.css" rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("div#list2").hide();
		$("button#submit").click(function() {
			/* var query = $("select#query,option").val();
			var data = $("input[name='data']").val(); */
			if($("select#query").val()=='total'||$("input#data").val().length==0){
				alert('SerarchCheck');
				$("select#query").prop({"selectIndex":0});
				$("input#data").val('');
				$("input#data").focus();
				return false;
			}else{
				$.ajax({
					url:'search.do',
					dataType:'json',
					type:'post',
					data:{
						query:$("select#query").val(),
						data:$("input#data").val()
					},
					success:function(v){
						$(v).each(function(index,dom) {
							$("div#list").hide();
							$("div#list2").show();
							$("i#name2").text(this.name);
							$("b#subject").text(this.subject);
						});
					},error:function(){
						alert('error');
					}
					
				});
			}
		});
	});
</script>
<body>

<jsp:include page="header.jsp"></jsp:include>


	<!-- Page Header -->
	<!-- Set your background image for this header on the line below. -->
	<header class="intro-header"
		style="background-image: url('img/about-bg.jpg'); height: 200px">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<div class="site-heading"
						style="margin-top: 10px; padding-top: 35px; padding-bottom: 35px">
						<h2>SAMPLE</h2>
						<span class="subheading">BULLETIN BOARD</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="board-field">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div>
			
				<select id="query" name="query">
					<option selected="selected" value="total">선택하세요</option>
					<option value="name">이름</option>
					<option value="subject">제목</option>
					<option value="textarea">내용</option>
				</select>
				<input type="text" id="data" name="data">
				<button id="submit" name="submit">검색</button>
			</div>
			<div class="board-toolbar" 	style="text-align: right; margin-bottom: 20px">
				
				<a href="write.jsp" class="btn btn-primary btn-sm"><i
					class="glyphicon glyphicon-pencil" style="margin-right: 15px"></i>쓰기</a>
			</div>
			
			<div class="list-group" id="list">
					<c:forEach var="i" items="${bbsList }">
						<a href="info.do?no=${i.no }&job=info&page=5" class="list-group-item">
					
						<span class="board-category">[ALGORITHM]</span>
							<b id="subject">${i.subject }</b>  <span class="badge">New</span>

					    <br>
					    	
							<i class="glyphicon glyphicon-user" id="name2">${i.name }님 </i> 
							<i class="glyphicon glyphicon-comment">0</i>  
								<i class="glyphicon glyphicon-ok">${i.hit }</i> 
								<i class="glyphicon glyphicon-time">${i.regdate }</i> <br>
								<img src="/web/upload/${i.filename }" width="50" height="50">
									
					
				</a>
					</c:forEach>
					
				
					
				<!-- <a href="info.jsp" class="list-group-item">
					
						<span class="board-category">[ALGORITHM]</span>
							버블정렬  <span class="badge">New</span>
					
					
					    <br>
					    	
							<i class="glyphicon glyphicon-user"></i> 미립님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 20 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						
					
				</a>
					<a href="info.jsp" class="list-group-item">
					
						<span class="board-category">[ALGORITHM]</span>
							버블정렬  <span class="badge">New</span>
					
					
					    <br>
							<i class="glyphicon glyphicon-user"></i> 미립 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 20 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						
					
				</a>
					<a href="info.jsp" class="list-group-item">
					
						<span class="board-category">[ALGORITHM]</span>
							버블정렬  <span class="badge">New</span>
					
					
					    <br>
							<i class="glyphicon glyphicon-user"></i> 미립 님 <i
								class="glyphicon glyphicon-comment"></i> 0 <i
								class="glyphicon glyphicon-ok"></i> 20 <i
								class="glyphicon glyphicon-time"></i> 2016.03.31 21:55
						
					
				</a> -->
			
				
				
			
		
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<ul class="pagination">
					<li><a href="#">이전</a></li>
					<li><a href="#">1</a></li>
					<li class="active"><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">...</a></li>
					<li><a href="#">19</a></li>
					<li><a href="#">다음</a></li>
				</ul>
			</div>
		</div>
		
	</div>
	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<ul class="list-inline text-center">
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-envelope-o fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-home fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<p class="copyright text-muted">Copyright &copy;2016 SIST. All
						rights reserved | code by milib</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/clean-blog.min.js"></script>

</body>

</html>
