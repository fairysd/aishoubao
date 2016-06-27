<%--
  User: donny
  Date: 12/23/15
  Time: 09:42
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>

<!DOCTYPE html>
<html>
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport" />
  <title>门店地址-爱收宝</title>
  <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
  <link rel="stylesheet" href="${baseurl}res/css/shopdetail.min.css"/>
</head>
<body onunload="">
<div id="shop-detail" data-latitude="${store.latitude}" data-longitude="${store.longitude}">
  <header class="header">
    <a class="back" href="${baseurl}store/"></a>
    <h2>${store.name}</h2>
    <h3 class="clearfix" id="js-popup-btu">${store.address}</h3>
    <p>营业时间：10:00-22:00</p>
  </header>
  <div id="js-map">
  </div>
</div>

<script type="text/javascript" src="http://api.map.baidu.com/api?type=quick&&ak=5hYwF0v9YAGoLwasR020YIGh"></script>
<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script>
  jQuery(function(n){var i=n(window),r=n("#shop-detail"),u=r.find(".header"),f=n("#js-map"),t;f.css("height",i.height()-u.outerHeight(!0));i.on("resize",function(){setTimeout(function(){f.css("height",i.height()-u.outerHeight(!0))},300)});var e=new BMap.Map("js-map"),o=new BMap.Point(r.data("longitude"),r.data("latitude")),s=new BMap.Marker(o);e.centerAndZoom(o,12);e.addOverlay(s);t=n("#js-popup");n("#js-popup-btu").on("click",function(){t.addClass("show")});t.on("click",function(){t.removeClass("show")})});
</script>
</body>

</html>
