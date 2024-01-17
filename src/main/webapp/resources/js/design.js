/*-------------------------------------------------
Content Java Script Jquery
Version : 1.0
Author :
Last update : 2021. 08. 13.
-------------------------------------------------*/

//gnb
$(function(){
    $('.gnb > li').mouseover(function(){
        $(this).children(".depth2").addClass("on");
    });
    $('.gnb > li').mouseleave(function(){
        $(this).children(".depth2").removeClass("on");
    });
    $('.gnb > li').focusin(function(){
        $(this).children(".depth2").addClass("on");
    });
    $('.gnb > li').focusout(function(){
        //$(this).children(".depth2").removeClass("on");
    });
});

$(function(){
    $('.depth3').prev().addClass("plus");
    $('.depth2 > .inner > ul > li > a').click(function(){
        $('.depth3').slideUp();
        if(!$(this).next().is(":visible")) {
            $(this).next().slideDown();
        }
    });
});


//location
$(function(){
    $('.location > li > a').click(function(){
        $(".location_down").slideUp();
        if(!$(this).next().is(":visible")){
            $(this).next().slideDown();
        }
    });
});


//sitemap
function sitemapOpen() {
    $(".sitemap_wrap").show().animate({opacity: 1}, 300);
}
function sitemapClose() {
    $('.sitemap_wrap').hide().animate({opacity: 0}, 300);
}


//top
function moveTop() {
    $("html").animate({scrollTop: 0}, 300);
}



//family
$(function(){
    $(".family_site a").click(function(){
        $(this).next().slideUp();
        if(!$(this).next().is(":visible")) {
            $(this).next().slideDown();
        }
    });
});


$(document).ready(function() {
	$('#eye').on("mousedown", function(){
		$('#userPw').attr('type',"text");
	}).on('mouseup mouseleave', function() {
		$('#userPw').attr('type',"password");
	});
});

// mobile
$(function(){

    var windowWidth = $(window).width();

    if(windowWidth <= 1200){
        $('.sitemap').addClass('m_gnb');
        $('.sitemap > li > a').attr('href', 'javascript:void(0);');
        $('.sitemap.m_gnb .depth2').find('a').removeClass('plus');

        $('.m_table').append('<span class="m_table_icon"></span>');

        $('.view_con').find('iframe').each(function(e){
            e = $(this);
            var iframeTitle = e.attr('title');
            if(iframeTitle.indexOf('video') >= 0) {
                e.wrap('<div class="video_wrap"></div>');
            }
        });
    }

    // gnb
    $('.m_gnb > li > a').click(function(){
        $('.m_gnb > li').removeClass('on');
        $('.m_gnb > li > .depth2').slideUp(300);
        if(!$(this).next().is(':visible')){
            $(this).parent().addClass('on');
            $(this).next().slideDown(300);
        }
    });

    // table
    $('.m_table').on('touchstart', function(){
        $(this).find('.m_table_icon').hide();
    });
    $('.m_table').click(function(){
        $(this).find('.m_table_icon').hide();
    });

});