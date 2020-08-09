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
	 var n_u = $("b#n_u").text();
	
	$("button#btn-success").click(function() {
		n_u++;
		$("b#n_u").text(n_u);
		if(n_u >= 20){
			alert('가장많은 공감이 되었습니다.');
		}
		
	});
	
	 var n_m = $("b#n_m").text();
	$("button#btn-warning").click(function() {
		n_m++;
		$("b#n_m").text(n_m);
		if(n_m >= 20){
			alert('비공감이 너무 많습니다.');
		}
	});
	
	$(".showDiv").hide();
	var flag;
	$("a#delete").click(function() {
		flag=$(this).attr("id");
		$(".showDiv").show();
		$("input#Search").click(function() {
			if($("input#data").val().length==0){
				alert('Check!');
				$(".showDiv").hide();
			}else{
				 $.ajax({
						url:'de.do',
						type:'post',
						data:{
							data:$("input#data").val(),
							no:$("input[type='button']").attr("alt"),
							job:flag
						},
						dataType:'json',
						success:function(v){
							console.log(v);
							if(v.pass=='faile'){
								$("span#ck").html("<font color='red'>비밀번호확인</font>");
							}else if(v.pass=='success'){
								//$("span#ck").html("<font color='blue'>비밀번호성공</font>");
								if(v.job=='delete')
								document.location.href='delete.do?no='+$("input[type='button']").attr("alt");
							}
						},error:function(){
							alert('error');
						}
					}); 
				 }
			});
	});
	
	$(".showDiv").hide();
	
	$("a#mod").click(function(e) {
		flag=$(this).attr("id");
		$(".showDiv").show();
		$("input#Search").click(function() {
			if($("input#data").val().length==0){
				alert('Check!');
				$(".showDiv").hide();
			}else{
				//alert($("input[name='data']").val()+" "+$("input[type='button']").attr("alt"));
				 $.ajax({
					url:'mod.do',
					type:'post',
					data:{
						data:$("input#data").val(),
						no:$("input[type='button']").attr("alt"),
						job:flag
					},
					dataType:'json',
					success:function(v){
						console.log(v);
						if(v.pass=='faile'){
							$("span#ck").html("<font color='red'>비밀번호확인</font>");
						}else if(v.pass=='success'){
							//$("span#ck").html("<font color='blue'>비밀번호성공</font>");
							if(v.job=='mod')
							document.location.href='info.do?no='+$("input[type='button']").attr("alt")+'&job=modify';
						}
					},error:function(){
						alert('error');
					}
				});  
			}
		});
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
		<div class="list-group">
			<div class="list-group-item board-title">
				<div class="board-title">
					<span class="board-category"><img src="/web/upload/${info.filename }" width="50" height="50"> </span><a href="#">
						${info.subject } </a> 
				</div>
				<div class="board-meta"
					style="font-weight: 400; font-size: 1.2rem; color: #404040">
					<p>
						<i class="glyphicon glyphicon-user"></i> ${info.name } 님 
						<i class="glyphicon glyphicon-comment"></i> 0
						<i class="glyphicon glyphicon-ok"></i> ${info.hit } 
						<i class="glyphicon glyphicon-time"></i> ${info.regdate }
					    <i class="glyphicon glyphicon-thumbs-up" id="up"></i><b id="n_u" style="margin: auto;"> 0</b> <!--up  -->
						<i class="glyphicon glyphicon-thumbs-down" id="down"></i><b id="n_m"> 0</b>  <!--down  -->
					</p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="list-group-item">
				<span class="board-contents">${info.textarea } </span>
				<p style="text-align: center; margin-top: 30px">
					<button class="btn btn-success" id="btn-success">
						<i class="glyphicon glyphicon-thumbs-up"></i>공감
					</button>
					<button class="btn btn-warning" id="btn-warning">
						<i class="glyphicon glyphicon-thumbs-down"></i>비공감
					</button>
				</p>
			</div>
			
			<div class="bottom" style="margin: 10px;margin-top: 20px; text-align: right">
				<a href="#" class="btn btn-default btn-xs pull-left">목록으로</a> 
				<a href="#" class="btn btn-default btn-xs" id="mod">수정</a> 
				<a href="#" class="btn btn-default btn-xs" id="delete">삭제</a>
				<div class="showDiv">
					<input type="text" name="data" id="data">
					<input type="button" value="Search" id="Search" alt="${info.no }">
					<span id="ck"></span>
				</div> 
				<a href="bbsList.do" class="btn btn-default btn-xs">리스트</a>
				<a href="download.do?filename=${info.filename }" class="btn btn-default btn-xs">다운로드<img src="/web/upload/${info.filename }" width="50" height="50"></a> 
			</div>
			<div class="clear"></div>
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
