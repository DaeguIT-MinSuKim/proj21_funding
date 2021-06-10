<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안 읽은 쪽지 모아보기</title>
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
			<h2>안 읽은 쪽지 모아보기</h2>
			<fieldset>
				<table>
						<tr>						
							<th>발신자</th>						
							<th>내용</th>
							<th>발신일</th>						
						</tr>
						<c:forEach var="msg" items="${messages}">
							<tr>		
								<td>${msg.sendUser}</td>		
								<td>${msg.msgContent}</td>		
								<td></td>
								<td><tf:formatDateTime value="${msg.sendDate}" pattern="yyyy-MM-dd" /></td>																			
							</tr>
						</c:forEach>					
					</table>
			</fieldset>				
		</section>
		<footer>
			<jsp:include page="/WEB-INF/view/home/footer.jsp"/> 
		</footer>		
	</div>
</body>
</html>