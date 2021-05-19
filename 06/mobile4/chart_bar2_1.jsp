<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr" pageEncoding="utf-8" %>
<html>
<meta charset="utf-8">
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@ include file="../../include/jQuerymobile.inc" %>


<!-- jQuery/jQuery Mobile 라이브러리 사용-->
<!-- css 라이브러리 -->
<link class="include" rel="stylesheet" type="text/css" href="../../jqplot/jquery.jqplot.min.css" />
<!-- 자바 스크립트 기본 라이브러리 -->
<script type="text/javascript" src="../../jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="../../jqplot/examples/syntaxhighlighter/scripts/shCore.min.js"></script>
<script type="text/javascript" src="../../jqplot/examples/syntaxhighlighter/scripts/shBrushJScript.min.js"></script>
<script type="text/javascript" src="../../jqplot/examples/syntaxhighlighter/scripts/shBrushXml.min.js"></script>

<script type="text/javascript" src="../../jqplot/plugins/jqplot.categoryAxisRenderer.min.js"></script>

<script type="text/javascript" src="../../jqplot/plugins/jqplot.canvasTextRenderer.min.js"></script>
<script type="text/javascript" src="../../jqplot/plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>

<script type="text/javascript" src="../../jqplot/plugins/jqplot.pointLabels.min.js"></script>

<script type="text/javascript" src="../../jqplot/plugins/jqplot.barRenderer.min.js"></script>

<script type="text/javascript" src="../../jqplot/plugins/jqplot.pieRenderer.min.js"></script>
<script type="text/javascript" src="../../jqplot/plugins/jqplot.donutRenderer.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
    $(window).resize(function() {
        plot1.replot( {resetAxes: true } );
    });
	
	var x =['5','6','7','8'];
	
	var s1=[200,600,700,100];
	var s2=[460,-210,690,820];
	var s3=[-260,-440,320,200];


		var plot1 = $.jqplot('chart1',[s1,s2,s3],{
		seriesDefaults:{
			renderer:$.jqplot.BarRenderer,
			pointLabels:{
				show :true,
				location:'e'
			},
			rendererOptions:{
				barDirection:'horizontal',
				fillToZero: true}
			},
		series:[
			{label:'서울지역'},
			{label:'경기지역'},
			{label:'기타지역'}
		],

		legend:{
			show:true,
			placement: 'insideGrid'
		},
	
		axes:{
		
			xaxis:{
				label:'이익(천원)',
				labelRenderer:$.jqplot.CanvasAxisLabelRenderer

			},
			yaxis:{
				renderer:$.jqplot.CategoryAxisRenderer,
				
				ticks:x,
				label:'월'
				
			}
		}

		
	});
});

</script>

</head>
<body>

<!-- 첫 번째 페이지: 시작 -->
<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>월별 이익 실적</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 	
		<div id="chart1" style="width:100%;height:400px;"></div>
	</section> 
	<footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>	
</body>
</html>