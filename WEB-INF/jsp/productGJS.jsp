<%--
  User: donny
  Date: 12/20/15
  Time: 11:44
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
    <link rel="stylesheet" href="${baseurl}res/css/member.min.css"/>
    <title>爱收宝</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport"/>
</head>
<body onunload="">

<header id="header">
    <a class="back" href="javascript:history.go(-1)"></a>

    <h1 class="title">贵金属-${product.name}</h1>
</header>
<div id="body">
    <div id="login-page">
        <div class="page-top" style="height: 30px;">
        </div>
        <div class="page-body">
            <form name="gjsForm" id="gjsForm" action="${baseurl}product/${product.id}/detail" method="get">
                <ul id="login-ways-contents">
                    <li id="way-captcha-content" class="selected" data-tid="0">
                        <div class="way-input captcha-text">
                            <input class="password" type="text" name="num" id="num" placeholder="请输入重量（单位：克）">
                        </div>
                    </li>
                </ul>
            </form>
        </div>
        <div class="page-bottom">
            <div id="login-btn" class="login" onclick="submitForm()">下一步</div>
            <br/>
        </div>
    </div>
</div>
<div id="loading" class="hide"><i></i></div>

<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script>
    function submitForm() {
        var num = $("#num").val();
        if (!num || isNaN(num) || num <= 0 || num > 10000000) {
            alert('请填写正确的重量(不超过10000000克)!');
            return false;
        }
        $("#gjsForm").submit();
    }
</script>
</body>
</html>
