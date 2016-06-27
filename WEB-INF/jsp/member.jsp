<%--
  User: donny
  Date: 12/20/15
  Time: 14:41
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
    <link rel="stylesheet" href="${baseurl}res/css/member.min.css"/>
    <title>订单中心</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport"/>
</head>
<body onunload="">
<header class="default" id="header">
    <a class="home step_detail" href="${baseurl}"></a>

    <h1 class="title">订单中心 (${member})</h1>
    <a href="${baseurl}member/logout" class="logout">登出</a>
</header>

<div id="body" data-id="0">
    <div class="container">
        <c:forEach items="${estimates}" var="estimate">
            <div class="trade">
                <div class="name">
                    <div class="left"><fmt:formatDate value="${estimate.createTime}" pattern="yyyy/MM/dd HH:mm:ss" /></div>
                    <div class="right"><c:choose><c:when test="${estimate.status=='1'}">待门店验货</c:when>
                        <c:when test="${estimate
                        .status=='2'}">交易成功</c:when><c:when test="${estimate.status=='3'  || estimate.status=='4'}"><span style="color:red;">交易取消</span></c:when></c:choose></div>
                </div>
                <a class="product" href="${baseurl}member/estimate/${estimate.id}">
                    <div class="img"><img src="${estimate.defaultPicUrl}" width="58" height="58" alt="${estimate.productName}"/></div>
                    <div class="p_info">
                        <div class="p_name">${estimate.productName}<c:if test="${estimate.num > 0}"> (${estimate.num}克)</c:if></div>
                        <div class="p_desc">查看详情</div>
                    </div>
                </a>

                <div class="status">
                    <div class="left">回收价：￥${estimate.estimatePrice}</div>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="popup-wrap tips-popup-wrap" id="js-tips-popup-wrap">
        <div class="popup">
            <h2></h2>

            <div class="close">知道了</div>
        </div>
    </div>
</div>
<div id="loading" class="hide"><i></i></div>

<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
</body>
</html>
