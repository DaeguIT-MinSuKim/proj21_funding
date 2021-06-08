<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메세지 작성하기</title>
</head>
<body>
	<div class="container">
		<header>		   
			<jsp:include page="/WEB-INF/view/home/header_top.jsp"/> 
		</header>
		<section id="messageFormArea">		
			<fieldset>
				<jsp:include page="/WEB-INF/view/message/message-menu.jsp"/>
			</fieldset>
			<h2>메세지 보내기</h2>		
			<form:form modelAttribute="message">	
			<form:errors />
				<fieldset>
					<p>
						<label> 보내는사람 :
						<form:input path="sendUser" readonly="true" value="${authInfo.userId}" /> 
						<form:errors path="sendUser" />
						</label>
					</p>
					<p>
						<label> 받는사람 :
						<form:input path="receiveUser" /> 
						<form:errors path="receiveUser" />
						</label>
					</p>
					<p>						
						<form:textarea path="msgContent" /> 
						<form:errors path="msgContent" />						
					</p>
					<form:button id="submit">보내기</form:button>
				</fieldset>	
			</form:form>		
		</section>
		<footer>
			<jsp:include page="/WEB-INF/view/home/footer.jsp"/> 
		</footer>		
	</div>
</body>
</html>