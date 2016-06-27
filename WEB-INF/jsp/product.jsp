<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>${product.name} 回收 | 爱收宝</title>
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">
    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="stylesheet" href="http://cdn.amazeui.org/amazeui/2.5.0/css/amazeui.min.css">
</head>
<body>
<%--<header data-am-widget="header"--%>
        <%--class="am-header am-header-default">--%>
    <%--<div class="am-header-left am-header-nav">--%>
        <%--<a href="javascript:history.go(-1)" class="">--%>
            <%--<i class="am-header-icon am-icon-angle-left am-icon-md"></i>--%>
        <%--</a>--%>
    <%--</div>--%>
    <%--<h1 class="am-header-title">--%>
            <%--${product.name}--%>
    <%--</h1>--%>
<%--</header>--%>
<div align="center"><img src="${product.picList[0]}"><br>${product.name} [最高回收价：<fmt:formatNumber value="${product.maxChannelPrice}"/>]</div>

<hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
<!--在这里编写你的代码-->
<div style="margin-left:10px;margin-right:10px;">
    <c:forEach items="${product.channelList}" var="channel">
        <button type="button" class="am-btn am-btn-warning am-round am-btn-block" value="${channel.channelId}">${channel.channelName}</button>
    </c:forEach>
</div>
<%@ include file="common/amazeui.jsp"%>
<script>
    $(".am-btn").click(function(){
        //alert($(this).val());
        var id = $(this).val();
        location.href ="${baseurl}product/${product.id}/detail/" + id + "/";
    });
</script>
</body>
</html>