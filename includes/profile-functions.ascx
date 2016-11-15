<% if Localization.GetEnabledLocales().Count > 1 Then  %>
    <ul class="list-inline functions"> 
        <li class="text-center">
            <a href="#"  id="showLanguages"><i class="material-icons">language</i></a>
            <div id="divLanguages">
                <dnn:LANGUAGE runat="server" id="dnnLanguage"  showMenu="False" showLinks="True" />
            </div>   
        </li>
    </ul>
<% End If %>

<ul class="list-inline functions">    
    <li class="text-center">
        <dnn:LOGIN ID="dnnLogin" 
            CssClass="LoginLink" 
            runat="server" 
            LegacyMode="false" 
            LogoffText="&lt;i class=&quot;material-icons&quot;&gt;lock&lt;/i&gt;"
            Text="&lt;i class=&quot;material-icons&quot;&gt;lock_open&lt;/i&gt;" />
    </li>
</ul>

<%  If DotNetNuke.Security.PortalSecurity.IsInRole("Registered Users") Then %>
    <ul class="list-inline functions visible-xs"> 
        <li class="text-center">
            <a href="#"  id="showFunctions"><i class="material-icons">touch_app</i></a>
            <div id="mobile-functions-holder">                
                <div class="profile-holder"><dnn:USER ID="USER3" runat="server" LegacyMode="false" CssClass="profile" /></div>
                <div class="notification-holder"><dnn:USER ID="USER1" runat="server" LegacyMode="false" CssClass="notifications" /></div>
                <div class="message-holder"><dnn:USER ID="USER2" runat="server" LegacyMode="false" CssClass="messages" /></div>
            </div>   
        </li>
    </ul>
<% End If %>


<%  If DotNetNuke.Security.PortalSecurity.IsInRole("Registered Users") Then %>
    <div class="notification-holder hidden-xs"><dnn:USER ID="dnnUserNotifications" runat="server" LegacyMode="false" CssClass="notifications" /></div>
    <div class="message-holder hidden-xs"><dnn:USER ID="dnnUserMessages" runat="server" LegacyMode="false" CssClass="messages" /></div>
    <div class="profile-holder hidden-xs"><dnn:USER ID="dnnUserProfile" runat="server" LegacyMode="false" CssClass="profile" /></div>
<% Else %>
    <div class="register-holder"><dnn:USER ID="dnnUserRegister" runat="server" LegacyMode="false" CssClass="register" Text="&lt;i class=&quot;material-icons&quot;&gt;perm_identity&lt;/i&gt;" /></div>
<% End If %>