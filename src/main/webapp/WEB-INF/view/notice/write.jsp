<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="proj21_funding.service.impl.CategoryServiceImpl"%>
<%@ page import="proj21_funding.service.CategoryService"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록하기 | 공지사항</title>
<link rel="stylesheet"
	href="/proj21_funding/css/servicecenter_write.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/home_css/main.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/notice_css/write.css">
	
<!-- SmartEditor2 라이브러리 -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/nse_files/js/HuskyEZCreator.js"
	charset="utf-8"></script>
</head>
<body>
	<section class="container">
		<header>
			<jsp:include page="/WEB-INF/view/home/header_top.jsp" />
		</header>
		<section class="sevicecenter_write">
			<h2>글 작성</h2>
			<form action="<%=request.getContextPath() %>/noticesuccess"
				method="post">
						<select name="categoryNo.categoryNo" class="category">
								<c:forEach var="bc" items="${bc }">
									<c:if test="${bc.categoryClass eq 'board' }">
										<option value="${bc.categoryNo }">${bc.categoryName }</option>
									</c:if>
								</c:forEach>
						</select>
						<input type="text" name="boardTitle" id="boardTitle" required="required" class="boardTitle" placeholder="제목을 입력해 주세요.">
			<textarea name="boardContent" id="boardContent" id="ir1" style="width:100%; height:400px;" placeholder="내용을 입력하세요."></textarea>

				<div class="commandCell">
					<input type="submit" value="등록" onclick="submitContents(this)" class="menubutton">&nbsp;&nbsp;
					<input type="reset" value="다시쓰기" class="menubutton">&nbsp;&nbsp;
					<a href="/notice/list"><button id="go_notice" class="menubutton">돌아가기</button></a>
				</div>
			</form>
		</section>
		<footer>
			<jsp:include page="/WEB-INF/view/home/footer_menu.jsp" />
			<jsp:include page="/WEB-INF/view/home/footer_info.jsp" />
		</footer>


	</section>
</body>
<script type="text/javascript">
	var contextpath = "${contextPath}";
	console.log(contextpath);
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "boardContent",
		sSkinURI : contextpath + "/nse_files/SmartEditor2Skin.html",
		fCreator : "createSEditor2"
	});


	function submitContents(elClickedObj) {
		oEditors.getById["boardContent"].exec("UPDATE_CONTENTS_FIELD", []);

		var categoryNo = $("#categoryNo > option:selected").val();
		var boardTitle = $("#boardTitle").val();
		var boardContent = document.getElementById("boardContent").value;;

		if (categoryNo == "") {
			alert("카테고리를 선택해주세요.");
			return;
		}
		
		if (boardTitle == null || boardTitle == "") {
			alert("제목을 입력해주세요.");
			$("#boardTitle").focus();
			return;
		}
		
		if(boardContent == "" || boardContent == null || boardContent == '&nbsp;' || 
				boardContent == '<br>' || boardContent == '<br/>' || boardContent == '<p>&nbsp;</p>'){
			alert("본문을 작성해주세요.");
			oEditors.getById["boardContent"].exec("FOCUS"); //포커싱
			return;
		} //이 부분은 스마트에디터 유효성 검사 부분이니 참고하시길 바랍니다.
		
		var result = confirm("발행 하시겠습니까?");
		
		if(result){
			alert("발행 완료!");
			$("#noticeWriteForm").submit();
		}else{
			return;
		}
		
		try {
			elClickedObj.form.submit();
		} catch (e) {
		}
	}
</script>
</html>