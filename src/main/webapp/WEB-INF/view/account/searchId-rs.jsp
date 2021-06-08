<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/home_css/header.css">
</head>
<body>
	<div class="container">
		<header>		   
			<jsp:include page="/WEB-INF/view/home/header_top.jsp"/> 
		</header>	
		<fieldset id="searchId">			
				<section id="searchIdFormArea">
					회원계정은 ${userSearch.userId}입니다.
				</section>
				<p><a href ="<c:url value='/login'/>" >로그인화면으로 가기</a></p>
				<p><a href="<c:url value='/account/searchPw'/>">비밀번호 찾기</a>			
		</fieldset>
		<footer>
			<jsp:include page="/WEB-INF/view/home/footer.jsp"/> 
		</footer>
	</div>
</body>
</html>