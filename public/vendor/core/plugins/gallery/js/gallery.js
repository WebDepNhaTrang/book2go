function initGallery(){var e,o=document.querySelector("#list-photo");o&&imagesLoaded(o,function(){e=new Masonry(o)}),jQuery("#list-photo").lightGallery({loop:!0,thumbnail:!0,fourceAutoply:!1,autoplay:!1,pager:!1,speed:300,scale:1,keypress:!0}),jQuery(document).on("click",".lg-toogle-thumb",function(){$(document).find(".lg-sub-html").toggleClass("inactive")})}$(document).ready(function(){initGallery()});