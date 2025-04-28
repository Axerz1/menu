<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>菜谱查询</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>菜谱查询</h1>
    <form action="dishQuery" method="post">
        类别: <input type="radio" id="option1" name="type" value="早餐" checked> 早餐    
             <input type="radio" id="option2" name="type" value="中餐" > 中餐  
             <input type="radio" id="option3" name="type" value="晚餐" > 晚餐 
         &nbsp; <input type="submit"  value=" 提 交 ">&nbsp;  <a href='dish_add.jsp'>添加菜谱</a>
    </form>  
    <c:if test="${!empty dishes }">
        <table class="beautiful-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>厨师</th>
                    <th>菜谱名称</th>
                    <th>菜谱类别</th>
                    <th>价格</th>
                    <th>描述</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${dishes}" var="d" varStatus="status">
                    <tr>
                        <td>${d.id}</td>
                        <td>${d.cook}</td>
                        <td>${d.dishname}</td>
                        <td>${d.type}</td>
                        <td>${d.price}</td>
                        <td>${d.description}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>    