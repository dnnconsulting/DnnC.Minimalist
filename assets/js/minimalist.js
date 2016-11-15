$(document).ready(function ($) {
    "use strict";

    $(function () {
        if ($('form').hasClass('showControlBar')) $('.controlbarfix').addClass('admin');
        if ($('form').hasClass('showControlBar')) $('.slideoutfix').addClass('adminSlideOut');
    });


    //***** Menu tab
    $(function () {
        $('#menuTab').toggle(function () {
            $("#slideout").animate({ right: '0px' }, { queue: false, duration: 500 });
        }, function () {
            $("#slideout").animate({ right: '-350px' }, { queue: false, duration: 500 });
        });
    });


    document.querySelector("#menuTab")
        .addEventListener("click", function () {
        this.classList.toggle("active");
    });


    $(function () {
        $('#menuTab').on('click', function () {
            $('.bar').toggleClass('animate');
        })
    });
 
    $("#showLanguages").click(function () {
        $("#divLanguages").slideToggle(500);
    });

    $("#showFunctions").click(function () {
        $("#mobile-functions-holder").slideToggle(500);
    });


});