<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="utf-8" %>
<html>
<meta charset="utf-8">
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@ include file="../../include/jQuerymobile.inc" %>

<script type="text/javascript">
// 웹문서 로딩이 완료된 후에 실행할 함수 정의 
$(function() {
    // HTML DOM Tree 구조에 따라 <ul>, <li>, <a> 엘리먼트가 클릭되면 실행될 함수 정의
	$('ul li a').click(function() {
	    // 클릭된 개체(this) 내의 각 엘리먼트를 찾아(find), 그 속성(attr) 또는 데이터(text) 인식
		var imageSrc   = $(this).find('img').attr('src');
		var imageTitle = $(this).find('h3').text();	
		var imageDesc  = $(this).find('p').text();


		// id를 이용한 개체 인식 및 값 할당
		// 이미지 소스 변경
		$("#p2_image").attr('src', imageSrc);	
		// 개체에 HTML 문자로 쓰기
		$("#p2_title").html(imageTitle);	
		$("#p2_desc").html(imageDesc);	
	});
});
</script>

</head>
<body>

<!-- 첫 번째 페이지: 시작 -->
<section data-role="page" id="page1">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>사진 목록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 
	
	    <!-- 목록 -->
		<ul data-role="listview" data-inset="true" data-theme="e"> 

			<!-- 목록 아이템 1 -->
			<li>
				<a href="#page2" data-rel="dialog" data-transition="pop">
					<!-- 이미지: 소스, 제목, 설명 -->
					<img src="../../contents/image/apple.jpg" width=100% height=100%>
					<h3>사과</h3>
					<p>애플</p>
				</a>
			</li>				
			
			<!-- 목록 아이템 2 -->
			<li>
				<a href="#page2" data-rel="dialog" data-transition="pop">
					<!-- 이미지: 소스, 제목, 설명 -->
					<img src="../../contents/image/img.jpg" width=100% height=100%>
					<h3>마스크</h3>
					<p>라이언</p>
				</a>
			</li>				

			<!-- 목록 아이템 3 -->
			<li>
				<a href="#page2" data-rel="dialog" data-transition="pop">
					<!-- 이미지: 소스, 제목, 설명 -->
					<img src="../../contents/image/aa.png" width=100% height=100%>
					<h3>후드티</h3>
					<p>라이언</p>
				</a>
			</li>				
			
		</ul>	

	</section> 

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
<!-- 첫 번째 페이지: 시작 -->

<!-- 두 번쩨 페이지: 시작 -->
<section data-role="page" id="page2">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 이미지 제목 -->
		<h1 id="p2_title"></h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 
        <!-- 이미지 소스 --> 
		<img id="p2_image" width="100%">
		
		<!-- 이미지 설명 -->
		<p id="p2_desc"></p> 

	</section> 

</section> 
<!-- 두 번째 페이지: 끝 -->

</body>
</html>