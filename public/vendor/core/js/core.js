var App=function(){var e,t=!1,a=!1,i=!1,o=!1,n=[],s={blue:"#89C4F4",red:"#F3565D",green:"#1bbc9b",purple:"#9b59b6",grey:"#95a5a6",yellow:"#F8CB00"},r=function(){"rtl"===$("body").css("direction")&&(t=!0),a=!!navigator.userAgent.match(/MSIE 8.0/),i=!!navigator.userAgent.match(/MSIE 9.0/),o=!!navigator.userAgent.match(/MSIE 10.0/),o&&$("html").addClass("ie10"),(o||i||a)&&$("html").addClass("ie")},l=function(){for(var e=0;e<n.length;e++){n[e].call()}},c=function(){var e,t=$(window).width();if(a){var i;$(window).resize(function(){i!=document.documentElement.clientHeight&&(e&&clearTimeout(e),e=setTimeout(function(){l()},50),i=document.documentElement.clientHeight)})}else $(window).resize(function(){$(window).width()!=t&&(t=$(window).width(),e&&clearTimeout(e),e=setTimeout(function(){l()},50))})},d=function(){$().iCheck&&$(".icheck").each(function(){var e=$(this).attr("data-checkbox")?$(this).attr("data-checkbox"):"icheckbox_minimal-grey",t=$(this).attr("data-radio")?$(this).attr("data-radio"):"iradio_minimal-grey";e.indexOf("_line")>-1||t.indexOf("_line")>-1?$(this).iCheck({checkboxClass:e,radioClass:t,insert:'<div class="icheck_line-icon"></div>'+$(this).attr("data-label")}):$(this).iCheck({checkboxClass:e,radioClass:t})})},h=function(){$().confirmation&&$("[data-toggle=confirmation]").confirmation({btnOkClass:"btn btn-sm btn-success",btnCancelClass:"btn btn-sm btn-danger"})},p=function(){$("body").on("shown.bs.collapse",".accordion.scrollable",function(e){App.scrollTo($(e.target))})},u=function(){if(encodeURI(location.hash)){var e=encodeURI(location.hash.substr(1));$('a[href="#'+e+'"]').parents(".tab-pane:hidden").each(function(){var e=$(this).attr("id");$('a[href="#'+e+'"]').click()}),$('a[href="#'+e+'"]').click()}$().tabdrop&&$(".tabbable-tabdrop .nav-pills, .tabbable-tabdrop .nav-tabs").tabdrop({text:'<i class="fa fa-ellipsis-v"></i>&nbsp;<i class="fa fa-angle-down"></i>'})},f=function(){$("body").on("hide.bs.modal",function(){$(".modal:visible").size()>1&&!1===$("html").hasClass("modal-open")?$("html").addClass("modal-open"):$(".modal:visible").size()<=1&&$("html").removeClass("modal-open")}),$("body").on("show.bs.modal",".modal",function(){$(this).hasClass("modal-scroll")&&$("body").addClass("modal-open-noscroll")}),$("body").on("hidden.bs.modal",".modal",function(){$("body").removeClass("modal-open-noscroll")}),$("body").on("hidden.bs.modal",".modal:not(.modal-cached)",function(){$(this).removeData("bs.modal")})},g=function(){$(".tooltips").tooltip(),$(".portlet > .portlet-title .fullscreen").tooltip({trigger:"hover",container:"body",title:"Fullscreen"}),$(".portlet > .portlet-title > .tools > .reload").tooltip({trigger:"hover",container:"body",title:"Reload"}),$(".portlet > .portlet-title > .tools > .remove").tooltip({trigger:"hover",container:"body",title:"Remove"}),$(".portlet > .portlet-title > .tools > .config").tooltip({trigger:"hover",container:"body",title:"Settings"}),$(".portlet > .portlet-title > .tools > .collapse, .portlet > .portlet-title > .tools > .expand").tooltip({trigger:"hover",container:"body",title:"Collapse/Expand"})},m=function(){$("body").on("click",".dropdown-menu.hold-on-click",function(e){e.stopPropagation()})},b=function(){"function"==typeof autosize&&autosize(document.querySelectorAll("textarea.autosizeme"))},v=function(){$(".popovers").popover(),$(document).on("click.bs.popover.data-api",function(t){e&&e.popover("hide")})},y=function(){App.initSlimScroll(".scroller")},w=function(){(a||i)&&$("input[placeholder]:not(.placeholder-no-fix), textarea[placeholder]:not(.placeholder-no-fix)").each(function(){var e=$(this);""===e.val()&&""!==e.attr("placeholder")&&e.addClass("placeholder").val(e.attr("placeholder")),e.focus(function(){e.val()==e.attr("placeholder")&&e.val("")}),e.blur(function(){""!==e.val()&&e.val()!=e.attr("placeholder")||e.val(e.attr("placeholder"))})})},C=function(){$().select2&&($.fn.select2.defaults.set("theme","bootstrap"),$(".select2me").select2({placeholder:"Select",width:"auto",allowClear:!0}))},k=function(){$("[data-auto-height]").each(function(){var e=$(this),t=$("[data-height]",e),a=0,i=e.attr("data-mode"),o=parseInt(e.attr("data-offset")?e.attr("data-offset"):0);t.each(function(){"height"==$(this).attr("data-height")?$(this).css("height",""):$(this).css("min-height","");var e="base-height"==i?$(this).outerHeight():$(this).outerHeight(!0);e>a&&(a=e)}),a+=o,t.each(function(){"height"==$(this).attr("data-height")?$(this).css("height",a):$(this).css("min-height",a)}),e.attr("data-related")&&$(e.attr("data-related")).css("height",e.height())})};return{init:function(){r(),c(),d(),y(),C(),m(),u(),g(),v(),p(),f(),h(),b(),this.addResizeHandler(k),w()},setLastPopedPopover:function(t){e=t},addResizeHandler:function(e){n.push(e)},runResizeHandlers:function(){l()},scrollTo:function(e,t){var a=e&&e.size()>0?e.offset().top:0;e&&($("body").hasClass("page-header-fixed")?a-=$(".page-header").height():$("body").hasClass("page-header-top-fixed")?a-=$(".page-header-top").height():$("body").hasClass("page-header-menu-fixed")&&(a-=$(".page-header-menu").height()),a+=t||-1*e.height()),$("html,body").animate({scrollTop:a},"slow")},initSlimScroll:function(e){$().slimScroll&&$(e).each(function(){if(!$(this).attr("data-initialized")){var e;e=$(this).attr("data-height")?$(this).attr("data-height"):$(this).css("height"),$(this).slimScroll({allowPageScroll:!0,size:"7px",color:$(this).attr("data-handle-color")?$(this).attr("data-handle-color"):"#bbb",wrapperClass:$(this).attr("data-wrapper-class")?$(this).attr("data-wrapper-class"):"slimScrollDiv",railColor:$(this).attr("data-rail-color")?$(this).attr("data-rail-color"):"#eaeaea",position:t?"left":"right",height:e,alwaysVisible:"1"==$(this).attr("data-always-visible"),railVisible:"1"==$(this).attr("data-rail-visible"),disableFadeOut:!0}),$(this).attr("data-initialized","1")}})},destroySlimScroll:function(e){$().slimScroll&&$(e).each(function(){if("1"===$(this).attr("data-initialized")){$(this).removeAttr("data-initialized"),$(this).removeAttr("style");var e={};$(this).attr("data-handle-color")&&(e["data-handle-color"]=$(this).attr("data-handle-color")),$(this).attr("data-wrapper-class")&&(e["data-wrapper-class"]=$(this).attr("data-wrapper-class")),$(this).attr("data-rail-color")&&(e["data-rail-color"]=$(this).attr("data-rail-color")),$(this).attr("data-always-visible")&&(e["data-always-visible"]=$(this).attr("data-always-visible")),$(this).attr("data-rail-visible")&&(e["data-rail-visible"]=$(this).attr("data-rail-visible")),$(this).slimScroll({wrapperClass:$(this).attr("data-wrapper-class")?$(this).attr("data-wrapper-class"):"slimScrollDiv",destroy:!0});var t=$(this);$.each(e,function(e,a){t.attr(e,a)})}})},scrollTop:function(){App.scrollTo()},startPageLoading:function(e){e&&e.animate?($(".page-spinner-bar").remove(),$("body").append('<div class="page-spinner-bar"><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div>')):($(".page-loading").remove(),$("body").append('<div class="page-loading"><img src="'+this.getGlobalImgPath()+'loading-spinner-grey.gif"/>&nbsp;&nbsp;<span>'+(e&&e.message?e.message:"Loading...")+"</span></div>"))},stopPageLoading:function(){$(".page-loading, .page-spinner-bar").remove()},getActualVal:function(e){return e=$(e),e.val()===e.attr("placeholder")?"":e.val()},getURLParameter:function(e){var t,a,i=window.location.search.substring(1),o=i.split("&");for(t=0;t<o.length;t++)if(a=o[t].split("="),a[0]==e)return unescape(a[1]);return null},isTouchDevice:function(){try{return document.createEvent("TouchEvent"),!0}catch(e){return!1}},getViewPort:function(){var e=window,t="inner";return"innerWidth"in window||(t="client",e=document.documentElement||document.body),{width:e[t+"Width"],height:e[t+"Height"]}},getUniqueID:function(e){return"prefix_"+Math.floor(Math.random()*(new Date).getTime())},isIE8:function(){return a},isIE9:function(){return i},isRTL:function(){return t},getBrandColor:function(e){return s[e]?s[e]:""},getResponsiveBreakpoint:function(e){var t={xs:480,sm:768,md:992,lg:1200};return t[e]?t[e]:0}}}();jQuery(document).ready(function(){App.init()});var Layout=function(){var e=App.getResponsiveBreakpoint("md"),t=function(){var t,a=$(".page-content"),i=$(".page-sidebar"),n=$("body");if(!0===n.hasClass("page-footer-fixed")&&!1===n.hasClass("page-sidebar-fixed")){var s=App.getViewPort().height-$(".page-footer").outerHeight()-$(".page-header").outerHeight(),r=i.outerHeight();r>s&&(s=r+$(".page-footer").outerHeight()),a.height()<s&&a.css("min-height",s)}else{if(n.hasClass("page-sidebar-fixed"))t=o(),!1===n.hasClass("page-footer-fixed")&&(t-=$(".page-footer").outerHeight());else{var l=$(".page-header").outerHeight(),c=$(".page-footer").outerHeight();t=App.getViewPort().width<e?App.getViewPort().height-l-c:i.height()+20,t+l+c<=App.getViewPort().height&&(t=App.getViewPort().height-l-c)}a.css("min-height",t)}},a=function(t,a,i){var o=location.hash.toLowerCase(),n=$(".page-sidebar-menu");"click"===t||"set"===t?a=$(a):"match"===t&&n.find("li > a").each(function(){var e=$(this).attr("ui-sref");if(i&&e){if(i.is(e))return void(a=$(this))}else{var t=$(this).attr("href");if(t&&(t=t.toLowerCase(),t.length>1&&o.substr(1,t.length-1)==t.substr(1)))return void(a=$(this))}}),a&&0!=a.size()&&"javascript:;"!=a.attr("href")&&"javascript:;"!=a.attr("ui-sref")&&"#"!=a.attr("href")&&"#"!=a.attr("ui-sref")&&(!1===n.hasClass("page-sidebar-menu-hover-submenu")?n.find("li.nav-item.open").each(function(){var e=!1;$(this).find("li").each(function(){var t=$(this).attr("ui-sref");if(i&&t){if(i.is(t))return void(e=!0)}else if($(this).find(" > a").attr("href")===a.attr("href"))return void(e=!0)}),!0!==e&&($(this).removeClass("open"),$(this).find("> a > .arrow.open").removeClass("open"),$(this).find("> .sub-menu").slideUp())}):n.find("li.open").removeClass("open"),n.find("li.active").removeClass("active"),n.find("li > a > .selected").remove(),a.parents("li").each(function(){$(this).addClass("active"),$(this).find("> a > span.arrow").addClass("open"),1===$(this).parent("ul.page-sidebar-menu").size()&&$(this).find("> a").append('<span class="selected"></span>'),1===$(this).children("ul.sub-menu").size()&&$(this).addClass("open")}),"click"===t&&App.getViewPort().width<e&&$(".page-sidebar").hasClass("in")&&$(".page-header .responsive-toggler").click())},i=function(){$(".page-sidebar-mobile-offcanvas .responsive-toggler").click(function(e){$("body").toggleClass("page-sidebar-mobile-offcanvas-open"),e.preventDefault(),e.stopPropagation()}),$("body").hasClass("page-sidebar-mobile-offcanvas")&&$(document).on("click",function(e){$("body").hasClass("page-sidebar-mobile-offcanvas-open")&&0===$(e.target).closest(".page-sidebar-mobile-offcanvas .responsive-toggler").length&&0===$(e.target).closest(".page-sidebar-wrapper").length&&($("body").removeClass("page-sidebar-mobile-offcanvas-open"),e.preventDefault(),e.stopPropagation())}),$(".page-sidebar-menu").on("click","li > a.nav-toggle, li > a > span.nav-toggle",function(a){var i=$(this).closest(".nav-item").children(".nav-link");if(!(App.getViewPort().width>=e&&!$(".page-sidebar-menu").attr("data-initialized")&&$("body").hasClass("page-sidebar-closed")&&1===i.parent("li").parent(".page-sidebar-menu").size())){var o=i.next().hasClass("sub-menu");if(!(App.getViewPort().width>=e&&1===i.parents(".page-sidebar-menu-hover-submenu").size())){if(!1===o)return void(App.getViewPort().width<e&&$(".page-sidebar").hasClass("in")&&$(".page-header .responsive-toggler").click());var n=i.parent().parent(),s=i,r=$(".page-sidebar-menu"),l=i.next(),c=r.data("auto-scroll"),d=parseInt(r.data("slide-speed"));r.data("keep-expanded")||(n.children("li.open").children("a").children(".arrow").removeClass("open"),n.children("li.open").children(".sub-menu:not(.always-open)").slideUp(d),n.children("li.open").removeClass("open"));l.is(":visible")?($(".arrow",s).removeClass("open"),s.parent().removeClass("open"),l.slideUp(d,function(){!0===c&&!1===$("body").hasClass("page-sidebar-closed")&&($("body").hasClass("page-sidebar-fixed")?r.slimScroll({scrollTo:s.position().top}):App.scrollTo(s,-200)),t()})):o&&($(".arrow",s).addClass("open"),s.parent().addClass("open"),l.slideDown(d,function(){!0===c&&!1===$("body").hasClass("page-sidebar-closed")&&($("body").hasClass("page-sidebar-fixed")?r.slimScroll({scrollTo:s.position().top}):App.scrollTo(s,-200)),t()})),a.preventDefault()}}}),$(document).on("click",".page-header-fixed-mobile .page-header .responsive-toggler",function(){App.scrollTop()}),s(),$(".page-sidebar").on("click",".sidebar-search .remove",function(e){e.preventDefault(),$(".sidebar-search").removeClass("open")}),$(".page-sidebar .sidebar-search").on("keypress","input.form-control",function(e){if(13==e.which)return $(".sidebar-search").submit(),!1}),$(".sidebar-search .submit").on("click",function(e){e.preventDefault(),$("body").hasClass("page-sidebar-closed")&&!1===$(".sidebar-search").hasClass("open")?(1===$(".page-sidebar-fixed").size()&&$(".page-sidebar .sidebar-toggler").click(),$(".sidebar-search").addClass("open")):$(".sidebar-search").submit()}),0!==$(".sidebar-search").size()&&($(".sidebar-search .input-group").on("click",function(e){e.stopPropagation()}),$("body").on("click",function(){$(".sidebar-search").hasClass("open")&&$(".sidebar-search").removeClass("open")}))},o=function(){var e=App.getViewPort().height-$(".page-header").outerHeight(!0);return $("body").hasClass("page-footer-fixed")&&(e-=$(".page-footer").outerHeight()),e},n=function(){var a=$(".page-sidebar-menu");if(t(),0===$(".page-sidebar-fixed").size())return void App.destroySlimScroll(a);App.getViewPort().width>=e&&!$("body").hasClass("page-sidebar-menu-not-fixed")&&(a.attr("data-height",o()),App.destroySlimScroll(a),App.initSlimScroll(a),t())},s=function(){$("body").hasClass("page-sidebar-fixed")&&$(".page-sidebar").on("mouseenter",function(){$("body").hasClass("page-sidebar-closed")&&$(this).find(".page-sidebar-menu").removeClass("page-sidebar-menu-closed")}).on("mouseleave",function(){$("body").hasClass("page-sidebar-closed")&&$(this).find(".page-sidebar-menu").addClass("page-sidebar-menu-closed")})},r=function(){$("body").on("click",".sidebar-toggler",function(e){var t=$("body"),a=$(".page-sidebar"),i=$(".page-sidebar-menu");$(".sidebar-search",a).removeClass("open"),t.hasClass("page-sidebar-closed")?(t.removeClass("page-sidebar-closed"),i.removeClass("page-sidebar-menu-closed"),Cookies&&Cookies.set("sidebar_closed","0")):(t.addClass("page-sidebar-closed"),i.addClass("page-sidebar-menu-closed"),t.hasClass("page-sidebar-fixed")&&i.trigger("mouseleave"),Cookies&&Cookies.set("sidebar_closed","1")),$(window).trigger("resize")})},l=function(){$(".page-header").on("click",'.hor-menu a[data-toggle="tab"]',function(e){e.preventDefault();var t=$(".hor-menu .nav"),a=t.find("li.current");$("li.active",a).removeClass("active"),$(".selected",a).remove();var i=$(this).parents("li").last();i.addClass("current"),i.find("a:first").append('<span class="selected"></span>')}),$(".page-header").on("click",".search-form",function(e){$(this).addClass("open"),$(this).find(".form-control").focus(),$(".page-header .search-form .form-control").on("blur",function(e){$(this).closest(".search-form").removeClass("open"),$(this).unbind("blur")})}),$(".page-header").on("keypress",".hor-menu .search-form .form-control",function(e){if(13==e.which)return $(this).closest(".search-form").submit(),!1}),$(".page-header").on("mousedown",".search-form.open .submit",function(e){e.preventDefault(),e.stopPropagation(),$(this).closest(".search-form").submit()}),$(document).on("click",".mega-menu-dropdown .dropdown-menu",function(e){e.stopPropagation()})},c=function(){$("body").on("shown.bs.tab",'a[data-toggle="tab"]',function(){t()})},d=function(){navigator.userAgent.match(/iPhone|iPad|iPod/i)?$(window).bind("touchend touchcancel touchleave",function(e){$(this).scrollTop()>300?$(".scroll-to-top").fadeIn(500):$(".scroll-to-top").fadeOut(500)}):$(window).scroll(function(){$(this).scrollTop()>300?$(".scroll-to-top").fadeIn(500):$(".scroll-to-top").fadeOut(500)}),$(".scroll-to-top").click(function(e){return e.preventDefault(),$("html, body").animate({scrollTop:0},500),!1})},h=function(){$(".full-height-content").each(function(){var t,a=$(this);if(t=App.getViewPort().height-$(".page-header").outerHeight(!0)-$(".page-footer").outerHeight(!0)-$(".page-title").outerHeight(!0)-$(".page-bar").outerHeight(!0),a.hasClass("portlet")){var i=a.find(".portlet-body");App.destroySlimScroll(i.find(".full-height-content-body")),t=t-a.find(".portlet-title").outerHeight(!0)-parseInt(a.find(".portlet-body").css("padding-top"))-parseInt(a.find(".portlet-body").css("padding-bottom"))-5,App.getViewPort().width>=e&&a.hasClass("full-height-content-scrollable")?(t-=35,i.find(".full-height-content-body").css("height",t),App.initSlimScroll(i.find(".full-height-content-body"))):i.css("min-height",t)}else App.destroySlimScroll(a.find(".full-height-content-body")),App.getViewPort().width>=e&&a.hasClass("full-height-content-scrollable")?(t-=35,a.find(".full-height-content-body").css("height",t),App.initSlimScroll(a.find(".full-height-content-body"))):a.css("min-height",t)})};return{initHeader:function(){l()},setSidebarMenuActiveLink:function(e,t){a(e,t,null)},initSidebar:function(e){n(),i(),r(),App.addResizeHandler(n)},initContent:function(){h(),c(),App.addResizeHandler(t),App.addResizeHandler(h)},initFooter:function(){d()},init:function(){this.initHeader(),this.initSidebar(null),this.initContent(),this.initFooter()},fixContentHeight:function(){t()},initFixedSidebarHoverEffect:function(){s()},initFixedSidebar:function(){n()}}}();jQuery(document).ready(function(){Layout.init()});var Botble=Botble||{};Botble.blockUI=function(e){e=$.extend(!0,{},e);var t="";if(t=e.animate?'<div class="loading-message '+(e.boxed?"loading-message-boxed":"")+'"><div class="block-spinner-bar"><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div></div>':e.iconOnly?'<div class="loading-message '+(e.boxed?"loading-message-boxed":"")+'"><img src="/vendor/core/images/loading-spinner-blue.gif" align=""></div>':e.textOnly?'<div class="loading-message '+(e.boxed?"loading-message-boxed":"")+'"><span>&nbsp;&nbsp;'+(e.message?e.message:"LOADING...")+"</span></div>":'<div class="loading-message '+(e.boxed?"loading-message-boxed":"")+'"><img src="/vendor/core/images/loading-spinner-blue.gif" align=""><span>&nbsp;&nbsp;'+(e.message?e.message:"LOADING...")+"</span></div>",e.target){var a=$(e.target);a.height()<=$(window).height()&&(e.cenrerY=!0),a.block({message:t,baseZ:e.zIndex?e.zIndex:1e3,centerY:void 0!==e.cenrerY&&e.cenrerY,css:{top:"10%",border:"0",padding:"0",backgroundColor:"none"},overlayCSS:{backgroundColor:e.overlayColor?e.overlayColor:"#555",opacity:e.boxed?.05:.1,cursor:"wait"}})}else $.blockUI({message:t,baseZ:e.zIndex?e.zIndex:1e3,css:{border:"0",padding:"0",backgroundColor:"none"},overlayCSS:{backgroundColor:e.overlayColor?e.overlayColor:"#555",opacity:e.boxed?.05:.1,cursor:"wait"}})},Botble.unblockUI=function(e){e?$(e).unblock({onUnblock:function(){$(e).css("position",""),$(e).css("zoom","")}}):$.unblockUI()},Botble.showNotice=function(e,t,a){toastr.clear(),toastr.options={closeButton:!0,positionClass:"toast-bottom-right",onclick:null,showDuration:1e3,hideDuration:1e3,timeOut:1e4,extendedTimeOut:1e3,showEasing:"swing",hideEasing:"linear",showMethod:"fadeIn",hideMethod:"fadeOut"},toastr[e](t,a)},Botble.handleError=function(e){void 0!==e.responseJSON?void 0!==e.responseJSON.message?Botble.showNotice("error",e.responseJSON.message,Botble.languages.notices_msg.error):$.each(e.responseJSON,function(e,t){$.each(t,function(e,t){Botble.showNotice("error",t,Botble.languages.notices_msg.error)})}):Botble.showNotice("error",e.statusText,Botble.languages.notices_msg.error)},Botble.countCharacter=function(){$.fn.charCounter=function(e,t){function a(a,s){a=$(a),a.val().length>e&&(a.val(a.val().substring(0,e)),t.pulse&&!o&&i(s,!0)),t.delay>0?(n&&window.clearTimeout(n),n=window.setTimeout(function(){s.html(t.format.replace(/%1/,e-a.val().length))},t.delay)):s.html(t.format.replace(/%1/,e-a.val().length))}function i(e,t){o&&(window.clearTimeout(o),o=null),e.animate({opacity:.1},100,function(){$(this).animate({opacity:1},100)}),t&&(o=window.setTimeout(function(){i(e)},200))}e=e||100,t=$.extend({container:"<span></span>",classname:"charcounter",format:"(%1 "+Botble.languages.system.character_remain+")",pulse:!0,delay:0},t);var o,n;return this.each(function(){var e;t.container.match(/^<.+>$/)?($(this).next("."+t.classname).remove(),e=$(t.container).insertAfter(this).addClass(t.classname)):e=$(t.container),$(this).unbind(".charCounter").bind("keydown.charCounter",function(){a(this,e)}).bind("keypress.charCounter",function(){a(this,e)}).bind("keyup.charCounter",function(){a(this,e)}).bind("focus.charCounter",function(){a(this,e)}).bind("mouseover.charCounter",function(){a(this,e)}).bind("mouseout.charCounter",function(){a(this,e)}).bind("paste.charCounter",function(){var t=this;setTimeout(function(){a(t,e)},10)}),this.addEventListener&&this.addEventListener("input",function(){a(this,e)},!1),a(this,e)})},$(document).on("click","input[data-counter], textarea[data-counter]",function(){$(this).charCounter($(this).data("counter"),{container:"<small></small>"})})},Botble.manageSidebar=function(){var e=$("body"),t=$(".navigation"),a=$(".sidebar-content");t.find("li.active").parents("li").addClass("active"),t.find("li").has("ul").children("a").parent("li").addClass("has-ul"),$(document).on("click",".sidebar-toggle",function(i){i.preventDefault(),e.toggleClass("sidebar-narrow"),e.hasClass("sidebar-narrow")?(t.children("li").children("ul").css("display",""),a.hide().delay().queue(function(){$(this).show().addClass("animated fadeIn").clearQueue()})):(t.children("li").children("ul").css("display","none"),t.children("li.active").children("ul").css("display","block"),a.hide().delay().queue(function(){$(this).show().addClass("animated fadeIn").clearQueue()}))})},Botble.initDatepicker=function(e){jQuery().bootstrapDP&&$(document).find(e).bootstrapDP({maxDate:0,changeMonth:!0,changeYear:!0,autoclose:!0})},Botble.initResources=function(){jQuery().select2&&($(document).find(".select-multiple").select2({width:"100%",allowClear:!0,placeholder:$(this).data("placeholder")}),$(document).find(".select-search-full").select2({width:"100%"}),$(document).find(".select-full").select2({width:"100%",minimumResultsForSearch:-1})),jQuery().timepicker&&jQuery().timepicker&&($(".timepicker-default").timepicker({autoclose:!0,showSeconds:!0,minuteStep:1,defaultTime:!1}),$(".timepicker-no-seconds").timepicker({autoclose:!0,minuteStep:5,defaultTime:!1}),$(".timepicker-24").timepicker({autoclose:!0,minuteStep:5,showSeconds:!1,showMeridian:!1,defaultTime:!1})),jQuery().colorpicker&&$(".color-picker").colorpicker({}),this.initDatepicker(".datepicker"),jQuery().fancybox&&($(".iframe-btn").fancybox({width:"900px",height:"700px",type:"iframe",autoScale:!1,openEffect:"none",closeEffect:"none",overlayShow:!0,overlayOpacity:.7}),$(".fancybox").fancybox({openEffect:"none",closeEffect:"none",overlayShow:!0,overlayOpacity:.7,helpers:{media:{}}})),$(".styled").uniform(),$(".tip").tooltip({placement:"top"}),jQuery().areYouSure&&$("form").areYouSure(),Botble.callScroll($(".list-item-checkbox"))},Botble.callScroll=function(e){e.mCustomScrollbar({axis:"yx",theme:"minimal-dark",scrollButtons:{enable:!0},callbacks:{whileScrolling:function(){e.find(".tableFloatingHeaderOriginal").css({top:-this.mcs.top+"px"})}}}),e.stickyTableHeaders({scrollableArea:e,fixedOffset:2})},Botble.handleWaypoint=function(){$("#waypoint").length>0&&new Waypoint({element:document.getElementById("waypoint"),handler:function(e){"down"===e?$(".form-actions-fixed-top").removeClass("hidden"):$(".form-actions-fixed-top").addClass("hidden")}})},Botble.handleCounterup=function(){$().counterUp&&$('[data-counter="counterup"]').counterUp({delay:10,time:1e3})},jQuery().datepicker.noConflict&&($.fn.bootstrapDP=$.fn.datepicker.noConflict()),Botble.initMediaIntegrate=function(){jQuery().rvMedia&&($('[data-type="rv-media-standard-alone-button"]').rvMedia({multiple:!1,onSelectFiles:function(e,t){$(t.data("target")).val(e[0].url)}}),$(document).find(".btn_gallery").rvMedia({multiple:!1,onSelectFiles:function(e,t){switch(t.data("action")){case"media-insert-ckeditor":$.each(e,function(e,a){var i=a.url;"youtube"===a.type?(i=i.replace("watch?v=","embed/"),CKEDITOR.instances[t.data("result")].insertHtml('<iframe width="420" height="315" src="'+i+'" frameborder="0" allowfullscreen></iframe>')):"image"===a.type?CKEDITOR.instances[t.data("result")].insertHtml('<img src="'+i+'" alt="'+a.name+'" />'):CKEDITOR.instances[t.data("result")].insertHtml('<a href="'+i+'">'+a.name+"</a>")});break;case"media-insert-tinymce":$.each(e,function(e,t){var a=t.url,i="";"youtube"===t.type?(a=a.replace("watch?v=","embed/"),i='<iframe width="420" height="315" src="'+a+'" frameborder="0" allowfullscreen></iframe>'):i="image"===t.type?'<img src="'+a+'" alt="'+t.name+'" />':'<a href="'+a+'">'+t.name+"</a>",tinymce.activeEditor.execCommand("mceInsertContent",!1,i)});break;case"select-image":var a=_.first(e);t.closest(".image-box").find(".image-data").val(a.url),t.closest(".image-box").find(".preview_image").attr("src",a.thumb),t.closest(".image-box").find(".preview-image-wrapper").show();break;case"attachment":var a=_.first(e);t.closest(".attachment-wrapper").find(".attachment-url").val(a.url),$(".attachment-details").html('<a href="'+a.url+'" target="_blank">'+a.url+"</a>")}}}),$(document).on("click",".btn_remove_image",function(e){e.preventDefault(),$(this).closest(".image-box").find(".preview-image-wrapper").hide(),$(this).closest(".image-box").find(".image-data").val("")}),$(document).on("click",".btn_remove_attachment",function(e){e.preventDefault(),$(this).closest(".attachment-wrapper").find(".attachment-details a").remove(),$(this).closest(".attachment-wrapper").find(".attachment-url").val("")}))},Botble.getViewPort=function(){var e=window,t="inner";return"innerWidth"in window||(t="client",e=document.documentElement||document.body),{width:e[t+"Width"],height:e[t+"Height"]}},Botble.handlePortletTools=function(){$("body").on("click",".portlet > .portlet-title .fullscreen",function(e){e.preventDefault();var t=$(this).closest(".portlet");if(t.hasClass("portlet-fullscreen"))$(this).removeClass("on"),t.removeClass("portlet-fullscreen"),$("body").removeClass("page-portlet-fullscreen"),t.children(".portlet-body").css("height","auto");else{var a=Botble.getViewPort().height-t.children(".portlet-title").outerHeight()-parseInt(t.children(".portlet-body").css("padding-top"))-parseInt(t.children(".portlet-body").css("padding-bottom"));$(this).addClass("on"),t.addClass("portlet-fullscreen"),$("body").addClass("page-portlet-fullscreen"),t.children(".portlet-body").css("height",a)}}),$("body").on("click",".portlet > .portlet-title > .tools > .collapse, .portlet .portlet-title > .tools > .expand",function(e){e.preventDefault();var t=$(this).closest(".portlet").children(".portlet-body");$(this).hasClass("collapse")?($(this).removeClass("collapse").addClass("expand"),t.slideUp(200)):($(this).removeClass("expand").addClass("collapse"),t.slideDown(200))})},Botble.searchMenu=function(){$("#inputString").keyup(function(){var e=$(this).val();$("ul.page-sidebar-menu li").each(function(){e&&$(this).text().search(new RegExp(e,"i"))<0&&$(this).find("a").attr("href").search(new RegExp(e,"i"))<0?$(this).hide():$(this).show()})})},$(document).ready(function(){Botble.countCharacter(),Botble.manageSidebar(),Botble.initResources(),Botble.handleWaypoint(),Botble.handleCounterup(),Botble.initMediaIntegrate(),Botble.handlePortletTools(),Botble.searchMenu()}),$.ajaxSetup({headers:{"X-CSRF-TOKEN":$('meta[name="csrf-token"]').attr("content")}});