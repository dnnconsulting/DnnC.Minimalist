jQuery(document).ready(function ($) {

    function HoverOver() {
        $(this).addClass('rmhover') .find(".subMenu").stop().animate({height:'show'},200);
    }

    function HoverOut() {
         $(this).removeClass('rmhover').find(".subMenu").animate({height: 'hide'},200, function() {
		  $(this).hide(); 
	  });
    }
	
	function HoverOversub() {
      $(this).find(".level1").stop().animate({height: 'show'},200);
    	// SubMenu right align
			var sublevel = $(".level1", $(this));
			if(sublevel.length > 0){
				var offset = sublevel.offset();
				var rightEage = offset.left + sublevel.outerWidth();
				if(rightEage > $(window).width()){
					sublevel.css("left", -182 + "px");
					sublevel.find(".level2").css("left", -182 + "px");
					sublevel.find(".level3").css("left", -182 + "px");
					sublevel.find(".subarrow").css("background", "none");
				}
			}
		
		}

    function HoverOutsub() {
         $(this).find(".level1").stop().animate({height: 'hide'},200, function() {
		  $(this).hide(); 
	  });
    }
	
	var config = {
        sensitivity: 2,
        interval:110,
        over: HoverOver,
        timeout:110,
        out: HoverOut
    };
    var configsub = {
        sensitivity: 2,
        interval:110,
        over: HoverOversub,
        timeout:110,
        out: HoverOutsub
    };

    if ($(window).width() >= 768){
        $("#standardMenu .rootMenu > li.haschild").hoverIntent(config);
		$("#standardMenu .subMenu li.haschild").hoverIntent(configsub);
    }else if ($(window).width() < 767){
		$("#standardMenu .rootMenu > li").each(function(i){
			var i = i + 1;
			$("#standardMenu li.child-"+i+" .navarrow").click(function(event) {
			  event.preventDefault();
			  $("#standardMenu li.child-"+i+" .subMenu").slideToggle(100);
			  $(this).toggleClass("navarrow2"); return false;
			});	
		});
	}

   // For Win8 Tablet
   $('#standardMenu .haschild li').attr("aria-haspopup","false");
   $('#standardMenu .haschild li').attr("role","menu");
   $('#standardMenu .haschild').attr("aria-haspopup","true");
   $('#standardMenu .haschild').attr("role","menuitem");
   
   //From Mobile Menu to Tablet/Computer
	$(window).resize(function() {
		if( $(window).width() >= 768 ) {
			$("#standardMenu .rootMenu > li.haschild").hoverIntent(config);
			$("#standardMenu .subMenu li.haschild").hoverIntent(configsub);	
		}
	});
});