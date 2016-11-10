<%@ Control AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>

<div class="DnnContainer">
    <h1><dnn:TITLE runat="server" id="dnnTITLE"/></h1>
    <div id="ContentPane" runat="server" class="contentpane"></div>
	<div class="clear"></div>
</div>