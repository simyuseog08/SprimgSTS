<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>	

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>������</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
 <link href="./css/contents.css" rel="stylesheet" type="text/css" /> 
<link href="./css/default.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>


<style>
.bbsList tbody td {
    padding: 20px;
    _padding: 7px 0 4px;
    border-left: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
    text-align: center;
}

#container {
  min-width: 310px;
  max-width: 800px;
  height: 400px;
  margin: 0 auto
}

</style>
<script >
$(document).ready(function(){
	$("a#save").click(function() {
		if($("input[name='productName']").val().length==0||$("input[name='productOrigin']").val().length==0||$("input[name='productPrice']").val().length==0||$("input[name='productCategory']").val()=='empty'){
			
			$("input[name='productName']").val('');
			$("input[name='productOrigin']").val('');
			$("input[name='productPrice']").val('');
			$("select[name='productCategory']").prop("selectIndex",0);
			$("input[name='productName']").focus();
			return false;
		}else{
			
		$("form[name='frm_add']").submit();
		}
	});
	
	$("div#mod").hide();
	$("a.mod").click(function() {
	$.ajax({
			url:'updateModify.do',
			dataType:'json',
			type:'POST',
			data:{no:this.name}, //a �±׿� �ִ� name �� ������.
			success:function(v){
				console.log(v);
				$("div#mod").show();
				$("div#add").hide();
				$(v).each(function() {/* alignM */
					$("input[name='no']").val(this.no);
					$("input[name='productName']").val(this.productName);
					$("input[name='productOrigin']").val(this.productOrigin);
					$("input[name='productPrice']").val(this.productPrice);
					$("select[name='productCategory']").val(this.productCategory).attr("selected","selected");
					$("td.alignM2").html("<img src='/web/cartUp/"+this.fileName+"' width=50 height=50 >");
				});
			},error:function(){
				alert('error');
				
			}
		});
		
		
	});	

	
	$("a#modfi").click(function() {
		$("form[name='frm2']").submit();
	});
	
	$("a#add_btn").click(function() {
		$("div#add").show();
		$("div#mod").hide();
		
		$("input[name='productName']").val('');
		$("input[name='productOrigin']").val('');
		$("input[name='productPrice']").val('');
		$("select[name='productCategory']").prop("selectIndex",0);
		$("input[name='productName']").focus();
	});
	
	
	$("a#serach").click(function() {
		$("form[name='query_select']").submit();
	});
	
	
	
	
	
});

$(function() {
	$("#container").hide();
	$("a#chart").click(function() {
		$.ajax({
			url:'ajaxChart.do',
			dataType:'text',
			type:'POST',
			data:{id:'${id}'},
			success:function(v){
				$("#container").show();
				eval(v);
			},error:function(e){
				alert('error');
			}
			
		});
	});
});
</script>

