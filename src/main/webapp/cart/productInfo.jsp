<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="../css/contents.css" rel="stylesheet" type="text/css" /> -->
<link href="../css/default.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("input[name='injection2']").click(function(){
			   //$("form").submit();
			  $("form[id='frm"+this.id+"']").submit();
			 
		});
		
		
		
		$("span[lang='sp']").click(function(){
			//alert(this.id);
			$("div#dv"+this.id).toggle(function(){
				
			});
		});
		$("img").click(function(){
			$("input[name='fileName']").val( $(this).attr("src"));
		});
		$("img").dblclick(function(){
			$("input[lang='fileName']").val( $(this).attr("src"));
		});
		$("input#inject1").click(function(){
			
			 if($("textarea#tx1").val().length==0){
				alert('Data Check!');
				$("textarea#tx1").focus();
			 }
			 if($("textarea#tx1").val().length>300){
				 $("textarea#tx1").val($("textarea#tx1").val().substring(0,300));
			 }
			 $("form[name='newFrm']").submit();
		});
		$("textarea#tx1").keyup(function(){
			if($(this).val().length>300){	
				$("b").html("<font color='red' size='5'>"+(300-$(this).val().length)+"</font>");
			}else{
			$("b").html("<font color='blue'>"+($(this).val().length)+"</font>");
			}
		});		
	});	

</script>
</head>
<body>
	<div id="wrap">
		<!-- header -->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">   
		            <div class="con_title">
		               <p>게시판 상세보기</p>   
		            </div>
				<div class="contents">
					<div class="btnSet clfix mgb15">
						<span class="fr">
						
                            <span class="button"><a href="#">물품구매</a></span>
							<span class="button"> <a href="cartAdd.do?no=${info.no}">장바구니</a></span>						
							<span class="button"><a href="clientList.do">목록</a></span>
						</span>
					</div>
					<table class="bbsList">
						<colgroup>
							<col width="400" />
                            <col width="100" />
                            <col width="" />
						</colgroup>
						<tr>
							<th scope="col" class="fir">이미지</th>
                             <th scope="col">글번호</th>
                             <td>1</td>
                        </tr>
                        <tr>
                        
                          <td class="fir" rowspan="7"><img src="/web/cartUp/${info.fileName}" width="400" height="300"/></td>
                          <th scope="col">아이디</th>
                          <td> ${info.id}</td>
                        </tr>
                        <tr>
                          <th scope="col">상품이름</th>
                          <td>  ${info.productName}</td>
                        </tr>
                        <tr>
                          <th scope="col">가격</th>
                          <td>  ${info.productPrice}</td>
                        </tr>
                        <tr>
                          <th scope="col">원산지</th>
                          <td>  ${info.productOrigin}</td>
                        </tr>
                        <tr>
                          <th scope="col">카테고리</th>
                          <td>  ${info.productCategory}</td>
                        </tr>
                        <tr>
                          <th scope="col">등록일</th>
                          <td>  ${info.regdate}</td>
                        </tr>                        
					</table>
					
				</div>
			</div>
		</div>
		</div>	
		<div class="board_form">
		                    
                          <span style="position: absolute;left:300px;"><font size="3" color="blue">글자수<b>0</b>/300</font>                          
                          </span>
                          <br></br>
                          <span style="position: absolute;left:300px;">
                          <img src="happy.png" width="50" height="50" />                             
                          <img src="sad.png" width="50" height="50" />
                          <img src="sceptic.png" width="50" height="50" />
                          </span><br></br><br></br>
                          <form action="/web/reviewInsert.do" method="post" name="newFrm">                          
                          <div class="board_writer03">
                             <ul>
                                
                                <li><textarea rows="" cols=""  id="tx1" name="contents"></textarea>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id="inject1" value="등록"/>
                                    <input  type="hidden" name="id" value="YELLOW"/>
                                    <input  type="hidden" name="pkno" value="${info.no}"/>
                                    <input  type="hidden" name="fileName"/>                             
                                    <input  type="hidden" name="job" value="new"/>                             
                                    
                                </li>
                             </ul>
                          </div>
                          </form>
                           <c:forEach var="i" items="${review}">
                             
                           <div class="contents">
                             <div class="letter_top">
                                
                                <ul>
                                <li>
                                <c:if test="${i.rNo ne i.ref}">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                </c:if>
                                <img src='${i.fileName}' width="50" height="50"></img></li>                                  
                                <li>
                                <c:if test="${i.rNo ne i.ref}">
                              &nbsp;&nbsp;&nbsp;&nbsp;
                             </c:if>
                                <strong>작성자</strong>${i.id} </li>                                
                               <li><span>|</span></li>
                               <li class="letter_cl">
                               <c:if test="${i.rNo ne i.ref}">
                              &nbsp;&nbsp;&nbsp;&nbsp;
                             </c:if>
                               ${i.contents}</li>
                               
                               
                               <!-- <img alt="" src="../img/re.jpg" style="width:10px;height:10px;">&nbsp;답글</li> -->
                           </ul>
                           <br></br>
                           
                           <!-- 내가 작성한 부분만 수정 삭제 가능 -->
                            <ul class="letter_r">
                               <li><span>수정 </span></li>
                               <li><span>|</span></li>
                               <li><span>삭제</span></li>
                               <li><span>|</span></li>
                               <li><span lang="sp" id="${i.rNo}">답글</span></li>
                               
                           </ul> 
                        </div>
                     <div class="letter_bottom">
                                <ul>
                                   <li></li>
                                </ul>
                          </div>
                          </div>            
                          
                          <div id="dv${i.rNo}" class="board_writer03" style="display: none;">
                             <ul>
                                <li>
                                    <form id="frm${i.rNo }" action="/web/reviewInsert.do" method="post">
                                      <textarea rows="" cols="" name="contents" ></textarea>&nbsp;&nbsp;<input type="button" id="${i.rNo}" name="injection2"  value="등록" />
                                      <input  type="hidden" name="pnum" value="${i.rNo}"/>
                                      <input  type="hidden" name="ref" value="${i.ref}"/>
                                      <input  type="hidden"  name="id" value="YELLOW"/>
                                      <input  type="hidden"  name="pkno" value="${info.no}"/>
                                      <input  type="hidden"  name="job" value="reply"/>                                      
                                      <input  lang="fileName" type="hidden"  name="fileName" />                                      
                                    </form>
                                
                                </li>
                             </ul>
                          </div>
                               </c:forEach>
                       </div>
      </div>
		
	<!--Footer-->
      <jsp:include page="../include/footer.jsp"></jsp:include>
   <!--END Footer-->	
	</div>
</body>

</html>






