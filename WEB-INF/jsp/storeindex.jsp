<%--
  User: donny
  Date: 12/23/15
  Time: 09:42
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport" />
  <title>门店地址-爱收宝</title>
  <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
  <link rel="stylesheet" href="${baseurl}res/css/shop.min.css"/>
</head>
<body onunload="">

<div id="shop">
  <header class="clearfix">
    <a class="back" href="javascript:history.back()"></a>
    <h1>门店分布</h1>
    <div class="shop-city">
      <span class="shop-city-current" id="js-shop-city-current" data-id="856">${areainfo.name}</span>
      <div class="shop-city-list-wrap" id="js-shop-city-list-wrap">
        <ul class="shop-city-list">
          <li data-value="苏州" class=active data-id="856">
            <a href="${baseurl}store/?cityId=856" >苏州</a>
          </li>
            <li>
                <a href="${baseurl}store/?cityId=1154">福州</a>
            </li>
          <li>
            <a href="${baseurl}store/?cityId=1032">合肥</a>
          </li>
          <li>
            <a href="${baseurl}store/?cityId=1051">蚌埠</a>
          </li>
          <li>
            <a href="${baseurl}store/?cityId=892">盐城</a>
          </li>
        </ul>
      </div>
    </div>
  </header>
  <div class="region">
    <div class="region-nav-wrap">
      <div class="region-nav clearfix" id="js-region-nav">
        <span class="all item current">全部(${fn:length(stores)})</span>
        <span class="line"></span>
        <div class="region-nav-list-wrap">
          <ul class="region-nav-list">
            <c:forEach items="${areas}" var="area">
              <li class="item" data-id="${area.id}">${area.name}</li>
            </c:forEach>
          </ul>
          <div class="next"></div>
        </div>
      </div>
    </div>
    <ul class="shop-address-list" id="js-shop-address-list-wrap">
      <c:forEach items="${stores}" var="store">
        <li data-id="${store.id}" data-region-id="${store.areaId}" data-latitude="${store.latitude}" data-longitude="${store.longitude}">
          <div class="shop-item clearfix">
            <a class="shop-address" href="${baseurl}store/${store.id}">
              <strong>${store.name}</strong>
              <p>${store.address}</p>
            </a>
            <a href="tel:${store.tel}" class="shop-mobile">
              <span></span>
            </a>
          </div>
        </li>
      </c:forEach>
    </ul>
  </div>
</div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=5hYwF0v9YAGoLwasR020YIGh"></script>


<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/shop.min.js"></script>
<script>
  $(".shop-city-list li").on({
    "click":function(){
      $(".shop-city-current").html($(this).data(value));
    }
  });
</script>
</body>

</html>
