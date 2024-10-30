<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>간단한 JSP 웹페이지</title>
    <style>
        body {
            font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
            margin: 40px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
        }
        h1 {
            color: #333;
        }
        .content {
            background-color: #f5f5f5;
            padding: 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>환영합니다!</h1>
        <div class="content">
            <p>이것은 JSP로 만든 간단한 웹페이지입니다.</p>
            <p>현재 시간: <%= new Date() %></p>
            <p>한글 테스트: 가나다라마바사</p>
        </div>
    </div>
</body>
</html>
