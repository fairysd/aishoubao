<%--
  User: donny
  Date: 12/18/15
  Time: 20:12
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
    <link rel="stylesheet" href="${baseurl}res/css/form.min.css"/>
    <title>提交订单</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport"/>
    <style>#body .trade-content>li>p{position: initial;}
        input[type="date"] {-webkit-appearance: none;}
    </style>
</head>
<body onunload="">
<header id="header">
    <h1>提交订单</h1>
    <a class="back" href="javascript:history.go(-1)"></a>
</header>
<div id="body" class="body-shop two">
    <!-- 选择交易方式 -->
    <div class="trade-menu">
        <h2>选择交易方式</h2>
        <ul class="clearfix" id="js-trade-menu" data-url="#">
            <li id="shop" class="shop current" data-loaded="true" data-orderType="1">门店交易</li>
            <%--<li id="express" class="express" data-orderType="2">快递交易</li>--%>
        </ul>

    </div>
    <!-- 交易方式 -->
    <ul class="trade-content" id="js-trade-content" data-url="#">
        <li class="shop show">
            <p id="payTypeTip">线上下单，门店交易</p>
            <ul>
                <li class="select-shop clearfix" id="js-recommand-shop">
                    <a href="javascript:selectShop();"><c:if test="${empty store.name}">选择门店</c:if> ${store.name}</a></li>
                <li class="select-payment clearfix" data-selected="true">
                    <a href="javascript:selectPaytype();"><c:if test="${empty userEstimate.payType}">现金支付</c:if>
                        <c:if test="${userEstimate.payType=='1'}">现金支付</c:if>
                        <c:if test="${userEstimate.payType=='2'}">银行转账 (${userEstimate.bankName})</c:if>
                        <c:if test="${userEstimate.payType=='3'}">支付宝 (${userEstimate.accountName})</c:if>
                        <c:if test="${userEstimate.payType=='4'}">微信支付 (${userEstimate.accountName})</c:if>
                    </a>
                </li>
                <li class="username">
                    <input type="text" name="inputusername" id="inputusername" value="${userEstimate.username}" placeholder="输入姓名"/>
                </li>
                <li class="number">
                    <input type="number" name="inputphone" id="inputphone" value="${userEstimate.phone}" placeholder="输入联系号码（用于查询订单）"/>
                </li>
                <li class="number">
                    <input type="text" name="mortgageStarttimeInput" id="mortgageStarttimeInput" placeholder="请选择抵押开始日期"/>
                </li>
                <li class="number">
                    <input type="text" name="mortgageEndtimeInput" id="mortgageEndtimeInput" placeholder="请选择抵押结束日期"/>
                </li>
                <li>
                    抵押手续费:${mortgageInterestDay}%/天, 预期应付手续费:<span id="expertEarnings"></span>
                </li>
            </ul>
        </li>
        <!-- 当面交易 -->
        <li class="face">
        </li>
        <!-- 快递交易 -->
        <li class="express">
        </li>
    </ul>

    <!-- 抵押清单 -->
    <div class="recycle-list">
        <h2>抵押商品清单</h2>
        <ul>
            <li><c:if test="${empty product.name}">钻石</c:if>${product.name}<c:if test="${not empty userEstimate.num}"> (${userEstimate.num
                    }${product.unit})</c:if><span>&yen;${userEstimate.estimatePrice}</span></li>
        </ul>
    </div>

</div>
<footer id="footer">
    <a href="${baseurl}serviceTreaty.html">提交订单就等于同意爱收宝服务条款</a>
    <div class="btn clearfix">

        <div class="price">抵押估价￥<span data-base-price="695" data-subsidy="30" data-plus="0" id="js-price">${userEstimate.estimatePrice}</span></div>

        <a href="javascript:submitOrder();" id="js-submit" data-url="" style="color:white;">提交订单</a>
    </div>
</footer>
<div id="loading" class="hide"><i></i></div>
<form name="productOrderForm" id="productOrderForm" method="post" action="${baseurl}estimate/order">
    <input type="hidden" name="productId" id="productId" value="${userEstimate.productId}"/>
    <input type="hidden" name="modeId" id="modeId" value="${userEstimate.modeId}"/>
    <input type="hidden" name="estimatePrice" id="estimatePrice" value="${userEstimate.estimatePrice}"/>
    <input type="hidden" name="pricerules" id="pricerules" value="${userEstimate.pricerules}"/>
    <input type="hidden" name="cityId" id="cityId" value="${userEstimate.cityId}"/>
    <input type="hidden" name="shopId" id="shopId" value="${userEstimate.shopId}"/>
    <input type="hidden" name="areaId" id="areaId" value="${userEstimate.areaId}"/>
    <input type="hidden" name="username" id="username" value="${userEstimate.username}"/>
    <input type="hidden" name="phone" id="phone" value="${userEstimate.phone}"/>
    <input type="hidden" name="num" id="num" value="${userEstimate.num}"/>
    <input type="hidden" name="diamondDesc" id="diamondDesc" value="${userEstimate.diamondDesc}"/>
    <input type="hidden" name="tradeType" id="tradeType" value="${userEstimate.tradeType}"/>
    <input type="hidden" name="payType" id="payType" value="${userEstimate.payType}"/>
    <input type="hidden" name="bankName" id="bankName" value="${userEstimate.bankName}"/>
    <input type="hidden" name="bankCardno" id="bankCardno" value="${userEstimate.bankCardno}"/>
    <input type="hidden" name="accountName" id="accountName" value="${userEstimate.accountName}"/>
    <input type="hidden" name="isMortgage" id="isMortgage" value="1"/>
    <input type="hidden" name="mortgageStarttime" id="mortgageStarttime"/>
    <input type="hidden" name="mortgageEndtime" id="mortgageEndtime"/>
    <input type="hidden" name="mortgageInterestDay" id="mortgageInterestDay" value="${mortgageInterestDay}"/>
