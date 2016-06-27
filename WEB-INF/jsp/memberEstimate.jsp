<%--
  User: donny
  Date: 12/20/15
  Time: 14:55
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>

<!DOCTYPE html>
<html>
<head>

  <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
  <link rel="stylesheet" href="${baseurl}res/css/estimateDetail.min.css"/>
  <title>订单详情</title>
  <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport"/>
</head>
<body onunload="">

<header class="default" id="header">
  <a class="back step_detail" href="javascript:history.go(-1)"></a>
  <h1 class="title">订单详情</h1>
</header>

<div id="tradedetail-page">
  <div class="page-body">

    <div class="brief shop"><c:choose><c:when test="${estimate.status=='1'}">待门店验货</c:when>
      <c:when test="${estimate.status=='2'}">交易成功</c:when><c:when test="${estimate.status=='3' || estimate.status=='4'}"><span style="color:red;">交易取消</span></c:when></c:choose></div>
    <div class="status">
      <a class="flow_text">
        <span class="title">订单状态</span>
        <span class="value"><c:choose><c:when test="${estimate.status=='1'}">待门店验货</c:when>
          <c:when test="${estimate.status=='2'}">交易成功</c:when><c:when test="${estimate.status=='3' || estimate.status=='4'}"><span style="color:red;">交易取消</span></c:when></c:choose></span>
        <span class="time"><c:if test="${empty estimate.updateTime}"><fmt:formatDate value="${estimate.createTime}" pattern="yyyy/MM/dd HH:mm:ss" /></c:if>
                        <fmt:formatDate value="${estimate.updateTime}" pattern="yyyy/MM/dd HH:mm:ss" /></span>
      </a>
    </div>
    <div class="trade shop">
      <h2><c:if test="${estimate.tradeType=='' or estimate.tradeType=='1'}">门店交易</c:if><c:if test="${estimate.tradeType=='2'}">快递交易</c:if></h2>
      <c:if test="${estimate.tradeType=='2'}">
      <p>收件人: 苏州爱收宝网络科技有限公司<br>联系电话: 400-086-1131<br>地址: 江苏省苏州市姑苏区园林路5-1号2楼</p>
      </c:if>
      <c:if test="${estimate.tradeType=='' or estimate.tradeType=='1'}">
      <p>${estimate.orgName}<br>${estimate.orgAddress}</p>
      <ul class="extra clearfix">
        <li><a class="mobile" href="tel:${estimate.orgTel}">联系门店</a></li>
      </ul>
      </c:if>
    </div>

    <div class="product">
      <h2>物品信息</h2>
      <div class="detail">
        <div class="img"><img src="${estimate.defaultPicUrl}" width="58" height="58" alt="${estimate.productName}" /></div>
        <div class="p_info">
          <div class="p_name">${estimate.productName}<c:if test="${estimate.num > 0}"> (${estimate.num}克)</c:if></div>
          <div class="p_desc">${estimate.propertyOptions}</div>
        </div>
        <div class="price">&yen;${estimate.estimatePrice}</div>
      </div>
      <div class="extra">
        <div class="icon_extra"></div>
        <div class="text">
          <div class="info">订单编号： ${estimate.tradeNo}</div>
          <div class="info">创建时间： <fmt:formatDate value="${estimate.createTime}" pattern="yyyy/MM/dd HH:mm:ss" /></div>
        </div>

      </div>
    </div>
  </div>
  <div class="page-bottom">
    <div class="actions">
      <div class="btn_kefu label_highlight" id="cancelOrder">取消订单</div>
      <div class="btn_kefu label_highlight" id="contactKf">联系客服</div>
    </div>
  </div>
</div>

<div id="loading" class="hide"><i></i></div>
<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>

<script>
  $("#contactKf").click(function(){
    location.href = "tel:400-086-1131";
  });
  $("#cancelOrder").click(function(){
    location.href = "${baseurl}member/cancelEstimate/${id}";
  });
</script>
</body>

</html>
