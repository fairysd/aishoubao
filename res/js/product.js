_EVENTTYPE_ = 'tap';
// window.onerror = function(a, b, c) {
// 	alert([a, b, c]);
// };
if (!String.prototype.trim) {
    // Make sure we trim BOM and NBSP
    var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
    String.prototype.trim = function() {
        return this.replace(rtrim, '');
    };
}

if (!Function.prototype.bind) {
    Function.prototype.bind = function(oThis) {
        if (typeof this !== 'function') {
            // closest thing possible to the ECMAScript 5
            // internal IsCallable function
            throw new TypeError('Function.prototype.bind - what is trying to be bound is not callable');
        }

        var aArgs = Array.prototype.slice.call(arguments, 1),
            fToBind = this,
            fNOP = function() {},
            fBound = function() {
                return fToBind.apply(this instanceof fNOP ? this : oThis,
                    aArgs.concat(Array.prototype.slice.call(arguments)));
            };

        fNOP.prototype = this.prototype;
        fBound.prototype = new fNOP();

        return fBound;
    };
}

function isType(obj, type) {
    return Object.prototype.toString.call(obj) == '[object ' + type + ']';
}

function isArray(arr) {
    return isType(arr, 'Array');
}




//progress
var assessment = {
    config: {},
    dom: {},
    init: function() {
        this.initParams(__CONFIG__);
        this.initDom();
        this.bindEvent();
    },
    initParams: function(config) {
        $.extend(this.config, config);
        this.config.progress = 0; // 进度
        this.config.percentage = (this.config.progress / config.itemListNums);
    },
    initDom: function() {
        var dom = this.dom;
        dom.main = $("#main");
        dom.scroll = $('#scroll');
        dom.progress = $(".js-assessment-progress span");
        dom.progressV = $(".js-assessment-progress em i");
        dom.progressEm = $(".js-assessment-progress em");
        dom.progressBlock = $('.js-assessment-progress');
        dom.submit = $(".js-section-white");
        $(".js-eval-block").eq(0).addClass('expand');
    },
    bindEvent: function() {
        var dom = this.dom;
        var that = this;
        var backurl = this.getQueryString('backurl');

        dom.main.on(_EVENTTYPE_, '[data-role="menu"]', function(e) {
            e.preventDefault();
            that.tapMenu($(this), e);
        });
        dom.main.on(_EVENTTYPE_, '[data-role="item"]', function(e) {
            e.preventDefault();
            that.tapItem($(this));
        });
        window.onpopstate = function(e) {
            if (e.state.page == 1) {
                location.href = 'http://'+location.host+decodeURIComponent(backurl);
            };
        };

        // 果粉查询后退按钮定制化
        if (backurl) {
            history.pushState({page: 1}, "title 1");
            history.pushState({page: 2}, "title 1");
        }
    },
    getQueryString: function(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]);
        return '';
    },
    tapMenu: function(elem, e) {
        var dom = this.dom;
        var role = e && $(e.target).data('role');
        var idx = elem.data('idx');
        if (role && (role == 'item' || role == "item-ipt" || idx === undefined)) {
            return;
        };
        var mainElem = dom.main.get(0);
        var oldScrollTop = mainElem.scrollTop;
        var scrollTop = 36 + (45 * idx);

        // dom.scroll.css('-webkit-transition', 'none 0s ease');
        // dom.scroll.css('-webkit-transform', 'translate(0, -' + oldScrollTop + 'px)');
        // mainElem.scrollTop = 0;

        dom.scroll.css('-webkit-transition', 'all .3s ease-out');
        dom.scroll.css('-webkit-transform', 'translate(0,-' + (scrollTop - oldScrollTop) + 'px)');
        setTimeout(function() {
            dom.scroll.css('-webkit-transition', 'none 0s ease');
            dom.scroll.css('-webkit-transform', 'translate(0, 0px)');
            mainElem.scrollTop = scrollTop;
        }, 300);

        elem.addClass('expand').siblings().removeClass('expand');

    },
    tapItem: function(elem) {
        var dom = this.dom;
        var that = this;
        var parent = elem.parent();

        elem.addClass('on').siblings().removeClass('on');

        elem.find('input').get(0).checked = true;
        parent.hasClass('active');
        parent.parent().removeClass('js-none-value');
        var noneValue = $('.js-none-value').eq(0);
        if(noneValue.length){
            setTimeout(function() {
                that.tapMenu(noneValue);
            }, 100);
        }


        if (!parent.prev().hasClass('active')) {
            this.config.progress = this.config.progress + 1;

            this.config.percentage = Math.ceil(this.config.progress / this.config.itemListNums * 100);

            dom.progressV.text(this.config.percentage);
            dom.progress.css('width', this.config.percentage + '%');

            if (this.config.percentage >= 100) {
                this.config.progress = 100;
                dom.progressEm.html("");
                dom.progressBlock.addClass('hide');
                dom.submit.removeClass('hide');
            };
        }
        parent.prev().addClass('active').find('.menu-sel').text(elem.text());
    }
};


$(function() {
    assessment.init();
});