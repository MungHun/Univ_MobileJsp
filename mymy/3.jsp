<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>
<html>
<meta charset="utf-8">
<head>
	<title>JSP World</title>
	<meta name="viewport" content="width = device-width, initial-scale=1">

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0.1/jquery.mobile-1.0.1.min.css" />
<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
<script src="http://code.jquery.com/mobile/1.0.1/jquery.mobile-1.0.1.min.js"></script>
</head>
<body bgcolor="lightgrey">
<section data-role="page">
	<header data-role="header" data-theme="b">
		<h1> �׽�Ʈ</h1>
	</header>
	<section data-role="content">
		<ul data-role="listview" data-inset="true" data-theme="e">
			<li>
				<img src="../contents/video/image/aa.png" width="100%" height="100%">
				<h3>����</h3>
				<p> ���� </p>
				<p class="ui-li-aside">00:00:05</p>
				
			</li>
		</ul>
		
		<video src="../contents/video/sky.mp4" controls="controls" autoplay="autoplay" width="100%">
		</video>
	</section>

	<footer data-role="footer" data-theme="a" data-position="fixed">
		<h3>(��)JSP World ���� ������ �Ｚ�� 1234</h3>
	</footer>
</section>
</body>

</html>