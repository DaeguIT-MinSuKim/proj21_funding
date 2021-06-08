<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		<section id="searchIdFormArea">
			<h1>아이디 찾기</h1>
			<form:form action="searchId-rs" modelAttribute="userSearch">
			<form:errors />
				<fieldset id="searchBtn">
					<p>
						<label> 회원성명 :
						<form:input path="userName" /> 
						<form:errors path="userName" />
						</label>
					</p>
					<p>
						<label> 회원H.P :
						<form:input path="userPhone" /> 
						<form:errors path="userPhone" />
						</label>
					</p>
				</fieldset>	
				<form:button id="search">아이디 찾기</form:button>
			</form:form>				
		</section>
		<footer>
			<jsp:include page="/WEB-INF/view/home/footer.jsp"/> 
		</footer>
	</div>
</body>
</html>