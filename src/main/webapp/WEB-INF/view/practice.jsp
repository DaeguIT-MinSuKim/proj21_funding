<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
  <head>
  <style>
.hidden {
    display: none;
}
  </style>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  </head>
  <body>

 
   <script>
   $(function(){ 
   $('.commentsToggle').click(function(){
       $(this).siblings(".comments").toggleClass('hidden');
   });
});
   
   $(function(){
	   $('.optionPlusMinus').on("click", function(){
		 
   		   $('.optionPlusMinus').siblings(".addOption").toggleClass('hidden');
   		  console.log(5555)
	   })
      });

   $(function(){
		var sCont = "";
		
		sCont += "<tr>";
		sCont += "<td class = 'td_left'><label for = 'addOptName'>옵션이름</label></td>";
		sCont += "<td class = 'td_right'> <input type='text' id = 'addOptName' class = 'addtext' name = 'addOptName'  size = 17/></td>";
		sCont += "</tr>";
		sCont += "	<tr>";
		sCont += "	<td class = 'td_left'><label for = 'addOptPrice'>옵션금액</label></td>";
		sCont += "	<td class = 'td_right'><input type='text' id = 'addOptPrice'   class = 'addtext' name = 'addOptPrice'  size = 17 /></td>";
		sCont += "</tr>";
		sCont += "	<tr>";
		sCont += "	<td class = 'td_left'><label for = 'addOptContent'>옵션내용</label></td>	";
		sCont += "	<td class = 'td_right'> <textarea id = 'textContent'  class = 'addtext' name = 'addOptContent'	rows='8' cols='38' ></textarea></td>";
		sCont += "</tr>";		
   });
   
   
   
  </script>
   <body>

  </body>
</html>
	 /*   $('.optionPlusMinus').parent().parent().parent().parent().next().toggleClass('hidden');		 */   
		   var required =   $(".addtext").prop('required',false);
		   		   var attr =  $(".addtext").attr('required', true);
<!--    <div>
   		<button class = "optionPlusMinus" >옵션추가/삭제</button>
   </div>
   <section class = "addOption hidden">
  <table>
						<tbody >
						 <tr>
									<td class = "td_left">
											<label for = "addOptName">옵션이름</label>
									</td>
									<td class = "td_right">
											 <input type="text" id = "addOptName" name = "addOptName"  size = 17 required="required" ></input>
									</td>
							</tr>
							<tr>
									<td class = "td_left">
											<label for = "addOptPrice">옵션금액</label>
									</td>
									<td class = "td_right">
											 <input type="text" id = "addOptPrice" name = "addOptPrice"  size = 17 required="required" ></input>
									</td>
							</tr>
							<tr>
									<td class = "td_left">
											<label for = "addOptContent">옵션내용</label>
									</td>						
									<td class = "td_right">
											 <textarea id = "textContent" name = "addOptContent"	rows="8" cols="38" required="required" ></textarea>
									</td>
							</tr>
						</tbody>			
					</table>	   
   	</section>
<div class="item">
<div class="entry">
Lorem ipsum
</div>
<a href="#" class="commentsToggle">Show/hide comments</a>
<div class="comments hidden">
This comments div I want show/hide
</div>
<div class = "addOption hidden">
					<p>dddddddddd</p>
			</div>		
</div>

<div class="item">
<div class="entry">
Lorem ipsum
</div>
<a href="#" class="commentsToggle">Show/hide comments</a>
<div class="comments hidden">
This comments div I want show/hide
</div>
</div>

<div class="item">
<div class="entry">
Lorem ipsum
</div>
<a href="#" class="commentsToggle">Show/hide comments</a>
<div class="comments hidden">
This comments div I want show/hide
</div>
</div>

<div class="item">
<div class="entry">
Lorem ipsum
</div>
<a href="#" class="commentsToggle">Show/hide comments</a>
<div class="comments hidden">
This comments div I want show/hide
</div>
</div>
  -->

 <!-- <tr>
									<td class = "td_left"><label for = "addOptName">옵션이름</label>	</td>
									<td class = "td_right"> <input type="text" id = "addOptName"  class = "addtext" name = "addOptName"  size = 17 /></td>
							</tr>
							<tr>
									<td class = "td_left"><label for = "addOptPrice">옵션금액</label></td>
									<td class = "td_right"><input type="text" id = "addOptPrice"   class = "addtext" name = "addOptPrice"  size = 17 /></td>
							</tr>
							<tr>
									<td class = "td_left"><label for = "addOptContent">옵션내용</label></td>						
									<td class = "td_right"> <textarea id = "textContent"  class = "addtext" name = "addOptContent"	rows="8" cols="38" ></textarea></td>
							</tr>
 -->