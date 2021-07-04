<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main_center_section</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/home_css/main_section2.css">
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script> $(document).ready(function(){
	$('.title').slick({		 
		 prevArrow : $('.title-prev'),
		 nextArrow : $('.title-next'),
		 infinite: true,   
	      autoplay: true,
	      autoplaySpeed: 2000,
	      slidesToShow: 1,
	      slidesToScroll: 1
	});
	
	$("#MOVE_TOP_BTN").click(function() {
		$('html, body').animate({
			scrollTop : 0
		}, 400);
		return false;
	});
 
   });
</script>
</head>
<body>																					
				<div class="title">						
					<c:forEach items="${maxprj}" var="maxprj">
						<div id="title-post">
							<div id="title-image">
							<a href="<c:url value='/prjDetail/${maxprj.prjNo}'/>"><img src="images/project/project${maxprj.prjNo}.jpg"  id="projImg"></a>							
							</div>
							<div id="title-imageinfo">
									${maxprj.prjName}<br>
									${maxprj.totalCount}명 / ${maxprj.rate}% 
							</div>
						</div>																	
					</c:forEach>							
				</div>
				<div id="title-btn">
					<button type="button" class="title-prev"><</button>
					<button type="button" class="title-next">></button>					
				</div>

			<h2>신규 프로젝트</h2>																				
			<div class="listAll">	
				<c:forEach items="${newprj}" var="newprj">
					<div class="listcont">
						<div class="prj">
							<div class="prjThumb">
								<a href="<c:url value='/prjDetail/${newprj.prjNo}'/>"><img src="images/project/project${newprj.prjNo}.jpg"></a>
							</div>
							<dl class="prjName">
								<dt><a href="<c:url value='/prjDetail/${newprj.prjNo}'/>">${newprj.prjName }</a></dt>
								<dd>제작자: ${newprj.prjManager } | ${newprj.pCategoryName }</dd>
							</dl>
						</div>
					</div>			
				</c:forEach>										
			</div>			
			<h2>주목할 만한 프로젝트</h2>																				
			<div class="listAll">	
				<c:forEach items="${jumokPrjs}" var="jumokPrj">
					<div class="listcont">
						<div class="prj">
							<div class="prjThumb">
								<a href="<c:url value='/prjDetail/${jumokPrj.prjNo}'/>"><img src="images/project/project${jumokPrj.prjNo}.jpg"></a>
							</div>
							<dl class="prjName">
								<dt><a href="<c:url value='/prjDetail/${jumokPrj.prjNo}'/>">${jumokPrj.prjName }</a></dt>
								<dd>제작자: ${jumokPrj.prjManager } | ${jumokPrj.pCategoryName }</dd>
							</dl>
						</div>
					</div>			
				</c:forEach>										
			</div>			
			<h2>성공임박 프로젝트</h2>																				
			<div class="listAll">	
				<c:forEach items="${successPrjs}" var="successPrj">
					<div class="listcont">
						<div class="prj">
							<div class="prjThumb">
								<a href="<c:url value='/prjDetail/${successPrj.prjNo}'/>"><img src="images/project/project${successPrj.prjNo}.jpg"></a>
							</div>
							<dl class="prjName">
								<dt><a href="<c:url value='/prjDetail/${successPrj.prjNo}'/>">${successPrj.prjName }</a></dt>
								<dd>제작자: ${successPrj.prjManager } | ${successPrj.pCategoryName }</dd>
							</dl>
						</div>
					</div>			
				</c:forEach>										
			</div>			
			<h2>마감임박 프로젝트</h2>																				
			<div class="listAll">	
				<c:forEach items="${endPrjs}" var="endPrj">
					<div class="listcont">
						<div class="prj">
							<div class="prjThumb">
								<a href="<c:url value='/prjDetail/${endPrj.prjNo}'/>"><img src="images/project/project${endPrj.prjNo}.jpg"></a>
							</div>
							<dl class="prjName">
								<dt><a href="<c:url value='/prjDetail/${endPrj.prjNo}'/>">${endPrj.prjName }</a></dt>
								<dd>제작자: ${endPrj.prjManager } | ${endPrj.pCategoryName }</dd>
							</dl>
						</div>
					</div>			
				</c:forEach>										
			</div>		
			<button  id="MOVE_TOP_BTN">TOP</button>	
			
</body>
</html>