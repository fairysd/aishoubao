<%--
  User: donny
  Date: 12/19/15
  Time: 15:18
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
    <link rel="stylesheet" href="${baseurl}res/css/selectshop.min.css"/>
    <title>选择门店</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport" />
</head>
<body onunload="">

<header id="header">
    <h1>选择具体交易门店</h1>
    <a class="back" href="javascript:history.go(-1)"></a>
    <a id="js-submit" href="javascript:submitForm();">确认</a>
</header>
<div id="body" class="shop">
    <div class="shop-trade clearfix">
        <div class="region" id="js-region">
            <ul>
                <c:forEach items="${areas}" var="area">
                    <li data-region-id="${area.id}" <c:if test="${userEstimate.areaId == area.id}">class="current"</c:if>>${area.name}</li>
                </c:forEach>
                <%--<li data-region-id="617">南汇区</li>--%>
            </ul>
        </div>
        <div class="shop" id="js-shop">
            <ul>
                <c:forEach items="${stores}" var="store">
                <li data-region-id="${store.areaId}" data-shop-id="${store.id}" class="">${store.name}</li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>

<div class="popup-wrap tips-popup-wrap" id="js-tips-popup-wrap">
    <div class="popup">
        <h2>请选择门店</h2>
        <div class="close">确定</div>
    </div>
</div>
<form name="selectShopForm" id="selectShopForm" method="post" action="${baseurl}estimate/">
    <input type="hidden" name="productId" id="productId" value="${userEstimate.productId}"/>
    <input type="hidden" name="modeId" id="modeId" value="${userEstimate.modeId}"/>
    <input type="hidden" name="estimatePrice" id="estimatePrice" value="${userEstimate.estimatePrice}"/>
    <input type="hidden" name="pricerules" id="pricerules" value="${userEstimate.pricerules}"/>
    <input type="hidden" name="cityId" id="cityId" value="${userEstimate.cityId}"/>
    <input type="hidden" name="shopId" id="shopId" value=""/>
    <input type="hidden" name="username" id="username" value="${userEstimate.username}"/>
    <input type="hidden" name="phone" id="phone" value="${userEstimate.phone}"/>
    <input type="hidden" name="num" id="num" value="${userEstimate.num}"/>
    <input type="hidden" name="diamondDesc" id="diamondDesc" value="${userEstimate.diamondDesc}"/>
    <input type="hidden" name="payType" id="payType" value="${userEstimate.payType}"/>
    <input type="hidden" name="bankName" id="bankName" value="${userEstimate.bankName}"/>
    <input type="hidden" name="bankUsername" id="bankUsername" value="${userEstimate.bankUsername}"/>
    <input type="hidden" name="bankAccount" id="bankAccount" value="${userEstimate.bankAccount}"/>
    <input type="hidden" name="alipayAccount" id="alipayAccount" value="${userEstimate.alipayAccount}"/>
    <input type="hidden" name="weixinAccount" id="weixinAccount" value="${userEstimate.weixinAccount}"/>
    <input type="hidden" name="isMortgage" id="isMortgage" value="${isMortgage}"/>
</form>

<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/selectshop.min.js"></script>
<script>
    jQuery(function (a) {
        var c = a("#js-region"),
                f = a("#js-shop"),
                h = f.find("li");
        var areaId = 0;
        <c:if test="${not empty userEstimate.areaId}">
            areaId = ${userEstimate.areaId};
        </c:if>
        if (a(this).hasClass("current")) {
            return
        }
        a(this).siblings().removeClass("current").end().addClass("current");
        f.unbindScrollUpDown();
    h.each(function () {
        if (areaId === a(this).data("regionId")) {
            a(this).show();
        } else {
            a(this).hide();
        }
    })
        f.scrollUpDown()
    });
    function submitForm() {
        var i = $("#js-shop").find("li.current");
        if (i.length === 0) {
            tipsPopup()
            return;
        }
        var shopId = i.data("shopId");
        $("#shopId").attr("value", shopId);
        $("#selectShopForm").submit();
    }
</script>
</body>

</html>
