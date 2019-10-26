<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//서버쪽 객체 사용...
	//아파치 톰캣 : 웹 전용 객체를 제공(request, response)
	//new없이 바로 사용가능한 객체 : 내장 객체
	
	//클라이언트가 서버에 전달한 데이터 받기
	//Ex02_resister.jsp?userid=hong&pwd=1111&hobby=baseball&hobby=soccer
	
	String uid = request.getParameter("userid"); //단일값 받기
	String pwd = request.getParameter("pwd");
	//String hobby = request.getParameter("hobby");
	String[] hobbys = request.getParameterValues("hobby");
	//jdbc 코드 가지고 DB연결하고 insert
	
	//**********한글처리**********
	/* 
	전송방식 : Get(Tomcat9.0부터 한글 문제 없어요)
	Tomcat9버전 이하
	1. request.setCharacterEncoding("UTF-8");
	2. server.xml 63라인
    <Connector URIEncoding="UTF-8" connectionTimeout="20000" port="8090" protocol="HTTP/1.1" redirectPort="8443"/>
	
	전송방식 : POST
	1. 반드시 페이지 상단에(데이터 받기전에) : request.setCharacterEncoding("UTF-8");
	 */
	 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
입력값 : <%=uid%><br>
입력값 : <%=pwd%><br>
당신의 취미는 :<br>
<%
String data = "";
for(String str : hobbys){
%>
	hobby:<%= str %><br>
	<%
}
	%>
</body>
</html>