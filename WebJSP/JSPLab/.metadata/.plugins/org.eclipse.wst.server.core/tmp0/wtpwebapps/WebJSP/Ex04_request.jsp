<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	/*
	request객체
	Tomcat이 가지고 있는 내장객체
	[JSP파일에서는 Default Tomcat 내장 객체를 선언없이 사용가능]
			
	request객체 (요청객체)
	1. 요청 페이지당 한개의 request 객체 생성
	2. 클라이언트 정보를 서버로 보내기(request)
	3. 클라이언트의 정보(IP, 브라우져 버전, 종류)
	
	request 내장 객체는 클라이언트에서 서버로 요청할때 생성되는
	HttpServletRequest 타입을 갖는 객체가 자동 생성되고 그 주소를 참조하는 request
	 */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request 객체 함수</title>
</head>
<body>
id : <%=id %><hr>
접속한 클라이언트 IP : <%=request.getRemoteAddr() %><br>
서버(요청한 방식 : 인코딩) : <%=request.getCharacterEncoding() %><br>
전송방식 : <%= request.getMethod() %><br>
포트 : <%= request.getServerPort() %><br>
context root(홈 디렉토리, 가상디렉토리, 웹 경로) : <%= request.getContextPath() %><br>
<%= request.getRequestURI() %>
</body>
</html>