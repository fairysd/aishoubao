<%--
  User: donny
  Date: 12/25/15
  Time: 16:13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>产品分类 | 爱收宝</title>

  <!-- Set render engine for 360 browser -->
  <meta name="renderer" content="webkit">
  <!-- No Baidu Siteapp-->
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="stylesheet" href="http://cdn.amazeui.org/amazeui/2.5.0/css/amazeui.min.css">
  <style type="text/css">
      ul.am-avg-lg-4 p:first-child{
          display: none;
      }
  </style>
</head>
<body>
<%--<header data-am-widget="header"--%>
        <%--class="am-header am-header-default">--%>
  <%--<div class="am-header-left am-header-nav">--%>
    <%--<a href="javascript:history.go(-1)" class="">--%>
      <%--<i class="am-header-icon am-icon-angle-left am-icon-md "></i>--%>
    <%--</a>--%>
  <%--</div>--%>
  <%--<h1 class="am-header-title">--%>
    <%--分类--%>
  <%--</h1>--%>
<%--</header>--%>

<ul data-am-widget="gallery" class="am-gallery am-avg-sm-3
  am-avg-md-4 am-avg-lg-5 am-gallery-bordered" data-am-gallery="" >
  <c:forEach items="${categories.body}" var="category" varStatus="status">
  <li>
    <div class="am-gallery-item">
      <a href="${baseurl}category/new/${category.id}/detail?type=${type}&isMortgage=${isMortgage}" class="">
        <img src="${baseurl}res/images/blank.gif" data-echo="${category.picUrl}"/>
        <h3 class="am-gallery-title am-text-center">${category.name}</h3>
      </a>
    </div>
  </li>
  </c:forEach>
</ul>
<%@ include file="common/amazeui.jsp"%>
<script>
  echo.init({
    callback: function(element, op) {
      if (op === 'load') {
        $(element).scrollspy({animation:'fade'});
      }
    }
  });
</script>
</body>
</html>

