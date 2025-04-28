<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>添加菜谱</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>添加菜谱</h1>
    <%
        String message = request.getParameter("message");
        if (message != null) {
            out.println("<p>" + java.net.URLDecoder.decode(message, "UTF-8") + "</p>");
        }
    %>
    <form action="dishAdd" method="post">
        厨师: <input type="text" name="cook" size=36 placeholder="填写本人学号+姓名 例：2024010101张三" required><br/>
        菜名: <input type="text" name="dishname" size=36 required><br/>
        类别: <input type="radio" id="option1" name="type" value="早餐" checked> 早餐    
             <input type="radio" id="option2" name="type" value="中餐" > 中餐  
             <input type="radio" id="option3" name="type" value="晚餐" > 晚餐 <br>
        价格: <input type="text" name="price" size=36  value="" required><br>
        简介: 
        <textarea id="comment" name="description" rows="5" cols="30" required></textarea><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value=" 提 交 ">
    </form>
</body>
</html>    