!function(t){function e(o){if(n[o])return n[o].exports;var a=n[o]={i:o,l:!1,exports:{}};return t[o].call(a.exports,a,a.exports,e),a.l=!0,a.exports}var n={};e.m=t,e.c=n,e.d=function(t,n,o){e.o(t,n)||Object.defineProperty(t,n,{configurable:!1,enumerable:!0,get:o})},e.n=function(t){var n=t&&t.__esModule?function(){return t.default}:function(){return t};return e.d(n,"a",n),n},e.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},e.p="",e(e.s=44)}({44:function(t,e,n){t.exports=n(45)},45:function(t,e){$(document).ready(function(){$("#plugin-list").on("click",".change_plugin_status",function(t){t.preventDefault();var e=$(this);0==e.data("status")?e.text("Activating..."):e.text("Deactivating..."),$.ajax({url:Botble.routes.change_plugin_status+"?alias="+e.data("plugin"),type:"GET",success:function(t){t.error?Botble.showNotice("error",t.message,Botble.languages.notices_msg.error):(1==e.data("status")?e.data("status",0).text("Activate"):e.data("status",1).text("Deactivate"),Botble.showNotice("success",t.message,Botble.languages.notices_msg.success),window.location.reload())},error:function(t){Botble.handleError(t)}})})})}});