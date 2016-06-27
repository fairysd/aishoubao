<%--
  User: donny
  Date: 1/23/16
  Time: 12:48
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport" />
    <title>产品搜索</title>
    <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
    <link rel="stylesheet" href="${baseurl}res/css/search.min.css"/>
</head>
<body onunload="">

<!-- 搜索头部 -->
<header id="header">
    <a class="back" href="javascript:window.history.go(-1)"></a>
    <div class="search" id="js-search">
        <div class="categories">
            <div class="categories-current" data-cid="1">
                <span>产品</span>
            </div>
            <!-- show -->
            <div class="categories-list hide">
                <span class="triangle"></span>
                <div class="categories-list-content">
                    <ul>
                    </ul>
                </div>
            </div>
        </div>
        <form action="">
            <input type="search" value="" autocomplete="off" placeholder="输入您要搜索的产品名称" />
        </form>
        <div class="clear"></div>
    </div>
    <div class="search-btn" id="js-search-btn">搜索</div>
</header>
<div id="body" data-href="/product/detail?ProductId=">
    <div class="searching">
        <div class="searching-help">
            <%--<div class="hot">--%>
                <%--<h2>热门搜索</h2>--%>
                <%--<ul class="clearfix">--%>
                    <%--<li>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</div>--%>
        </div>
        <div class="searching-list hide">
            <ul></ul>
        </div>
    </div>
    <div class="search-reslute hide">
        <div class="no-search-reslute hide">
            没有找到符合条件的产品
        </div>
    </div>
</div>

<div id="loading" class="hide"><i></i></div>
<script>var baseurl=${baseurl}</script>
<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/jquery.autocomplete.min.js"></script>
<c:if test="${empty isMortgage}">
<script type="text/javascript" src="${baseurl}res/js/search.min.js"></script>
</c:if>
<c:if test="${not empty isMortgage}">
<script type="text/javascript" src="${baseurl}res/js/searchMortgage.min.js"></script>
</c:if>
</body>
</html>
