<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String[] value = request.getParameterValues("product_num");
for(String val : product_num){
	out.print(val+"<br>");
}

%>
</body>
</html>