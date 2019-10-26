<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//스크립트 릿(java코드 사용 가능)
Date day = new Date();
/* 
JSP페이지 : UI는 html + css + javascript 코드 +
Server code (JDBC) > java코드 <% 안에서 구현
>> 디자인코드 + 서버로직 코드 결합(좋은 방식은 아님)
>> servlet (Java로 Web을 구현하는 페이지) >> servlet로 서버 로직을 만들고 jsp로 UI를 만듬
>> UI > jsp
>> MVC(model(java) view(jsp) controller(servlet))
>> 잘하는것만 해^^ ... model2 기반의 MVC패턴 개발

>> jsp와 html 차이점
>> tomcat(WAS[web application server]) 사용하는 이유 : Web Service
>> 1. html로만 구성
>> 2. jsp로 구성 : WAS를 통해서 컴파일 >> 변환 >> 전달
>> 192.168.0.69:8090/WebJSP/Ex01_Basic.jsp 요청을 보내면
>> WAS(jsp) -> compile(class 생성) -> 결과(정적(디자인된 코드) + 동적(java 코드 변환)) -> Client 전달
>> 컴파일된 코드 확인하기
>> C:\SmartWeb\WebJSP\JSPLab\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\WebJSP\org\apache\jsp

JSP 구성요소
1. 선언부(JSP 페이지에 대한 기본 설정 세팅)
ex) pasge 지시자 >> 사용언어, 인코딩 방식, import자원
2. 스크립트 요소
2.1 스크립트 릿 : <% ... java code 구현...
2.2 표현식 : 출력하는 방법 / 출력대상 : client 웹 브라우저 <%=
2.3 선언부 (공통적인 자원(scope page) : 공통함수) <%!
 */
%>
<%!
//java code(공통함수)
public int add(int i, int j){
	return i+j;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String str = "hong";
%>
<%= str %>
<br>
<%= day %>
<%
int result = add(100,200);
%>
<br>
당신이 호출한 add 함수결과는 <%= result %>
</body>
</html>