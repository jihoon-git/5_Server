<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>연습</title>
   
</head>
<body>
    <%
	    String userId = request.getParameter("userId");
	    String[] movie = request.getParameterValues("movie");
    %>

    <ul>
        <li>아이디 : <%= userId%></li>
        <li style='color:blue;'>좋아하는 장르 : <br>
        
	        <% for(String m : movie) {%>
	            <%= m %>
	        <%}%>
        </li>
    </ul>
</body>
</html>