</form>
<div class="popup-wrap tips-popup-wrap" id="js-tips-popup-wrap">
    <div class="popup">
        <h2></h2>
        <div class="close">确定</div>
    </div>
</div>

<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/estimate.min.js"></script>
<script>
    var orderType = "1";
    $("#js-trade-menu li").bind("click",
        function () {
            if ($(this).hasClass("current")) return !1;
            $(this).siblings(".current").removeClass("current");
            $(this).addClass("current");
            orderType = $(this).data("ordertype");
            if (orderType == '2') {
                $("#js-recommand-shop").hide();
                $("#payTypeTip").html("顺丰到付，安全无忧");
            } else {
                $("#js-recommand-shop").show();
                $("#payTypeTip").html("线上下单，门店交易");
            }
            $("#tradeType").attr("value", orderType);
    });
    <c:if test="${userEstimate.tradeType=='2'}">
    $("#js-recommand-shop").hide();
    $("#shop").removeClass("current");
    $("#express").addClass("current");
    $("#tradeType").attr("value", "2");
    orderType = "2";
    </c:if>

    function selectShop() {
        $("#username").attr("value", $("#inputusername").val());
        $("#phone").attr("value", $("#inputphone").val());
        var form = $("#productOrderForm");
        form.attr("action", "${baseurl}estimate/selectshop");
        form.submit();
    }

    function selectPaytype() {
        $("#username").attr("value", $("#inputusername").val());
        $("#phone").attr("value", $("#inputphone").val());
        var form = $("#productOrderForm");
        form.attr("action", "${baseurl}estimate/selectpaytype");
        form.submit();
    }

    function submitOrder() {
        var shopId = "${userEstimate.shopId}";
        if (!shopId && orderType=="1") {
            tipsPopup("请选择门店！");
            return;
        }
        if (!$("#inputusername").val()) {
            tipsPopup("请输入姓名！");
            return;
        }
        if (!verifyUtils.mobile($("#inputphone").val())) {
            return tipsPopup("请输入正确的手机号吗！");
        }
        $("#username").attr("value", $("#inputusername").val());
        $("#phone").attr("value", $("#inputphone").val());
        var mortgageStarttime = $("#mortgageStarttimeInput").val();
        var mortgageEndtime = $("#mortgageEndtimeInput").val();
        if (GetDateDiff2(mortgageStarttime, getNowFormatDate()) < 0) {
            return tipsPopup("不能选择过去的日期!");
        }
        if (!mortgageEndtime || ! mortgageStarttime) {
            return tipsPopup("请选择抵押周期!");
        }
        if (computeDiffDays() < 7) {
            return tipsPopup("抵押周期不少于7天!");
        }
        $("#mortgageStarttime").attr("value", mortgageStarttime);
        $("#mortgageEndtime").attr("value", mortgageEndtime);
        $("#productOrderForm").submit();
    }

    var startDate = document.getElementById("mortgageStarttimeInput");
    startDate.onfocus = function(event) {
        this.type = 'date';
        this.focus();
    };
    var endDate = document.getElementById("mortgageEndtimeInput");
    endDate.onfocus = function(event) {
        this.type = 'date';
        this.focus();
    };

    function GetDateDiff(startDate,endDate)
    {
        var startTime = new Date(Date.parse(startDate.replace(/-/g,   "/"))).getTime();
        var endTime = new Date(Date.parse(endDate.replace(/-/g,   "/"))).getTime();
        var dates = Math.abs((startTime - endTime))/(1000*60*60*24);
        return  dates;
    }

    function GetDateDiff2(startDate,endDate) {
        var startTime = new Date(Date.parse(startDate.replace(/-/g, "/"))).getTime();
        var endTime = new Date(Date.parse(endDate.replace(/-/g, "/"))).getTime();
        var dates = (startTime - endTime) / (1000 * 60 * 60 * 24);
        return dates;
    }

        function toDecimal(x) {
        var f = parseFloat(x);
        if (isNaN(f)) {
            return;
        }
        f = Math.round(x*100)/100;
        return f;
    }

    function getNowFormatDate() {
        var date = new Date();
        var seperator1 = "-";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate;
        return currentdate;
    }

    function computeDiffDays() {
        var starttime = $("#mortgageStarttimeInput").val();
        var endtime = $("#mortgageEndtimeInput").val();
        var days = GetDateDiff(starttime, endtime);
        return days;
    }
    function computeExpertEarnings() {
        var days = computeDiffDays();
        $("#expertEarnings").html(toDecimal(${userEstimate.estimatePrice}*days*(${mortgageInterestDay}/100))+'元');
    }
    $("#mortgageStarttimeInput").on({
        "change":function(){
            if (GetDateDiff2($(this).val(), getNowFormatDate()) < 0) {
                return tipsPopup("不能选择过去的日期!");
            }
        }
    });

    $("#mortgageEndtimeInput").on({
        "change":function(){
            var days = computeDiffDays();
            if (days < 7) {
                tipsPopup("抵押周期不少于7天!");
                return false;
            } else {
                computeExpertEarnings();
            }
        },
        "focus":function(){
            if (!$("#mortgageStarttimeInput").val()) {
                tipsPopup("请先选择抵押开始日期!")
                return ;
            }
        }
    })
</script>
</body>
</html>