<%--
  User: donny
  Date: 12/18/15
  Time: 13:19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css">
    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm-extend.min.css">
    <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
    <link rel="stylesheet" href="${baseurl}res/css/productBj.min.css"/>
    <title>询价结果</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport" />
</head>
<body onunload="">
<!-- 报价 -->
<div class="header-wrap">
    <header id="header">
        <h1><span style="color:white;">￥${quote}</span></h1>
        <a class="back" href="javascript:history.go(-1)"></a>
        <div class="line"></div>
    </header>
</div>
<div id="body">
    <div class="region">
        <h2 id="city">苏州</h2>
    </div>

    <!-- 质检服务 -->
    <div class="inquiry-service show" id="js-inquiry-service">
        <h2>爱收宝官网提供专业的质检服务</h2>
        <ul>
            <!-- 不同地区的回收方式也不一样 -->
            <li class="inquiry-service-shop">
                <h3>正规安全</h3>
                <p>正规公司注册备案,信息安全可靠</p>
            </li>
            <li class="inquiry-service-face">
                <h3>闪电付款</h3>
                <p>爱收宝收到产品将在48小时内完成付款</p>
            </li>
            <li class="inquiry-service-express">
                <h3>专业质检</h3>
                <p>爱收宝提供专业质检服务</p>
            </li>
            <li class="inquiry-service-price">
                <h3>价格公道</h3>
                <p>爱收宝保证同类产品全国最高价回收</p>
            </li>
            <li class="inquiry-service-ysbh">
                <h3>隐私保护</h3>
                <p>爱收宝全力保护用户隐私,让您无忧</p>
            </li>
        </ul>
    </div>

    <%--<!-- 爱收宝隐私安全三重保护 -->--%>
    <%--<div class="privacy">--%>
        <%--<h2><span>爱收宝隐私安全三重保护</span></h2>--%>
        <%--<ul class="clearfix">--%>
            <%--<li class="privacy-item1">当面确认<br>数据清除</li>--%>
            <%--<li class="privacy-item2">专业包装<br>确保安全</li>--%>
            <%--<li class="privacy-item3">专业工具<br>数据粉碎</li>--%>
        <%--</ul>--%>
        <%--<p></p>--%>
    <%--</div>--%>
</div>

<!-- footer 价格 -->
<footer id="footer" class="clearfix  ">
    <a id="estimate" class="submit" href="${baseurl}login.jsp" style="color:white;">立即回收</a>
</footer>
<form name="productBjForm" id="productBjForm" method="post" action="${baseurl}estimate/">
    <input type="hidden" name="productId" id="productId" value="${productId}"/>
    <input type="hidden" name="modeId" id="modeId" value="${modeId}"/>
    <input type="hidden" name="estimatePrice" id="estimatePrice" value="${quote}"/>
    <input type="hidden" name="pricerules" id="pricerules" value="${pricerules}"/>
    <input type="hidden" name="cityId" id="cityId" value="${cityId}"/>
    <input type="hidden" name="num" id="num" value="${num}"/>
    <input type="hidden" name="diamondDesc" id="diamondDesc" value="${diamondDesc}"/>
    <input type="hidden" name="cityinput" id="cityinput" value=""/>
    <input type="hidden" name="areainput" id="areainput" value=""/>
</form>
<div id="loading" class="hide"><i></i></div>
<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm-extend.min.js' charset='utf-8'></script>
<script type="text/javascript" src="${baseurl}res/js/sm-city-picker.min.js" charset="utf-8"></script>


<%--<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>--%>
<%--<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>--%>
<!--<script>
    function submitForm() {
        $("#productBjForm").submit();
    }
</script>-->
<script>
    $("#city").cityPicker({
        toolbarTemplate: '<header class="bar bar-nav">\
    <button class="button button-link pull-right close-picker">确定</button>\
    <h1 class="title">选择城市</h1>\
    </header>',
        onClose:function(a, c, d) {
            console.log(a);
            var d = a.cols;
            var province = "";
            var city = "";
            var area = "";
//            alert(d.length);
            if (d[2].value != "") {
                province = d[0].value;
                city = d[1].value;
                area = d[2].value;
            } else {
                city = d[0].value;
                area = d[1].value;
            }
            $("#cityinput").attr("value", city);
            $("#areainput").attr("value", area);
            $("#city").html(province + " " + city + " " + area);
        }
    });
</script>
 <script>
 	$(document).ready(function(){
 		//  检查是否登陆状态
        $.ajax({
            url: "http://shop.aishoubao.com/userheader.php?ajax=1",
            dataType: "jsonp",
            jsonp:'callback',
            async: true,
            data: { },
            type: "GET",
            success: function(data) {
                userinfo = data;
                userinfo = JSON.stringify(userinfo);
                userinfo = $.parseJSON(userinfo);
                console.log(userinfo);
                console.log(userinfo.userId);
                if(data.userId) {
//                  $('#loginUserInfo').html('<a href="http://shop.aishoubao.com/user.php" target="_top">'+data.userInfo.username+'</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://shop.aishoubao.com/user.php?act=logout&backurl=http://www.aishoubao.com" target="_top">退出</a>');
//              		alert(1)
                } else {
//                  $('#loginUserInfo').html('<a href="http://shop.aishoubao.com/user.php?backurl=http://www.aishoubao.com" target="_top">登录</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://shop.aishoubao.com/user.php?act=register&backurl=http://www.aishoubao.com" target="_top">注册</a>');
//              	alert(2)
                }
            },
        });
        // 提交按钮
         $("#estimate").click(function(){
//				  	$("#productBjForm").submit();
	    	if(userinfo.userId){
        		$("#productBjForm").submit();
        	}
            else{
            alert("请您先登录或注册");
            $("#productBjForm").submit();
            	layer.open({
		      			type:2,
		      			area:["491px","591px"],
		      			content:[this.href,"no"],
		      			shadeClose:true,
		      			title:false
      				})            	
            }
             return false;
	    	});

    });
    
 </script>
</body>
</html>
