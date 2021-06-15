<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>프로젝트 수정</title>
				<link rel="stylesheet" href=" <%=request.getContextPath() %>/css/home_css/main.css">
				<link rel="stylesheet" href=" <%=request.getContextPath() %>/css/upload_css/update_prjlist.css">
								<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
								<!-- <script type="text/javascript">
								$(function setSelectBox(){
									var schField = $("#category option:selected").val();
									console.log("${project[0].prjNo.pCategoryNo}")
									
									if(schField == ${project[0].prjNo.pCategoryNo})
										$("#category").val("${project[0].prjNo.pCategoryNo}").prop("selected", true);									
								});
							
								
								</script> -->
</head>
<body>
			<%-- ${authInfo.userNo } --%>
		<%-- 	${project }	  --%>
			 
			<%--  ${project[0].prjNo.prjName} --%>
			<%--  ${project[0].prjNo} --%>
			${project[0].prjNo.pCategoryNo}
			
			<h2>프로젝트 수정</h2>	
			<section id = "upload_prjcontent">					
			<table>			
			<tbody>									
			<tr>
					<td class = "td_left">
							<label for = "prjNo">프로젝트 번호</label>
					</td>
					<td class = "td_right" >
							<input type="text" id = "prjNo" name = "prjNo" value="${prjNo }" size = 40 required="required" readonly="readonly" />
					</td>
			</tr>
			<tr>
			<!-- 월요일에 열기 -->
				<td class = "td_left">
							<label for = "userName" >작성자</label>
					</td>
					<td class = "td_right">
							  <input type="text" id = "userName" name = "userName"  value ="${ project[0].prjNo.userNo.userName} "  size = 40   required="required"/> 
					</td>
					<td class = "td_right">
							  <input type="hidden" id = "userNo" name = "userNo.userNo"  value ="${authInfo.userNo }"  size = 40   required="required"  readonly="readonly"/> 
					</td>
			</tr>
			<tr>
					<td class="td_left"><label for="pCategoryNo">카테고리</label></td>
					<td class="td_right">
						<select id="category" name="pCategoryNo" onchange="SetSelectBox();" >						
								<option value="0">----선택하세요-----</option>
								<option value="1">게임</option>
								<option value="2">공연</option>
								<option value="3">패션</option>
								<option value="4">식음료</option>
								<option value="5">도서</option>
								<option value="6">IT</option>
						</select>
					</td>
			</tr>
			<tr>
					<td class = "td_left">
							<label for = "prjName">프로젝트 명</label>
					</td>
					<td class = "td_right"	>
							  <input type="text" id = "prjName" name = "prjName" size = 40  value = "${project[0].prjNo.prjName}"  required="required"/>
					</td>
			</tr>
			<tr>
					<td class = "td_left">
							<label for = "prjContent">프로젝트 소개</label>
					</td>
					<td class = "td_right">
							 <textarea id = "prjContent" name = "prjContent"   rows="15" cols="42" required="required"> ${project[0].prjNo.prjContent}</textarea>
					</td>
			</tr>
			<tr>
					<td class = "td_left">
							<label for = "prjGoal">목표금액</label>
					</td>
					<td class = "td_right">
							 <input type="text" id = "prjGoal" name = "prjGoal" value =  "${project[0].prjNo.prjGoal}" size = 40 required="required"></input>
					</td>
			</tr>
			<tr>
					<td class = "td_left">
							<label for = "uploadFile">프로젝트 파일첨부</label>
					</td>
					<td class = "td_right">
							<input type="file" name = "uploadfile" placeholder="파일 선택">
					</td>
			</tr> 
			<tr>
					<td class = "td_left">
							<label for = "endDate">마감일</label>
					</td>
					<td class = "td_right">
							 <input type="date" id = "endDate" name = "endDate" value = "${project[0].prjNo.endDate}" required="required" ></input>
					</td>
			</tr>
			<tr>
					<td class = "td_left">
							<label for = "payDate">결제일</label>
					</td>
					<td class = "td_right">
							 <input type="date" id = "payDate" name = "payDate" value = "${project[0].prjNo.payDate}" required="required"></input>
					</td>
			</tr>			
			</tbody>	
			</table>					
			</section>		

</body>
</html>