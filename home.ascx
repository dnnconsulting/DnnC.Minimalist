<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/Admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width, initial-scale=1.0" />
<dnn:JQUERY ID="dnnjQuery" runat="server" jQueryHoverIntent="true" />

<dnn:DnnCssInclude ID="DnnCssMaterialIcons" runat="server" FilePath="https://fonts.googleapis.com/icon?family=Material+Icons" />
<dnn:DnnCssInclude ID="DnnCssFontawesome" runat="server" FilePath="assets/font-awesome-4.7.0/css/font-awesome.min.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="DnnCssAnimateCss" runat="server" FilePath="assets/css/animate.min.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude ID="DnnCssMinimalist" runat="server" FilePath="assets/css/minimalist.min.css" PathNameAlias="SkinPath" />

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
                
            <!-- start profle functions -->
                <!--#include file = "includes/profile-functions.ascx" -->
            <!-- start profle functions -->
        </div><!-- end : right side function buttons -->
    </div><!-- ./row -->

    <!-- Start : Menu bar off canvas -->
    <div id="slideout" class="slideoutfix">
        <div class="menu-content">            
            <div class="nav-system">
                <!-- start : search area -->
                    <!--#include file = "includes/search.ascx" -->
                <!-- end : search area -->

                <!-- start : nav holder -->
                    <!--#include file = "includes/menu.ascx" -->
                <!-- end : nav holder -->                
            </div>               
        </div>    
    </div><!-- ./End : Menu bar off canvas -->
  
</header><!-- End : Header Section -->

<section>
    <div id="sliderPane" runat="server" />
</section>

<!-- Start : Content Pane : full width -->
 <div class="container">
     <div class="row">
         <div class="col-md-12"><div id="ContentPane" runat="server" /></div>
     </div>     
</div><!--// End : Content Pane : full width -->

<!--#include file = "includes/_content-panes.ascx" -->

<footer>
    <div class="container">
        <div class="row"><div runat="server" id="FooterTop" class="col-md-12" /></div>
        <div class="row">
            <div runat="server" id="FooterLeftPane" class="col-md-4" />
            <div runat="server" id="FooterCenterPane" class="col-md-4" />
            <div runat="server" id="FooterRightPane" class="col-md-4" />
        </div>
    </div>

    <div class="sub-footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 text-left">
                    <ul class="list-inline">
                        <li><dnn:TERMS ID="dnnTerms" runat="server" /></li>
                        <li>|</li>
                        <li><dnn:PRIVACY ID="dnnPrivacy" runat="server" /></li>		    
                    </ul>
                </div>
                <div class="col-md-6 text-right">
                    <dnn:COPYRIGHT ID="dnnCopyright" runat="server" />
                </div>
            </div>            
        </div><!-- ./container-fluid -->
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center dnnc-link">
                    <a href="http://www.dnnconsulting.nl" target="_blank">Dnn theme created by DnnConsulting.nl</a></div>
            </div>
        </div>
    </div><!-- ./sub-footer -->

</footer><!-- ./footer -->

<dnn:DnnJsInclude ID="DnnJsBootstrap" runat="server" FilePath="assets/js/bootstrap.min.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" />
<dnn:DnnJsInclude ID="DnnJsMinimalist" runat="server" FilePath="assets/js/minimalist.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" />