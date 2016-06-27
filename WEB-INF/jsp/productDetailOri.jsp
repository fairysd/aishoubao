<%--
  User: donny
  Date: 12/17/15
  Time: 21:09
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
    <link rel="stylesheet" href="${baseurl}res/css/productDetail.css"/>
    <title>${product.name} | 爱收宝</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport"/>
    <style>
        .pff{font-size: 14px;}
        .eval-head-block { position: relative; height: 98px; padding: 13px 0; border-bottom: 1px solid #d0d0d0; background: #fff;}
        .eval-head-photo { width: 82px; height: 60px; border: 1px solid #d0d0d0; border-radius: 7px; position: absolute; left: 33px; padding: 10px 0;}
        .eval-head-photo img { margin: 0 auto; display: block; max-width: 82px; height: 76px;margin-top:-10px;}
        .eval-head-right { height: 100%; margin-left: 138px; margin-right: 33px;line-height: 26px;}
        .eval-head-max { height: 32px; line-height: 32px; border-bottom: 2px solid #a8a8a8; padding-top: 3px;}
        .eval-head-max span { color: #fd8233; font-size: 18px;}
        .eval-head-title { font-size: 15px; color: #434343;}
        #step0 {
            padding-left: 25px;
            padding-right: 30px;
            padding-top:10px;
        }
        #step0 div{margin-bottom:10px;}
        .inputbox{height:40px;line-height:40px;width:100%;font-size:18px;border:1px solid #d0d0d0;padding-left:10px;}
    </style>
</head>
<body onunload="">
<header id="header" class="step_region_on" style="height:143px;text-align: left">
    <div class="eval-head-block">
        <div class="eval-head-photo">
            <img src="${product.picList[0]}" alt="">
        </div>
        <div class="eval-head-right">
            <c:if test="${not empty product.maxChannelPrice}">
                <div class="eval-head-max">最高专柜价<span>￥<fmt:formatNumber value="${product.maxChannelPrice}"/></span></div>
            </c:if>
            <div class="eval-head-title">${product.name} <c:if test="${not empty num}"> (${num}克)</c:if></div>
        </div>
    </div>
    <div id="progressbar_wrap">
        <div id="progressbar_bg"></div>
        <div id="progressbar_cover"></div>
    </div>
</header>
<div id="body">

    <div id="property_list">
        <c:if test="${not empty type and type != 'phone'}">
            <div id="step0" class="step_detail">
                <div class=""><input placeholder="请输入重量（单位：克）" id="inputnum" class="inputbox" type="number" name="inputnum" value=""/></div>
            </div>
        </c:if>
        <div id="step1" class="step_detail">
            <c:if test="${fn:length(product.channelList) > 0}">
                <dl >
                    <dt><span class="pff">购买渠道</span></dt>
                    <dd>
                        <ul>
                            <c:forEach items="${product.channelList}" var="channel">
                                <li data-id="channel-${channel.channelId}"><div class="value_text">${channel.channelName}<span class="gou"></span></div></li>
                            </c:forEach>
                        </ul>
                    </dd>
                </dl>
            </c:if>
            <c:forEach items="${productProperty}" var="p">
                <c:if test="${p.required==1}">
                <dl >
                    <dt><span class="pff">${p.name}</span></dt>
                    <dd>
                        <ul>
                            <c:forEach items="${p.optionList}" var="option">
                                <li data-id="${option.id}"><div class="value_text">${option.name}<span class="gou"></span></div></li>
                            </c:forEach>
                        </ul>
                    </dd>
                </dl>
                </c:if>
            </c:forEach>
        </div>
        <div id="step2" class="step_detail">
            <dl class="checkbox">
                <dt><span class="pff"><c:if test="${not empty type && type !='gjs'}">还有其他问题吗？<br />可多选，若无问题，直接点击“马上询价”</c:if>
                    <c:if test="${not empty type && type =='gjs'}">有无票据(可多选)</c:if>
                <c:if test="${empty type}">缺失的配件(可多选)</c:if></span></dt>
                <dd>
                    <ul id="step2UL">
                    <c:forEach items="${productProperty}" var="p">
                        <c:forEach items="${p.optionList}" var="option">
                            <c:if test="${p.required==0}">
                                <li data-pid="${option.id}"><div class="value_text">${option.name}<span class="gou"></span></div></li>
                            </c:if>
                        </c:forEach>
                    </c:forEach>
                        <%--<li data-vid="2113" data-pid="2112"><div class="value_text">按键不正常<span class="gou"></span></div></li>--%>
                    </ul>
                </dd>
            </dl>
        </div>

        <div id="step3" class="step_region" data-selected="">
            <div class="tips">选择你的所在地区</div>
            <dl>
                <dd>
                    <ul class="cityList clearfix">
                        <li data-cityid="856" class="selected"><div class="value_text">苏州</div></li>
                        <%--<li data-cityid="3236" class=""><div class="value_text">其他城市</div></li>--%>
                    </ul>
                </dd>
            </dl>
        </div>
    </div>
</div>
<div id="footer_next" class="step_detail">马上询价</div>
<div id="footer" class="step_region submit hide">马上询价</div>
<div class="popup-wrap tips-popup-wrap" id="js-tips-popup-wrap">
    <div class="popup">
        <h2></h2>
        <div class="close">确定</div>
    </div>
</div>
<div id="loading" class="hide"><i></i></div>
<form name="product" id="product" method="post" action="${baseurl}product/${product.id}/detail/bj">
    <input type="hidden" name="pricerules" id="pricerules" value=""/>
    <input type="hidden" name="cityId" id="cityId" value=""/>
    <input type="hidden" name="channelId" id="channelId" value=""/>
    <input type="hidden" name="num" id="num" value="${num}"/>
    <input type="hidden" name="isMortgage" id="isMortgage" value="${isMortgage}"/>
</form>

<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/productori.min.js"></script>
<script>$("#loading").hide()
if (typeof String.prototype.startsWith != 'function') {
    String.prototype.startsWith = function (prefix){
        return this.slice(0, prefix.length) === prefix;
    };
}
$("#inputnum").on({
   blur:function(){
       if($(this).val().startsWith('0') && !$(this).val().startsWith("0.")) {
           var nv = ~~$(this).val();
           $(this).val(nv);
       }
   }
});
</script>
</body>

</html>
