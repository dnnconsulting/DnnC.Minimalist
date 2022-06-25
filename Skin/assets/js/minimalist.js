$(document).ready(function ($) {
    "use strict";

    $(function () {
        if ($('form').hasClass('showControlBar')) $('.controlbarfix').addClass('admin');
        if ($('form').hasClass('showControlBar')) $('.slideoutfix').addClass('adminSlideOut');
    });
 
    $("#showLanguages").click(function () {
        $("#divLanguages").slideToggle(500);
    });

    $("#showFunctions").click(function () {
        $("#mobile-functions-holder").slideToggle(500);
    });


});