<%--
  User: donny
  Date: 12/17/15
  Time: 21:09
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
    <link rel="stylesheet" href="${baseurl}res/css/productDetail.css"/>
    <title>钻石回收 | 爱收宝</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport"/>
    <style>
        .pff {
            font-size: 14px;
        }

        .eval-head-block {
            position: relative;
            height: 98px;
            padding: 13px 0;
            border-bottom: 1px solid #d0d0d0;
            background: #fff;
        }

        .eval-head-photo {
            width: 82px;
            height: 60px;
            border: 1px solid #d0d0d0;
            border-radius: 7px;
            position: absolute;
            left: 33px;
            padding: 10px 0;
        }

        .eval-head-photo img {
            margin: 0 auto;
            display: block;
            max-width: 82px;
            height: 76px;
            margin-top: -10px;
        }

        .eval-head-right {
            height: 100%;
            margin-left: 138px;
            margin-right: 33px;
            line-height: 26px;
        }

        .eval-head-max {
            height: 32px;
            line-height: 32px;
            border-bottom: 2px solid #a8a8a8;
            padding-top: 3px;
        }

        .eval-head-max span {
            color: #fd8233;
            font-size: 18px;
        }

        .eval-head-title {
            font-size: 15px;
            color: #434343;
        }

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
            <img src="http://7xonzf.com1.z0.glb.clouddn.com/product/20160121155156_9301.jpg" alt="">
        </div>
        <div class="eval-head-right">
            <div class="eval-head-title">钻石</div>
        </div>
    </div>
    <div id="progressbar_wrap">
        <div id="progressbar_bg"></div>
        <div id="progressbar_cover"></div>
    </div>
