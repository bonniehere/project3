$(window).scroll(function () {
    if ($(window).scrollTop() >= 190) {
        $("header").css("background-color", "rgba(255,255,255,0.9)");
        $("header").css("border-bottom", "1px solid rgba(0,0,0,0.1)");
        $(".category ul li a").css("color", "rgba(0,0,0,1)");
        $(".cate_pc a").css("color", "rgba(255,255,255,1)");
    } else {
        $("header").css("background-color", "rgba(255,255,255,0.9)");
        $("header").css("border-bottom", "1px solid rgba(0,0,0,0.1)");
        $(".category ul li a").css("color", "rgba(0,0,0,1)");
        $(".cate_pc a").css("color", "rgba(255,255,255,1)");
    }
})