</head>
<body> 

	<div id="wrap">
		<!-- header -->
		<%-- <jsp:include page="/include/topGnb.jsp"></jsp:include> --%>
		 <div id="container"></div>
		<!--// header -->
		
		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">   
		            <div class="con_title">
		               <p>��ǰ���/����/����</p>   
		            </div>
				
			
			
				<div class="contents">
					<div class="btnSet clfix mgb15">
						<span class="fr"> <span class="button"><a href="#">���</a></span>
						</span>
					</div>
					<form action="productListSearch.do" name="query_select" id="query_select" method="post">
					<table class="bbsWrite mgb35">
						<caption></caption>
						<colgroup>
							<col width="95" />
							<col width="395" />
							<col width="95" />
							<col />
						</colgroup>
						<tbody>
							<tr>
								<th>��ü��</th>
								<td><select style="width: 200px;" name="query" id="query">
										<option selected="selected">�����ϼ���</option>
										<option value="PRODUCTNAME">��ǰ��</option>
										<option value="PRODUCTORIGIN">������</option>
										<option value="PRODUCTCATEGORY">ī�װ�</option>
								</select></td>
								<th>��ǰ��</th>
								<td><input type="text" name="data" style="border:1px solid #ddd; height:20px;" class="inputText" size="30" />
									<span class="button"><a href="#" id="serach">�˻�</a></span>
									<span class="button"><a href="#" id="chart">��Ʈ</a></span>
									
									</td>
							</tr>
						</tbody>
					</table>
					</form>
					<div class="clfix">
						<div class="tbWrapLt">
						
							<table class="bbsList">
								<colgroup>
									<col width="30" />
									<col width="100" />
									<col width="100" />
									<col width="100" />
									<col width="100" />
								</colgroup>
								<thead>								
								
									<tr>
										<th scope="col">NO.</th>
										<th scope="col">��ǰ��</th>
										<th scope="col">��</th>
										<th scope="col">����</th>
										<th scope="col">����</th>
										
									</tr>
								</thead>

								<tbody>
								 <c:forEach var="i" items="${pList }" varStatus="cnt">
									<tr>
										<td>${cnt.count }</td>
										<td>${i.productName } </td>
										<td><img src="/web/cartUp/${i.fileName }" width="50" height="50"/></td>
										<td>${i.productPrice } </td>										
										<td>
										<span class="buttonFuc"><a href="#" id="add_btn">�߰�</a></span>
										<span class="buttonFuc"><a href="#" class="mod" name="${i.no }">����</a></span>
										<span class="buttonFuc"><a href="deleteProduct.do?no=${i.no }">����</a></span>
										</td>
									</tr>	
										</c:forEach>
												

								</tbody>
							</table>
							
						</div>

						<div class="tbWrapRt" id="add">
							<ul class="tabA clfix mgb15">
								<li class="over"><a href="#info1">01. ��ǰ���</a></li>
							</ul>
 		              	<form action="productInsert.do" name="frm_add" method="post"  enctype="multipart/form-data">
							<div id="info1" class="tbWrapCnt" style="display: block;">
								<table class="bbsWrite mgb10">
									<caption></caption>
									<colgroup>
										<col width="95" />
										<col />
									</colgroup>
									<tbody>
										<tr>
											<th>��ǰ��</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productName" class="inputText"
												size="50" /></td>
										</tr>
										<tr>
											<th>������</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productOrigin" class="inputText"
												size="50" /></td>
										</tr>
										<tr>
											<th>��ǰ����</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productPrice" class="inputText"
												size="50" />
												<input type="hidden" name="id"  value="${id}"/>
												</td>
										</tr>
										<tr>
											<th>ī�װ�</th>
											<td>
											<select style="width: 200px;" name="productCategory" id="productCategory">
												<option value="empty" selected="selected">�����ϼ���</option>
												<option value="cloth">�Ƿ�/��ȭ</option>
												<option value="electronic">������ǰ</option>
												<option value="furniture">����</option>
												<option value="cosmetic">ȭ��ǰ/���</option>
												<option value="foods">��ǰ/�ַ�</option>
												<option value="car">������ǰ</option>													
											</select>
											</td>
										</tr>
										<tr>
											<th>��ǰ �̹���</th>
											<td class="alignM"><input type="file" name="file"
												class="inputText" size="10" /></td>
										</tr>
									</tbody>
								</table>
							</div>
							</form>
						<p class="agr">
							<span class="button"><a href="#" id="save">����</a></span>
						</p>
						
						</div>
						<!--  -->
						
								<div class="tbWrapRt" id="mod">
							<ul class="tabA clfix mgb15">
								<li class="over"><a href="#info1">02. ��ǰ����</a></li>
							</ul>
 		              	<form action="update.do" name="frm2" method="post"  enctype="multipart/form-data">
							<div id="info1" class="tbWrapCnt" style="display: block;">
								<table class="bbsWrite mgb10">
									<caption></caption>
									<colgroup>
										<col width="95" />
										<col />
										
									</colgroup>
									<tbody id="tb">
										<tr>
											<th>��ǰ��</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productName" class="inputText"
												size="50" /></td>
										</tr>
										<tr>
											<th>������</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productOrigin" class="inputText"
												size="50" /></td>
										</tr>
										<tr>
											<th>��ǰ����</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productPrice" class="inputText"
												size="50" />
												<input type="hidden" name="id"  value="${id}"/>
												</td>
										</tr>
										<tr>
											<th>ī�װ�</th>
											<td>
											<select style="width: 200px;" name="productCategory" id="productCategory">
												<option value="empty" selected="selected">�����ϼ���</option>
												<option value="cloth">�Ƿ�/��ȭ</option>
												<option value="electronic">������ǰ</option>
												<option value="furniture">����</option>
												<option value="cosmetic">ȭ��ǰ/���</option>
												<option value="foods">��ǰ/�ַ�</option>
												<option value="car">������ǰ</option>													
											</select>
											<input type="hidden" id="no_text" name="no"/>
											</td>
										</tr>
										<tr>
											<th>��ǰ �̹���</th>
											<td class="alignM2"></td>
										</tr>
									</tbody>
								</table>
							</div>
							</form>
							<p class="agr">
							<span class="button"><a href="#" id="modfi">����</a></span>
						</p>
						</div>
			
					</div>
				</div>
			</div>
		</div>
	</div>
	
  <!--Footer-->
     <jsp:include page="/include/footer.jsp"></jsp:include>
   <!--END Footer-->	
   	</div>
	
</body>
</html>