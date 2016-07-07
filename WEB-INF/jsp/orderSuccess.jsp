<%--
  User: donny
  Date: 12/20/15
  Time: 09:17
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<%--@elvariable id="estimate" type="cn.com.kpso.huishoubao.model.Estimate"--%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
    <link rel="stylesheet" href="${baseurl}res/css/order.min.css"/>
    <title>订单信息</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport"/>
</head>
<body onunload="">

<header class="default" id="header">
    <a class="home step_detail" href="${baseurl}<c:if test="${not empty isMortgage}">mortgage-index.html</c:if>"></a>
    <h1 class="title">订单信息</h1>
</header>
<c:if test="${empty estimate.id}">
    <br/><br/>请不要重复提交订单！
</c:if>
<c:if test="${not empty estimate.id}">
    <div id="body" data-rtradeid="0" data-rtradetype="1" data-rtradeno="20151220091423152591">
        <div id="success-page">
            <div class="page-body">
                <div class="page-title">
                    <div class="icon_success"></div>
                    <h2>成功提交订单</h2>
                </div>
                <div class="success_notice">
                    <c:if test="${estimate.tradeType=='1' or estimate.tradeType==''}">
                        <div class="tip">请在<span class="highlight">3</span>天之内去门店进行交易</div>
                    </c:if>
                    <c:if test="${estimate.tradeType=='2'}">
                        <div class="tip">请将您的产品使用顺丰快递<strong>(寄付)</strong>邮寄给我们!</div>
                        <ul class="tip_list">
                            <li>收件人: 苏州爱收宝网络科技有限公司</li>
                            <li>联系电话: 400-086-1131</li>
                            <li>地址: 江苏省苏州市姑苏区园林路5-1号2楼</li>
                        </ul>
                    </c:if>
                    <ul class="tip_list">
                        <li>1. 请在交易的时候，带上您的身份证或者其他有效证件。</li>
                        <li>2. 如果您要<c:if test="${empty isMortgage}">卖的</c:if><c:if test="${not empty isMortgage}">抵押的</c:if>产品是手机，请把手机充下电，不要将手机恢复出厂设置，方便工作人员检测</li>
                    </ul>
                </div>
                <div class="trade_summary">
                    <table class="summary_table">
                        <tr>
                            <th>订单编号：</th>
                            <td>${estimate.tradeNo}</td>
                        </tr>
                        <tr>
                            <th>订单金额：</th>
                            <td>&yen;${estimate.estimatePrice}</td>
                        </tr>
                        <c:if test="${estimate.tradeType=='1' or estimate.tradeType==''}">
                        <tr>
                            <th>门店交易：</th>
                            <td><c:if test="${empty isMortgage}">${estimate.orgName}</c:if><c:if test="${not empty isMortgage}">${shopInfo.name}</c:if></td>
                        </tr>
                        </c:if>
                    </table>
                    <c:if test="${estimate.tradeType=='1' or estimate.tradeType==''}">
                    <div class="summary_extra">
                        <c:if test="${empty isMortgage}">${estimate.orgAddress}</c:if>
                        <c:if test="${not empty isMortgage}">${shopInfo.address}</c:if>
                    </div>
                    </c:if>
                </div>

                <div class="success_actions">
                    <ul>
                        <li class="first">
                            <a id="tradelist" href="http://shop.aishoubao.com/mobile/user.php?act=estimate_list">查看订单</a>
                        </li>
                    </ul>

                </div>
            </div>

        </div>
    </div>
</c:if>


<div id="loading" class="hide"><i></i></div>

<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
</body>

</html>
