<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>

<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../css/style2.css" />
</head>
<body>

<!-- 세션정보 추출 -->
<%
String ID   = (String)session.getAttribute("ID");
String name = (String)session.getAttribute("name");
session.setMaxInactiveInterval(30*60);
%>

<section>

	<!-- 1. 헤더 -->
	<header class="header1">
		<h1>JSP 내장객체</h1>
		
		<!-- 홈 -->
		<a href="index.jsp"><font color="yellow">Home</font></a>&nbsp&nbsp  
        
		<%
		// 세션 x 
		if (ID == null) {
		%>	
			<a href="loginForm.jsp"><font color="yellow">Login</font></a>	
		<%
		// 세션 o
		} else { 
		%>
			<a href="logout.jsp"><font color="yellow"><%= ID %>님, Logout</font></a>	
		<%
		} // if
		%>	
        </font>		
	</header> 

	<!-- 2. 본문 -->
	<section> 
	    <br>
		<br>
		<%

		if (ID == null) {
		%>	
            세션 설정 x
		<%

		} else { 
		%>
            세션이 설정
		<%
		} // if
		%>				
		<br>
		<br>
		<br>
	</section> 

	<!-- 3. 푸터 -->
	<footer class="footer1">
	    <center>
        <%@ include file="../../include/businessInfo.inc" %>
	    </center>
	</footer>

</section> 

</body>
</html>