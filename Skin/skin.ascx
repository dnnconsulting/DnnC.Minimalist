<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<!--#include file = "includes/system/theme-registers.ascx" -->
<!--#include file = "includes/system/theme-header-includes.ascx" -->

<!-- Start : Header Section -->
<div class="header-spacer"></div>
<header class="controlbarfix navbar-top">

    <div class="row">
        <!-- start : logo -->
        <div class="col-xs-3 logo-holder">
            <dnn:LOGO runat="server" ID="dnnLOGO" />
        </div><!-- end : logo -->

        <!-- start : right side function buttons -->
        <div class="col-xs-9 text-right">                
            <!-- start : menu tab -->
            <div id="PaymentButton" runat="server"></div>
            <!-- end : menu tab -->
        </div><!-- end : right side function buttons -->
    </div><!-- ./row -->

    <!-- Start : Nav Menu canvas -->
    <div class="row">
        <nav id="skin_nav">
            <div id="nav_box">
                <dnn:MENU MenuStyle="navs/StandardMenu" runat="server"></dnn:MENU>
            </div>
        </nav>
    </div>
    <!-- ./End : Nav Menu off canvas -->
  
</header><!-- End : Header Section -->

<!-- Start : Content Pane : full width -->
 <section class="container">
     <div class="row">
         <div class="col-md-12"><div id="ContentPane" runat="server" /></div>
     </div>     
</section><!--// End : Content Pane : full width -->

<!--#include file = "includes/_content-panes.ascx" -->

<!-- Start : footer -->
<footer>
    <!--#include file = "includes/_content-panes-footer.ascx" -->
    <div class="sub-footer">
        <!--#include file = "includes/footer-legal.ascx" -->
    </div><!-- ./sub-footer -->
</footer>
<!-- End : footer -->

<!--#include file = "includes/system/theme-footer-includes.ascx" -->