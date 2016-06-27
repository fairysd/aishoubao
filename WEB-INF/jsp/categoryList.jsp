<%--
  User: donny
  Date: 12/17/15
  Time: 13:34
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="baseurl" value="${pageContext.request.contextPath}/"></c:set>
<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" href="${baseurl}res/css/common.min.css"/>
    <link rel="stylesheet" href="${baseurl}res/css/category.css"/>
    <title>爱收宝 手机版 - 手机回收 | 贵金属回收,最方便可靠的回收平台</title>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport"/>
    <meta charset="UTF-8">
</head>
<body onunload="">
<header id="header">
    <h1>手机</h1>
    <a class="back" href="javascript:history.back()"></a>
    <!-- 全部分类 -->
    <div class="popup">
        <ul>
            <li class="categorie5"><a href="#"><span>笔记本</span></a></li>
            <li class="categorie6"><a href="#"><span>平板电脑</span></a></li>
            <li class="categorie23"><a href="#"><span>单反相机</span></a></li>
            <li class="categorie24"><a href="#"><span>数码相机</span></a></li>
            <li class="categorie25"><a href="#"><span>镜头</span></a></li>
            <li class="categorie26"><a href="#"><span>微单相机</span></a></li>
        </ul>
    </div>
</header>
<div id="body" class="clearfix">
    <!-- 品牌 -->
    <div class="brands">
        <div class="title">品牌</div>
        <div class="brands-content" id="js-brands-content" data-cid="1">
            <ul>
                <c:forEach items="${categories.body}" var="category" varStatus="status">

                    <li class='item<c:if test="${status.first}"><c:set var="firstId" value="${category.id}"/> current</c:if>'
                        data-bid="${category.id}">${category.name}</li>
                </c:forEach>
                <li class="last"></li>
            </ul>
        </div>
    </div>
    <!-- 型号 -->
    <div class="models">
        <div class="title"><span></span>型号</div>
        <div class="models-content" id="js-models-content" data-tbdhref="">
            <ul>
                <li class="last hide"></li>
            </ul>
        </div>
    </div>
</div>


<div id="loading" class="hide"><i></i></div>

<script type="text/javascript" src="${baseurl}res/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/common.min.js"></script>
<script>
    jQuery(function(a) {
        var k = a("#loading"),
                e = a("#js-brands-content"),
                d = e.find("ul").children(),
                h = 0,
                l = a("#js-models-content"),
                m = l.find("ul"),
                i = m.find("li.last").clone().removeClass("hide").get(0).outerHTML,
                b = l.data("tbdhref"),
                f = e.data("cid"),
                c,
                n = 20;
        function j(r, q) {
            k.removeClass("hide");
            var s = Math.floor(m.children().length / n) + 1;
            if (c) {
                url = "http://218.244.135.169:7067/recycle-api/api/productbycat/"+c;
            } else {
                url = "http://218.244.135.169:7067/recycle-api/api/productbycat/${firstId}";

            }
            $.ajax({type:'get',
                url:url,
                dataType:'jsonp',
                        jsonpCallback:'success_jsonpCallback',
                success: function(t) {
//                        console.log(t);
                        var u = t.body,
                                y = u.length,
                                v = "";
                        k.addClass("hide");
                        if (t.success && y) {
                            if (q) {
                                for (var w = 0; w < y; w++) {
                                    var x = u[w];
                                    v += '<li><a href="${baseurl}product/' + x.id + '"><span>' + (n * (s - 1) + w + 1) + "</span>" + x.name + "</a></li>"
                                }
                            } else {
                                for (var w = 0; w < y; w++) {
                                    var x = u[w];
                                    v += '<li><a href="${baseurl}product/' + x.id + '"><span>' + (n * (s - 1) + w + 1) + "</span>" + x.name + "</a></li>"

                                }
                            }
                            if (y < n) {
                                v += i
                            }
                            if (q) {
                                m.html(v)
                            } else {
                                m.append(v)
                            }
                            if (y === n) {
                                r()
                            } else {
                                r(true)
                            }
                        } else {
                            m.append(i)
                        }
                    }}
        )
        }
        function p(q, s, r) {
            q.css({
                "transition-duration": r + "ms",
                transform: "translateY(" + s + "px)"
            })
        }
        e.on("click", "li.item",
                function() {
                    var q = a(this);
                    if (q.hasClass("current")) {
                        return
                    }
                    d.eq(h).removeClass("current");
                    q.addClass("current");
                    h = q.index();
                    c = q.data("bid");
                    m.html("").removeAttr("style");
                    l.unbindScrollUpDown().scrollUpDown({
                        load: j
                    })
                });
        e.scrollUpDown();
        l.scrollUpDown({
            load: j
        });
        var g = a("#header"),
                o = g.find("div.popup");
        g.on("click", "h1",
                function() {
                    o.toggleClass("show");
                    g.toggleClass("active")
                });
        o.on("click",
                function() {
                    o.toggleClass("show");
                    g.toggleClass("active")
                })
    });
</script>
</body>

</html>