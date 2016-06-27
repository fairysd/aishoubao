<%--
  User: donny
  Date: 12/20/15
  Time: 11:44
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
    <link rel="stylesheet" href="${baseurl}res/css/member.min.css"/>
    <title>登录</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport"/>
</head>
<body onunload="">

<header id="header">
    <a class="back" href="javascript:history.go(-1)"></a>
    <h1 class="title">登录</h1>
</header>
<div id="body">
    <div id="login-page">
        <div class="page-top">
            <div class="title">爱收宝</div>
            <div class="icon_close"></div>
        </div>
        <div class="page-body">
            <ul id="login-ways-contents">
                <li id="way-captcha-content" class="selected" data-tid="0">
                    <div class="way-input captcha-mobile">
                        <input type="tel" class="mobile" placeholder="请输入您的手机号码" />
                    </div>
                    <div class="way-input captcha-text">
                        <input class="password" type="text" placeholder="请输入短信验证码">
                        <span>获取验证码</span>
                    </div>
                </li>

            </ul>
        </div>
        <div class="page-bottom">
            <div id="login-btn" class="login" data-redirect="${baseurl}member/">登录</div><br/>
            <div class="login-btn login"><a href="https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx7d7c7e8f0b6d7a25&redirect_uri=http%3a%2f%2fm.aishoubao.com%2faishoubao%2fweixin%2fprocess&response_type=code&scope=snsapi_userinfo&state=111#wechat_redirect">使用微信帐号登录</a></div>
        </div>
    </div>
</div>
<div id="loading" class="hide"><i></i></div>
<script>var baseurl="${baseurl}";</script>
<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/login.min.js"></script>
</body>
</html>
