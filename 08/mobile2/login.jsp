<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" %>
<%@ page import = "java.util.regex.Matcher" %> 
<%@ page import = "java.util.*" %> 

<%
request.setCharacterEncoding("euc-kr");
// 네임을 받음
String ID   = request.getParameter("ID");
String pswd = request.getParameter("pswd");
%>
<%
// 세션 설정
session.setAttribute("ID",   ID);
session.setAttribute("name", "홍길동");

// 홈페이지로 이동
if(ID.indexOf(" ")>=0){
	response.sendRedirect("loginForm.jsp");
}
else{
response.sendRedirect("index.jsp");
}
%>

