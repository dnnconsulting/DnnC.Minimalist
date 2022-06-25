<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<!--#include file = "includes/system/theme-registers.ascx" -->
<!--#include file = "includes/system/theme-header-includes.ascx" -->

<!-- Start : Header Section -->
<div class="header-spacer"></div>
<header class="controlbarfix navbar-fixed-top">

    <div class="row">
        <!-- start : logo -->
        <div class="col-xs-3 logo-holder">
            <dnn:LOGO runat="server" ID="dnnLOGO" />
        </div><!-- end : logo -->

        <!-- start : right side function buttons -->
        <div class="col-xs-9 text-right">                
            <!-- start : menu tab -->  
                <!--#include file = "includes/hamburger.ascx" -->                
            <!-- end : menu tab -->
        </div><!-- end : right side function buttons -->
    </div><!-- ./row -->

    <!-- Start : Menu bar off canvas -->
    <div id="slideout" class="slideoutfix">
        <div class="menu-content">            
            <div class="nav-system">
                <!-- start : nav holder -->
                    <!--#include file = "includes/menu.ascx" -->
                <!-- end : nav holder -->                
            </div>               
        </div>    
    </div><!-- ./End : Menu bar off canvas -->
  
</header><!-- End : Header Section -->
<!-- Start : Hero Image Pane : full width -->
<section class="container-fluid">
     <div class="row">
         <div class="col-md-12"><div id="HeroImage" runat="server" /></div>
     </div>     
</section>
<!--// End : Hero Image Pane : full width -->
<!-- Start : Content Pane : full width -->
<section class="container-fluid">
     <div class="row">
         <div class="col-md-12"><div id="ContentPane" runat="server" /></div>
     </div>     
</section>
<!--// End : Content Pane : full width -->
<!-- Start : IC Detail and Image Pane : 9/3 width -->
<section class="container-fluid">
    <div class="row">
        <div class="col-md-9" runat="server" id="ICDetail"></div>
        <div class="col-md-3" runat="server" id="ICImage"></div>
    </div>
</section>
<!--// End : IC Detail and Image Pane : 9/3 width -->
<!-- Start : Marketing Pane : full width -->
<section class="container-fluid">
     <div class="row">
         <div class="col-md-12"><div id="Marketing" runat="server" /></div>
     </div>     
</section>
<!--// End : Marketing Pane : full width -->
<!-- Start : Address and Services Pane : 6/6 width -->
<section class="container-fluid">
    <div class="row">
        <div class="col-md-6" runat="server" id="Address"></div>
        <div class="col-md-6" runat="server" id="Services"></div>
    </div>
</section>
<!--// End : Address and Services Pane : 6/6 width -->
<!-- Start : footer -->
<footer>
    <!--#include file = "includes/_content-panes-footer.ascx" -->
    <div class="sub-footer">
        <!--#include file = "includes/footer-legal.ascx" -->
    </div><!-- ./sub-footer -->
</footer>
<!-- End : footer -->

<!--#include file = "includes/system/theme-footer-includes.ascx" -->