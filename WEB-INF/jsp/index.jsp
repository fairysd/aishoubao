<%--
  User: donny
  Date: 12/13/15
  Time: 11:21
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
<c:forEach items="${wr.results}" var="weatherCity">

    城市：${weatherCity.currentCity}，PM25：${weatherCity.pm25}<br>
    <c:forEach items="${wr.results[0].weatherDatas}" var="weatherData">
        ${weatherData.date} <img src="${weatherData.dayPictureUrl}"> ${weatherData.temperature}<br>
    </c:forEach>
</c:forEach>
</body>
</html>
