<%--
  User: donny
  Date: 12/17/15
  Time: 17:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no, email=no">
    <title>价格评估</title>
    <link rel="stylesheet" href="${baseurl}res/css/product.css">
    <%--<link rel="stylesheet" href="http://static.huishoubao.com/mobile/css/global-2015-11-03.css">--%>

</head>
<body>
<div class="eval-head-block">
    <div class="eval-head-photo">
        <img src="http://1251010403.cdn.myqcloud.com/1251010403/img/phone/I6S.jpg" alt="">
    </div>
    <div class="eval-head-right">
        <div class="eval-head-max">最高价<span>￥5540</span></div>
        <div class="eval-head-title">苹果 iPhone 6S Plus</div>
    </div>
</div>

<form id="confirm" action="/mobile/evaluate.html?pid=1043" method="POST">

    <input type="hidden" name="itemid" value="29">
    <input type="hidden" name="productname" value="苹果 iPhone 6S Plus">
    <input type="hidden" name="maxprice" value="554000">
    <input type="hidden" name="picurl" value="I6S.jpg">

    <div id="main" class="main mainH400" style="top: 109px; bottom: 50px;">
        <div class="blank">请准确选择，以获取精准报价</div>
        <div id="scroll" style="">
            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="0">
                <div class="eval-block-menu">
                    <div class="menu-num">1<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">购买渠道</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">大陆国行								<input data-role="item-ipt" type="radio" name="qst_110" value="111_大陆国行_购买渠道">
                    </a>
                    <a data-role="item" href="javascript:;">香港行货								<input data-role="item-ipt" type="radio" name="qst_110" value="112_香港行货_购买渠道">
                    </a>
                    <a data-role="item" href="javascript:;">其他								<input data-role="item-ipt" type="radio" name="qst_110" value="113_其他_购买渠道">
                    </a>


                </div>
            </div>
            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="1">
                <div class="eval-block-menu">
                    <div class="menu-num">2<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">颜色</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">银色								<input data-role="item-ipt" type="radio" name="qst_230" value="231_银色_颜色">
                    </a>
                    <a data-role="item" href="javascript:;">深灰色								<input data-role="item-ipt" type="radio" name="qst_230" value="232_深灰色_颜色">
                    </a>
                    <a data-role="item" href="javascript:;">金色								<input data-role="item-ipt" type="radio" name="qst_230" value="233_金色_颜色">
                    </a>
                    <a data-role="item" href="javascript:;">玫瑰金								<input data-role="item-ipt" type="radio" name="qst_230" value="234_玫瑰金_颜色">
                    </a>


                </div>
            </div>
            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="2">
                <div class="eval-block-menu">
                    <div class="menu-num">3<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">内存</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">16G								<input data-role="item-ipt" type="radio" name="qst_360" value="361_16G_内存">
                    </a>
                    <a data-role="item" href="javascript:;">64G								<input data-role="item-ipt" type="radio" name="qst_360" value="362_64G_内存">
                    </a>
                    <a data-role="item" href="javascript:;">128G								<input data-role="item-ipt" type="radio" name="qst_360" value="363_128G_内存">
                    </a>


                </div>
            </div>
            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="3">
                <div class="eval-block-menu">
                    <div class="menu-num">4<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">iCloud</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">iCloud已解除绑定								<input data-role="item-ipt" type="radio" name="qst_410" value="411_iCloud已解除绑定_iCloud">
                    </a>
                    <a data-role="item" href="javascript:;">iCloud无法解除绑定								<input data-role="item-ipt" type="radio" name="qst_410" value="412_iCloud无法解除绑定_iCloud">
                    </a>

                    <p>iCloud无法解除绑定: apple ID密码丢失</p>

                </div>
            </div>
            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="4">
                <div class="eval-block-menu">
                    <div class="menu-num">5<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">开机功能</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">能开机								<input data-role="item-ipt" type="radio" name="qst_1100" value="1101_能开机_开机功能">
                    </a>
                    <a data-role="item" href="javascript:;">不能开机								<input data-role="item-ipt" type="radio" name="qst_1100" value="1102_不能开机_开机功能">
                    </a>


                </div>
            </div>
            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="5">
                <div class="eval-block-menu">
                    <div class="menu-num">6<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">通话功能</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">正常通话								<input data-role="item-ipt" type="radio" name="qst_2100" value="2101_正常通话_通话功能">
                    </a>
                    <a data-role="item" href="javascript:;">无法通话								<input data-role="item-ipt" type="radio" name="qst_2100" value="2102_无法通话_通话功能">
                    </a>


                </div>
            </div>
            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="6">
                <div class="eval-block-menu">
                    <div class="menu-num">7<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">wifi</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">正常								<input data-role="item-ipt" type="radio" name="qst_4100" value="4101_正常_wifi">
                    </a>
                    <a data-role="item" href="javascript:;">不能搜索WIFI信号								<input data-role="item-ipt" type="radio" name="qst_4100" value="4102_不能搜索WIFI信号_wifi">
                    </a>


                </div>
            </div>
            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="7">
                <div class="eval-block-menu">
                    <div class="menu-num">8<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">屏幕外观</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">屏幕完好								<input data-role="item-ipt" type="radio" name="qst_5100" value="5101_屏幕完好_屏幕外观">
                    </a>
                    <a data-role="item" href="javascript:;">屏幕破损或触屏失灵								<input data-role="item-ipt" type="radio" name="qst_5100" value="5102_屏幕破损或触屏失灵_屏幕外观">
                    </a>


                </div>
            </div>
            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="8">
                <div class="eval-block-menu">
                    <div class="menu-num">9<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">液晶显示</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">显示正常								<input data-role="item-ipt" type="radio" name="qst_8300" value="8301_显示正常_液晶显示">
                    </a>
                    <a data-role="item" href="javascript:;">屏幕轻微色差								<input data-role="item-ipt" type="radio" name="qst_8300" value="8302_屏幕轻微色差_液晶显示">
                    </a>
                    <a data-role="item" href="javascript:;">屏幕明显色差								<input data-role="item-ipt" type="radio" name="qst_8300" value="8303_屏幕明显色差_液晶显示">
                    </a>
                    <a data-role="item" href="javascript:;">显示不正常								<input data-role="item-ipt" type="radio" name="qst_8300" value="8304_显示不正常_液晶显示">
                    </a>

                    <p>屏幕轻微色差: 在纯白色背景下，屏幕有轻微发黄、发红、色差等现象</p>
                    <p>屏幕明显色差: 在纯白色背景下，屏幕有明显色差等现象</p>

                </div>
            </div>
            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="9">
                <div class="eval-block-menu">
                    <div class="menu-num">10<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">进水和维修</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">无进水，无维修								<input data-role="item-ipt" type="radio" name="qst_6100" value="6101_无进水，无维修_进水和维修">
                    </a>
                    <a data-role="item" href="javascript:;">有进水								<input data-role="item-ipt" type="radio" name="qst_6100" value="6102_有进水_进水和维修">
                    </a>
                    <a data-role="item" href="javascript:;">有大维修								<input data-role="item-ipt" type="radio" name="qst_6100" value="6103_有大维修_进水和维修">
                    </a>
                    <a data-role="item" href="javascript:;">有小维修								<input data-role="item-ipt" type="radio" name="qst_6100" value="6104_有小维修_进水和维修">
                    </a>

                    <p>有大维修: 更换过非原装屏，维修过主板或主要部件</p>
                    <p>有小维修: 更换过原装屏，维修过开关键、音量键、耳机孔、充电口等小部件，拧过螺丝</p>

                </div>
            </div>
            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="10">
                <div class="eval-block-menu">
                    <div class="menu-num">11<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">成色</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">全新手机								<input data-role="item-ipt" type="radio" name="qst_7100" value="7101_全新手机_成色">
                    </a>
                    <a data-role="item" href="javascript:;">外观完好								<input data-role="item-ipt" type="radio" name="qst_7100" value="7102_外观完好_成色">
                    </a>
                    <a data-role="item" href="javascript:;">外观有瑕疵								<input data-role="item-ipt" type="radio" name="qst_7100" value="7103_外观有瑕疵_成色">
                    </a>
                    <a data-role="item" href="javascript:;">机身变形或断裂								<input data-role="item-ipt" type="radio" name="qst_7100" value="7104_机身变形或断裂_成色">
                    </a>

                    <p>全新手机: 仅拆包装未激活，无任何使用痕迹，配件齐全</p>
                    <p>外观完好: 屏幕完好无划痕，机身有轻微使用痕迹或划痕</p>
                    <p>外观有瑕疵: 有明显使用痕迹、明显划痕、外观有磕碰或明显掉漆</p>

                </div>
            </div>

            <div data-role="menu" class="eval-block js-eval-block js-none-value" data-idx="10">
                <div class="eval-block-menu">
                    <div class="menu-num">12<span></span></div>
                    <div class="menu-tag">
                        <div class="tag-left"></div>
                        <div class="tag-container">成色new</div>
                    </div>
                    <div class="menu-sel"></div>
                </div>
                <div class="eval-detail-container">

                    <a data-role="item" href="javascript:;">全新手机new								<input data-role="item-ipt" type="checxbox" name="qst_81001" value="8101_全新手机_成色">
                    </a>
                    <a data-role="item" href="javascript:;">外观完好new								<input data-role="item-ipt" type="checxbox" name="qst_81002" value="8102_外观完好_成色">
                    </a>
                    <a data-role="item" href="javascript:;">外观有瑕疵new								<input data-role="item-ipt" type="checxbox" name="qst_81003" value="8103_外观有瑕疵_成色">
                    </a>
                    <a data-role="item" href="javascript:;">机身变形或断裂new								<input data-role="item-ipt" type="checxbox" name="qst_81004" value="8104_机身变形或断裂_成色">
                    </a>



                </div>
            </div>
        </div>
    </div>

    <div class="assessment-progress js-assessment-progress ">
        <em>评估进度<i>0</i>%</em>
        <span></span>
    </div>

    <div class="section-white pabot  js-section-white hide">
        <a href="javascript:;" class="btn submitBtn">查看预估价</a>
        <input type="submit" class="collection-btn" value="查看预估价">
    </div>

</form>

<script>
    var __CONFIG__ = {
        'itemListNums': 12
    };
</script>
<script src="${baseurl}res/js/zepto.min.js"></script>
<script src="${baseurl}res/js/product.js"></script>
</body>
</html>