</header>
<div id="body">
    <div id="property_list">
        <div id="step0" class="step_detail">
            <div class=""><input placeholder="请输入钻饰总重量(g)" id="totalWeight" class="inputbox" type="number" name="totalWeight" value=""/></div>
            <div class=""><input placeholder="请输入主钻重量(ct)" id="mainWeight" class="inputbox" type="number" name="mainWeight" value=""/></div>
            <div class=""><input placeholder="请输入辅钻重量(ct)" id="secWeight" class="inputbox" type="number" name="secWeight" value=""/></div>

        </div>
        <div id="step1" class="step_detail">
            <dl>
                <dt><span class="pff">贵金属类型</span></dt>
                <dd>
                    <ul>
                        <li data-id="type:"><div class="value_text">无<span class="gou"></span></div></li>
                        <li data-id="type:bcf8086e4f4647fabcfc3409430baa60|7f57ff6c77014bc6960f83e666793a81|9K金"><div class="value_text">9K金<span class="gou"></span></div></li>
                        <li data-id="type:bcf8086e4f4647fabcfc3409430baa60|099eba3afd7643099eedab25ece8f074|12K金"><div class="value_text">12K金<span class="gou"></span></div></li>
                        <li data-id="type:bcf8086e4f4647fabcfc3409430baa60|97c17f89f6f0460587515a216ac6d871|14K金"><div class="value_text">14K金<span class="gou"></span></div></li>
                        <li data-id="type:bcf8086e4f4647fabcfc3409430baa60|85123727da334cb9b4cd5ad06e64f7b3|18K金"><div class="value_text">18K金<span class="gou"></span></div></li>
                        <li data-id="type:bcf8086e4f4647fabcfc3409430baa60|31980152b1f84d69a28b5a2c044f61a5|22K金"><div class="value_text">22K金<span class="gou"></span></div></li>
                        <li data-id="type:21577fd8a5324e62a416978d15367515|ffc6941bfbc640fcbf36bf3e2b03512c|铂金PT850"><div class="value_text">铂金PT850<span class="gou"></span></div></li>
                        <li data-id="type:21577fd8a5324e62a416978d15367515|7c429788ee3a47039b822b027b82a98b|铂金PT900"><div class="value_text">铂金PT900<span class="gou"></span></div></li>
                        <li data-id="type:21577fd8a5324e62a416978d15367515|a69dac3ec31c4eb3944f2cc6a40da2c3|铂金PT950"><div class="value_text">铂金PT950<span class="gou"></span></div></li>
                        <li data-id="type:21577fd8a5324e62a416978d15367515|712d64020db64f36b9ddf71cc5b05847|铂金PT990"><div class="value_text">铂金PT990<span class="gou"></span></div></li>
                        <li data-id="type:094c2f5308514105a862c6299f9d320b|ffc58a73230f42cf908feab5370a1f87|钯金PD900"><div class="value_text">钯金PD900<span class="gou"></span></div></li>
                        <li data-id="type:094c2f5308514105a862c6299f9d320b|5246ce1aeb274f5a9ac8b8abfc48cfe1|钯金PD950"><div class="value_text">钯金PD950<span class="gou"></span></div></li>
                        <li data-id="type:094c2f5308514105a862c6299f9d320b|7ca7e950c98d4921844ad23fb2758306|钯金PD990"><div class="value_text">钯金PD990<span class="gou"></span></div></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt><span class="pff">颜色</span></dt>
                <dd>
                    <ul>
                        <li data-id="Color:D"><div class="value_text">D<span class="gou"></span></div></li>
                        <li data-id="Color:E"><div class="value_text">E<span class="gou"></span></div></li>
                        <li data-id="Color:F"><div class="value_text">F<span class="gou"></span></div></li>
                        <li data-id="Color:G"><div class="value_text">G<span class="gou"></span></div></li>
                        <li data-id="Color:H"><div class="value_text">H<span class="gou"></span></div></li>
                        <li data-id="Color:I"><div class="value_text">I<span class="gou"></span></div></li>
                        <li data-id="Color:J"><div class="value_text">J<span class="gou"></span></div></li>
                        <li data-id="Color:K"><div class="value_text">K<span class="gou"></span></div></li>
                        <li data-id="Color:L"><div class="value_text">L<span class="gou"></span></div></li>
                        <li data-id="Color:M"><div class="value_text">M<span class="gou"></span></div></li>
                        <li data-id="Color:N"><div class="value_text">N<span class="gou"></span></div></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt><span class="pff">净度</span></dt>
                <dd>
                    <ul>
                        <li data-id="Clarity:A"><div class="value_text">Fl<span class="gou"></span></div></li>
                        <li data-id="Clarity:B"><div class="value_text">IF<span class="gou"></span></div></li>
                        <li data-id="Clarity:C"><div class="value_text">VVS1<span class="gou"></span></div></li>
                        <li data-id="Clarity:D"><div class="value_text">VVS2<span class="gou"></span></div></li>
                        <li data-id="Clarity:E"><div class="value_text">VS1<span class="gou"></span></div></li>
                        <li data-id="Clarity:F"><div class="value_text">VS2<span class="gou"></span></div></li>
                        <li data-id="Clarity:G"><div class="value_text">SI1<span class="gou"></span></div></li>
                        <li data-id="Clarity:H"><div class="value_text">SI2<span class="gou"></span></div></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt><span class="pff">切工</span></dt>
                <dd>
                    <ul>
                        <li data-id="Cut:"><div class="value_text">未知<span class="gou"></span></div></li>
                        <li data-id="Cut:A"><div class="value_text">Ideal<span class="gou"></span></div></li>
                        <li data-id="Cut:B"><div class="value_text">EX<span class="gou"></span></div></li>
                        <li data-id="Cut:C"><div class="value_text">VG<span class="gou"></span></div></li>
                        <li data-id="Cut:D"><div class="value_text">GD<span class="gou"></span></div></li>
                        <li data-id="Cut:E"><div class="value_text">Fair<span class="gou"></span></div></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt><span class="pff">抛光</span></dt>
                <dd>
                    <ul>
                        <li data-id="Polish:"><div class="value_text">未知<span class="gou"></span></div></li>
                        <li data-id="Polish:A"><div class="value_text">Ideal<span class="gou"></span></div></li>
                        <li data-id="Polish:B"><div class="value_text">EX<span class="gou"></span></div></li>
                        <li data-id="Polish:C"><div class="value_text">VG<span class="gou"></span></div></li>
                        <li data-id="Polish:D"><div class="value_text">GD<span class="gou"></span></div></li>
                        <li data-id="Polish:E"><div class="value_text">Fair<span class="gou"></span></div></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt><span class="pff">对称</span></dt>
                <dd>
                    <ul>
                        <li data-id="Symmetry:"><div class="value_text">未知<span class="gou"></span></div></li>
                        <li data-id="Symmetry:A"><div class="value_text">Ideal<span class="gou"></span></div></li>
                        <li data-id="Symmetry:B"><div class="value_text">EX<span class="gou"></span></div></li>
                        <li data-id="Symmetry:C"><div class="value_text">VG<span class="gou"></span></div></li>
                        <li data-id="Symmetry:D"><div class="value_text">GD<span class="gou"></span></div></li>
                        <li data-id="Symmetry:E"><div class="value_text">Fair<span class="gou"></span></div></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt><span class="pff">荧光</span></dt>
                <dd>
                    <ul>
                        <li data-id="Fluor:"><div class="value_text">未知<span class="gou"></span></div></li>
                        <li data-id="Fluor:A"><div class="value_text">None<span class="gou"></span></div></li>
                        <li data-id="Fluor:B"><div class="value_text">Faint<span class="gou"></span></div></li>
                        <li data-id="Fluor:C"><div class="value_text">Medium<span class="gou"></span></div></li>
                        <li data-id="Fluor:D"><div class="value_text">Strong<span class="gou"></span></div></li>
                        <li data-id="Fluor:E"><div class="value_text">Very Strong<span class="gou"></span></div></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt><span class="pff">证书</span></dt>
                <dd>
                    <ul>
                        <li data-id="Cert:"><div class="value_text">无<span class="gou"></span></div></li>
                        <li data-id="Cert:A"><div class="value_text">GIA<span class="gou"></span></div></li>
                        <li data-id="Cert:B"><div class="value_text">HRD<span class="gou"></span></div></li>
                        <li data-id="Cert:C"><div class="value_text">IGI<span class="gou"></span></div></li>
                        <li data-id="Cert:D"><div class="value_text">国检<span class="gou"></span></div></li>
                    </ul>
                </dd>
            </dl>
        </div>
        <div id="step2" class="step_detail">
            <dl class="checkbox">
                <%--<dt><span class="pff">切工</span></dt>--%>
                <%--<dd>--%>
                    <%--<ul id="step2UL">--%>
                        <%--<li data-pid="A"><div class="value_text">Ideal<span class="gou"></span></div></li>--%>
                        <%--<li data-pid="B"><div class="value_text">Ideal<span class="gou"></span></div></li>--%>
                        <%--<li data-pid="C"><div class="value_text">Ideal<span class="gou"></span></div></li>--%>
                        <%--<li data-pid="D"><div class="value_text">Ideal<span class="gou"></span></div></li>--%>
                        <%--<li data-pid="E"><div class="value_text">Ideal<span class="gou"></span></div></li>--%>
                    <%--</ul>--%>
                <%--</dd>--%>
            </dl>
        </div>

        <div id="step3" class="step_region" data-selected="">
            <div class="tips">选择你的所在地区</div>
            <dl>
                <dd>
                    <ul class="cityList clearfix">
                        <li data-cityid="856" class="">
                            <div class="value_text">苏州</div>
                        </li>
                        <%--<li data-cityid="3236" class=""><div class="value_text">其他城市</div></li>--%>
                    </ul>
                </dd>
            </dl>
        </div>
    </div>
</div>
<div id="footer_next" class="step_detail" data-pid="17458" data-mid="">马上询价</div>
<div id="footer" class="step_region submit hide" data-pid="17458" data-mid="">马上询价</div>

<div id="loading" class="hide"><i></i></div>
<form name="product" id="product" method="post" action="${baseurl}product/diamond/bj">
    <input type="hidden" name="productId" id="productId" value="f9f0bc057cca42109822b7a497de5b3d"/>
    <input type="hidden" name="pricerules" id="pricerules" value=""/>
    <input type="hidden" name="cityId" id="cityId" value=""/>
    <input type="hidden" name="gjsWeight" id="gjsWeight" value=""/>
    <input type="hidden" name="mainAvg" id="mainAvg" value=""/>
    <input type="hidden" name="secPrice" id="secPrice" value=""/>
    <input type="hidden" name="zsFlage" id="zsFlage" value="0"/>
    <input type="hidden" name="num" id="num" value=""/>
    <input type="hidden" name="diamondDesc" id="diamondDesc" value=""/>
    <input type="hidden" name="isMortgage" id="isMortgage" value="${isMortgage}"/>
</form>

<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/diamond.min.js"></script>
<script>$("#loading").hide()</script>
</body>

</html>
