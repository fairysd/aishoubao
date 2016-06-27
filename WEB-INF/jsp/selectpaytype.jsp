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
    <link rel="stylesheet" href="${baseurl}res/css/selectpaytype.min.css"/>
    <title>选择支付方式</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport" />
</head>
<body onunload="">

<header id="header">
    <h1>选择支付方式</h1>
    <a class="back" href="javascript:history.go(-1)"></a>
    <a id="js-submit" href="javascript:submitForm();">确认</a>
</header>
<div id="body">
    <ul class="type-list" id="js-shop-type-list">
        <li class="cash <c:if test="${userEstimate.payType=='1'}">checked</c:if>" data-type="1">现金交易</li>
        <li class="transfer <c:if test="${userEstimate.payType=='2'}">checked</c:if>" data-type="2">网银转账</li>
        <li class="alipay <c:if test="${userEstimate.payType=='3'}">checked</c:if>" data-type="3">支付宝</li>
        <li class="weixinpay <c:if test="${userEstimate.payType=='4'}">checked</c:if>" data-type="4">微信支付</li>
    </ul>
    <ul class="type-content">
        <li id="cashli" class="item<c:if test="${userEstimate.payType=='1'}"> show</c:if>"></li>
        <li id="bankli" class="item<c:if test="${userEstimate.payType=='2'}"> show</c:if>">
            <ul class="transfer-type">
                <li style="display: none"></li>
                <li class="bank-username">
                <input type="text" value="<c:if test="${userEstimate.payType=='2'}">${userEstimate.accountName}</c:if>" placeholder="开户姓名" />
                </li>
                <li class="bank-num">
                    <input type="number" value="<c:if test="${userEstimate.payType=='2'}">${userEstimate.bankCardno}</c:if>" placeholder="详细卡号" />
                </li>
            </ul>
            <ul class="type-list" id="js-bank-list">
                <li style="display: none"></li>
                <li style="display: none"></li>
                <li style="display: none"></li>
                <li class="<c:if test="${userEstimate.bankName=='中国银行' and userEstimate.payType=='2'}"> checked</c:if>" data-bank="中国银行">中国银行</li>
                <li class="<c:if test="${userEstimate.bankName=='中国农业银行' and userEstimate.payType=='2'}"> checked</c:if>" data-bank="中国农业银行">中国农业银行</li>
                <li class="<c:if test="${userEstimate.bankName=='中国建设银行' and userEstimate.payType=='2'}"> checked</c:if>" data-bank="中国建设银行">中国建设银行</li>
                <li class="<c:if test="${userEstimate.bankName=='中国工商银行' and userEstimate.payType=='2'}"> checked</c:if>" data-bank="中国工商银行">中国工商银行</li>
                <li class="<c:if test="${userEstimate.bankName=='招商银行' and userEstimate.payType=='2'}"> checked</c:if>" data-bank="招商银行">招商银行</li>
                <li class="<c:if test="${userEstimate.bankName=='中国邮政储蓄银行' and userEstimate.payType=='2'}"> checked</c:if>" data-bank="中国邮政储蓄银行">中国邮政储蓄银行</li>
                <li class="<c:if test="${userEstimate.bankName=='上海浦东发展银行' and userEstimate.payType=='2'}"> checked</c:if>" data-bank="上海浦东发展银行">上海浦东发展银行</li>
                <li class="<c:if test="${userEstimate.bankName=='中国光大银行' and userEstimate.payType=='2'}"> checked</c:if>" data-bank="中国光大银行">中国光大银行</li>
                <li class="<c:if test="${userEstimate.bankName=='中信银行' and userEstimate.payType=='2'}"> checked</c:if>" data-bank="中信银行">中信银行</li>
                <li class="<c:if test="${userEstimate.bankName=='兴业银行' and userEstimate.payType=='2'}"> checked</c:if>" data-bank="兴业银行">兴业银行</li>
                <li class="<c:if test="${userEstimate.bankName=='华夏银行' and userEstimate.payType=='2'}"> checked</c:if>" data-bank="华夏银行">华夏银行</li>
            </ul>
            <div class="tips">爱收宝不会透露您的任何银行信息</div>
        </li>
        <li id="alipayli" class="item<c:if test="${userEstimate.payType=='3'}"> show</c:if>">
            <ul class="aliay-type">
                <li class="bank-num">
                    <input type="text" value="<c:if test="${userEstimate.payType=='3'}">${userEstimate.accountName}</c:if>" placeholder="支付宝帐号" />
                </li>
            </ul>
            <div class="tips">爱收宝不会透露您的任何银行信息</div>
        </li>
        <li id="weixinpayli" class="item<c:if test="${userEstimate.payType=='4'}"> show</c:if>">
            <ul class="weixin-type">
                <li class="bank-num">
                    <input type="text" value="<c:if test="${userEstimate.payType=='4'}">${userEstimate.accountName}</c:if>" placeholder="微信帐号" />
                </li>
            </ul>
            <div class="tips">爱收宝不会透露您的任何银行信息</div>
        </li>

    </ul>
</div>


<div class="popup-wrap tips-popup-wrap" id="js-tips-popup-wrap">
    <div class="popup">
        <h2>请选择支付方式</h2>
        <div class="close">确定</div>
    </div>
