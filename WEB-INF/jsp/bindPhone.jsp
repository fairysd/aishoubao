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
    <title>绑定手机号</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport"/>
</head>
<body onunload="">

<header id="header">
    <a class="back" href="javascript:history.go(-1)"></a>
    <h1 class="title">绑定手机号</h1>
</header>
<div id="body">
    <div id="login-page">
        <div class="page-top">
            <div class="title">爱收宝</div>
            <div class="icon_close"></div>
        </div>
        <form name="bindForm" id="bindForm" action="${baseurl}member/doBindPhone" method="get">
        <div class="page-body">
            <ul id="login-ways-contents">
                <li id="way-captcha-content" class="selected" data-tid="0">
                        <input class="password" type="hidden" name="openid" id="openid" value="${openid}" readonly>
                    <div class="way-input captcha-mobile">
                        <input type="tel" class="mobile" name="phone" id="phone" placeholder="请输入您的手机号码" />
                    </div>
                </li>
            </ul>
        </div>
        </form>
        <div class="page-bottom">
            <div class="login-btn login"><a href="javascript:submitForm();">确定</a></div>
        </div>
    </div>
</div>
<div id="loading" class="hide"><i></i></div>

<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script>
    function submitForm() {
        if (!$("#openid").val()) {
            return alert("请填写正确的微信OpenId")
        }
        if (!verifyUtils.mobile($("#phone").val())) {
            return alert("请填写正确的手机号码")
        }
        $("#bindForm").submit();
    }
</script>
</body>
</html>
