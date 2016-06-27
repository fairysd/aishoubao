<%--
  User: donny
  Date: 12/25/15
  Time: 18:02
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
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>产品列表 | 爱收宝</title>

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
  <%--<h1 class="am-header-title">产品列表</h1>--%>
<%--</header>--%>
<c:if test="${empty products}">
    <div align="center" style="padding:20px;">产品拼命上传中……</div>
</c:if>
<ul data-am-widget="gallery" class="am-gallery am-avg-sm-2
  am-avg-md-3 am-avg-lg-4 am-gallery-bordered" data-am-gallery="" >
  <c:forEach items="${products}" var="product">
    <li>
      <div class="am-gallery-item">
        <a href="${baseurl}product/${product.id}?type=${type}&isMortgage=${isMortgage}" class="">
          <img src="${baseurl}res/images/blank.gif" data-echo="${product.picList[0]}"  alt="${product.name}"/>
          <h3 class="am-gallery-title am-text-center" style="white-space : normal; overflow : auto; ">${product.name}</h3>
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