</div>
<form name="selectPayTypeForm" id="selectPayTypeForm" method="post" action="${baseurl}estimate/">
    <input type="hidden" name="productId" id="productId" value="${userEstimate.productId}"/>
    <input type="hidden" name="modeId" id="modeId" value="${userEstimate.modeId}"/>
    <input type="hidden" name="estimatePrice" id="estimatePrice" value="${userEstimate.estimatePrice}"/>
    <input type="hidden" name="pricerules" id="pricerules" value="${userEstimate.pricerules}"/>
    <input type="hidden" name="cityId" id="cityId" value="${userEstimate.cityId}"/>
    <input type="hidden" name="shopId" id="shopId" value="${userEstimate.shopId}"/>
    <input type="hidden" name="username" id="username" value="${userEstimate.username}"/>
    <input type="hidden" name="phone" id="phone" value="${userEstimate.phone}"/>
    <input type="hidden" name="num" id="num" value="${userEstimate.num}"/>
    <input type="hidden" name="diamondDesc" id="diamondDesc" value="${userEstimate.diamondDesc}"/>
    <input type="hidden" name="tradeType" id="tradeType" value="${userEstimate.tradeType}"/>
    <input type="hidden" name="payType" id="payType" value="${userEstimate.payType}"/>
    <input type="hidden" name="bankName" id="bankName" value="${userEstimate.bankName}"/>
    <input type="hidden" name="bankCardno" id="bankCardno" value="${userEstimate.bankCardno}"/>
    <input type="hidden" name="accountName" id="accountName" value="${userEstimate.accountName}"/>
    <input type="hidden" name="isMortgage" id="isMortgage" value="${isMortgage}"/>
</form>

<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script>
    jQuery(function(a) {
        a("#js-bank-list li").on({
            click:function() {
                if ($(this).hasClass("checked")) return !1;
                $(this).siblings(".checked").removeClass("checked");
                $(this).addClass("checked");
            }
        });
        
//        "click"
//                },
//                function () {
//                    if ($(this).hasClass("checked")) return !1;
//                    $(this).siblings(".checked").removeClass("checked");
//                    $(this).addClass("checked");
//                });
        var g = a("#js-shop-type-list");
        g.tab({
            isIndex: true,
            contentItemSelector: "ul.type-content li.item",
            menuCurrent: "checked",
            contentCurrent: "show",
        });
        <%--<c:if test="${userEstimate.payType=='3'}">--%>
        <%--$(".cash").removeClass("checked");--%>
        <%--$(".transfer").removeClass("checked");--%>
        <%--$(".alipay").addClass("checked");--%>
        <%--$(".weixinpay").removeClass("checked");--%>

        <%--$("#cashli").removeClass("show");--%>
        <%--$("#bankli").removeClass("show");--%>
        <%--$("#alipayli").addClass("show");--%>
        <%--$("#weixinpayli").removeClass("show");--%>
        <%--</c:if>--%>

    });


    function submitForm() {
        var b = $("ul.transfer-type li.bank-name"),
            h = $("ul.transfer-type li.bank-username input"),
            c = $("ul.transfer-type li.bank-num input"),
            alipayAccount = $("ul.aliay-type li.bank-num input"),
            weixinAccount = $("ul.weixin-type li.bank-num input"),
            bankName = $("#js-bank-list li.checked").data("bank");
        var type = $("#js-shop-type-list li.checked").data("type");

        function i() {
            if (!verifyUtils.username(h.val())) {
                tipsPopup("请输入正确的姓名");
                return false;
            }
            if (!verifyUtils.cardNo(c.val())) {
                tipsPopup("请输入正确的银行卡号");
                return false;
            }
            if (!bankName) {
                tipsPopup("请选择银行");
                return false;
            }
            return true;
        }
        function iAlaiy() {
            if (alipayAccount.val() == "") {
                tipsPopup("请输入正确的支付宝帐号");
                return false;
            }
        }
        function iWeixin() {
            if (weixinAccount.val() == "") {
                tipsPopup("请输入正确的微信帐号");
                return false;
            }
        }

        function clearData() {
            $("#payType").attr("value", "");
            $("#bankName").attr("value", "");
            $("#bankUsername").attr("value", "");
            $("#bankAccount").attr("value", "");
            $("#alipayAccount").attr("value", "");
            $("#weixinAccount").attr("value", "");
        }
//        console.log(type);
        switch (type)  {
            case 1: // cash
                clearData();
                $("#payType").attr("value", 1);
                console.log("1");
                break;
            case 2: // bank
                clearData();
                if (i() == false) return;
                $("#payType").attr("value", 2);
                $("#bankName").attr("value", bankName);
                $("#accountName").attr("value", h.val());
                $("#bankCardno").attr("value", c.val());
                console.log("2");
                break;
            case 3: // alipay
                clearData();
                console.log("3");
                if (iAlaiy() == false) return;
                $("#payType").attr("value", 3);
                $("#accountName").attr("value", alipayAccount.val());
                break;
            case 4: // weixin
                clearData();
                if (iWeixin() == false) return;
                $("#payType").attr("value", 4);
                $("#accountName").attr("value", weixinAccount.val());
                console.log("4");
                break;
        }
//        return ;


        $("#selectPayTypeForm").submit();
    }
</script>
</body>

</html>
