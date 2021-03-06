<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="../../css/style2.css"/>
</head>
<body>

<section>

	<!-- 1. 헤더 -->
	<header class="header1">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section> 
	    <br>
		<form method="post" action="join.jsp">
			<fieldset>
			<legend>회원정보</legend>
			<ul class="tableForm">

					<li>
					<label for="ID2"> 회원ID:</label>
					<input type="text" id ="ID2" name="ID" size=10 maxlength=10 required="required"/>
					</li>
					<li>
					<label for="name2"> 성명:</label>
					<input type="text" id ="name2" name="name" size=10 maxlength=10 required="required"/>
					</li>
					<li>
					<label for="pswd2"> 비밀번호:</label>
					<input type="password" id ="pswd2" name="pswd" size=10 maxlength=10 required="required"/>
					</li>		
					<li>
					<label for="gender2_1"> 성별:</label>
					<input type="radio" id ="gender2_1" name="gender" value="남"/>
					<input type="radio" id ="gender2_2" name="gender" value="여"/>
					</li>	
					<li>
					<label for="birthday2"> 생일:</label>
					<input type="date" id ="birthday2" name="birthday"/>
					</li>						
					
			</ul>
			<p align="center">
			<input type="submit" value="등록">
			</p>
		</fieldset>
	</form>
	</section> 

	<!-- 3. 푸터 -->
	<footer class="footer1">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section> 

</body>
</html>