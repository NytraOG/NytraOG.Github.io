﻿<%@ Control Language="C#" CodeBehind="DefaultVerticalTemplateContent.ascx.cs" ClassName="DefaultVerticalTemplateContent" Inherits="Frontend.Web.DefaultVerticalTemplateContent" %>
<%@ Import Namespace="DevExpress.ExpressApp" %>
<%@ Import Namespace="Frontend.Web.UICustomization" %>
<%@ Register Assembly="DevExpress.ExpressApp.Web.v22.1, Version=22.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.ExpressApp.Web.Templates.ActionContainers"
TagPrefix="xaf" %>
<%@ Register Assembly="DevExpress.ExpressApp.Web.v22.1, Version=22.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.ExpressApp.Web.Templates"
TagPrefix="xaf" %>
<%@ Register Assembly="DevExpress.ExpressApp.Web.v22.1, Version=22.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.ExpressApp.Web.Controls"
TagPrefix="xaf" %>
<%@ Register Assembly="DevExpress.ExpressApp.Web.v22.1, Version=22.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.ExpressApp.Web.Templates.Controls"
TagPrefix="xaf" %>

<script src="<%= ResolveUrl("~/UICustomization/uiCustomization.js") %>"></script>
<xaf:XafUpdatePanel ID="UPPopupWindowControl" runat="server">
    <xaf:XafPopupWindowControl runat="server" ID="PopupWindowControl"/>
</xaf:XafUpdatePanel>
<% if (!bool.Parse(ConfigurationManager.AppSettings["IsProduction"]))
   { %>
    <div class="coorga_environment_hint">
        <%= ConfigurationManager.AppSettings["Environment"] %>
    </div>
<% } %>
<div id="headerDivWithShadow" style="z-index: 2000">
</div>
<div id="TestheaderTableDiv" style="background-color: white; position: absolute; display: none; right: 0px; z-index: 100000">
</div>
<div class="white borderBottom width100" id="headerTableDiv">
    <div class="paddings <%= AdditionalClass %>" style="margin: auto" id="headerTableSizeLimit">
        <table id="headerTable" class="headerTable xafAlignCenter white width100 customMaxWithMarker <%= AdditionalClass %>">
            <tbody>
            <tr>
                <td class="xafNavToggleConteiner">
                    <div id="toggleNavigation" class="xafNavToggle">
                        <div id="xafNavToggleActive" class="xafNavHidden ToggleNavigationImage">
                        </div>
                        <div id="xafNavToggle" class="xafNavVisible ToggleNavigationActiveImage">
                        </div>
                    </div>
                </td>
                <td>
                    <div style="height: 33px; margin-left: 5px; margin-right: 20px; border-right: 1px solid #c6c6c6">
                    </div>
                </td>
                <td style="border: 0px solid red">
                    <a href="<%= ConfigurationManager.AppSettings["LogoHyperlink"] %>" id="LogoLink">
                        <xaf:ThemedImageControl ID="TIC" DefaultThemeImageLocation="Images" ImageName="Logo.svg" BorderWidth="0px" runat="server" style="filter: invert(0%);"/>
                    </a>
                </td>
                <td class="text_white" style="text-align: left; padding-left: 15px; font-size: large; white-space: nowrap" id="foobar">
                    <a href="#"><%= ConfigurationManager.AppSettings["ApplicationName"] %></a>
                </td>
                <td style="width: 100%"></td>
                <td style="white-space: nowrap; text-align: right">
                    <small>Angemeldet als</small><br/>
                    <%= SecuritySystem.CurrentUserName %>
                </td>
                <td>
                    <div id="xafHeaderMenu" class="xafHeaderMenu" style="float: right;">
                        <xaf:XafUpdatePanel ID="UPSAC" runat="server">
                            <xaf:ActionContainerHolder runat="server" ID="SAC" ContainerStyle="Links">
                                <ActionContainers>
                                    <xaf:WebActionContainer IsDropDown="false" ContainerId="Notifications"/>
                                </ActionContainers>
                            </xaf:ActionContainerHolder>
                        </xaf:XafUpdatePanel>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<div id="mainDiv" class="xafAlignCenter paddings overflowHidden customMaxWithMarker <%= AdditionalClass %>">
    <asp:Panel runat="server" ID="navigation" CssClass="xafNav xafNavHidden">
        <xaf:XafUpdatePanel ID="UPNC" runat="server" CssClass="xafContent">
            <xaf:NavigationActionContainer ID="NC" runat="server" ContainerId="ViewsNavigation" Width="100%" BackColor="White">
            </xaf:NavigationActionContainer>
        </xaf:XafUpdatePanel>
    </asp:Panel>
    <div id="content" class="overflowHidden">
        <div id="menuAreaDiv" style="z-index: 2500">
            <table id="menuInnerTable" class="width100 menuAreaDiv" style="padding-bottom: 13px; padding-top: 13px;">
                <tbody>
                <tr>
                    <td class="xafNavToggleConteiner">
                        <div id="toggleNavigation_m" class="xafNavTog
                              gle xafHidden">
                            <div id="xafNavTogleActive_m" class="xafNavHidden ToggleNavigationImage">
                            </div>
                            <div id="xafNavTogle_m" class="xafNavVisible ToggleNavigationActiveImage">
                            </div>
                        </div>
                    </td>
                    <td>
                        <div id="toggleSeparator_m" class="xafHidden" style="height: 33px; margin-left: 5px; margin-right: 20px; border-right: 1px solid #c6c6c6">
                        </div>
                    </td>
                    <td style="width: 1%">
                        <table>
                            <tbody>
                            <tr>
                                <td>
                                    <xaf:XafUpdatePanel ID="UPVIC" runat="server">
                                        <xaf:ViewImageControl ID="VIC" runat="server" CssClass="ViewImage"/>
                                    </xaf:XafUpdatePanel>
                                </td>
                                <td>
                                    <xaf:XafUpdatePanel ID="UPVH" runat="server">
                                        <xaf:ViewCaptionControl ID="VCC" runat="server"/>
                                    </xaf:XafUpdatePanel>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                    <td id="menuCell" style="width: 100%;">
                        <table id="menuContainer" style="float: right;">
                            <tbody>
                            <tr>
                                <td>
                                    <xaf:XafUpdatePanel ID="XafUpdatePanel1" runat="server">
                                        <xaf:ActionContainerHolder runat="server" ID="mainMenu" ContainerStyle="Buttons" Orientation="Horizontal">
                                            <Menu Width="100%" ItemAutoWidth="False" ClientInstanceName="mainMenu" ItemWrap="false">
                                                <SettingsAdaptivity Enabled="true"/>
                                                <BorderLeft BorderStyle="None"/>
                                                <BorderRight BorderStyle="None"/>
                                            </Menu>
                                            <ActionContainers>
                                                <xaf:WebActionContainer ContainerId="Back"/>
                                                <xaf:WebActionContainer ContainerId="ObjectsCreation"/>
                                                <xaf:WebActionContainer ContainerId="Save" DefaultActionID="Save" IsDropDown="true" AutoChangeDefaultAction="true"/>
                                                <xaf:WebActionContainer ContainerId="Edit"/>
                                                <xaf:WebActionContainer ContainerId="RecordEdit"/>
                                                <xaf:WebActionContainer ContainerId="View"/>
                                                <xaf:WebActionContainer ContainerId="Export"/>
                                                <xaf:WebActionContainer ContainerId="Reports"/>
                                                <xaf:WebActionContainer ContainerId="Filters"/>
                                                <xaf:WebActionContainer ContainerId="RecordsNavigation"/>
                                                <xaf:WebActionContainer ContainerId="Help"/>
                                                <xaf:WebActionContainer ContainerId="Tools"/>
                                                <xaf:WebActionContainer ContainerId="Diagnostic"/>
                                            </ActionContainers>
                                        </xaf:ActionContainerHolder>
                                    </xaf:XafUpdatePanel>
                                </td>
                                <td>
                                    <xaf:XafUpdatePanel ID="XafUpdatePanel2" runat="server">
                                        <xaf:ActionContainerHolder runat="server" ID="SearchAC" ContainerStyle="Buttons" Orientation="Horizontal">
                                            <ActionContainers>
                                                <xaf:WebActionContainer ContainerId="Search"/>
                                                <xaf:WebActionContainer ContainerId="FullTextSearch"/>
                                            </ActionContainers>
                                        </xaf:ActionContainerHolder>
                                    </xaf:XafUpdatePanel>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div id="viewSite" class="width100" style="float: left">
            <xaf:XafUpdatePanel ID="UPEI" runat="server" UpdatePanelForASPxGridListCallback="True">
                <xaf:ErrorInfoControl ID="ErrorInfo" Style="margin: 10px 0px 10px 0px" runat="server"/>
            </xaf:XafUpdatePanel>
            <xaf:XafUpdatePanel ID="UPVSC" runat="server">
                <xaf:ViewSiteControl ID="VSC" runat="server"/>
            </xaf:XafUpdatePanel>
        </div>
    </div>
</div>
<div id="footer">
    <div class="customMaxWithMarker xafAlignCenter">
        <ul class="ft-legal paddings">
            <li>
                <%= ConfigurationManager.AppSettings["ApplicationName"] %> <%= ConfigurationManager.AppSettings["ApplicationVersion"] %><br/>
                nyTEC GmbH
            </li>
<%--            <li style="text-align: right;">
                <small>entwickelt von</small>
                <br/>
                <img src="<%= ResolveUrl("~/Images/facelol.png") %>">
            </li>--%>
        </ul>
    </div>
</div>

<style>
    #Vertical_NC_NB {
        -moz-box-shadow: 0 3px 20px 0px rgba(0, 0, 0, 0.1);
        -webkit-box-shadow: 0 3px 20px 0px rgba(0, 0, 0, 0.1);
        box-shadow: 0 3px 20px 0px rgba(0, 0, 0, 0.1);
    }

    .coorga_environment_hint {
        background-color: #e58080;
        color: white;
        font-weight: bold;
        padding: 3px;
        text-align: center;
    }

    ul {
        list-style: none;
        padding-left: 0;
    }

    #footer {
        align-items: center;
        background-color: #cccac9;
        bottom: 0;
        color: #5b5d63;
        position: sticky;
        width: 100%;
    }

    #footer a {
        color: #eee;
        text-decoration: none;
    }

    a:hover { text-decoration: underline; }

    .ft-legal {
        align-items: center;
        display: flex;
        justify-content: space-between;
        line-height: 1.8em;
    }

    ul { margin: 0; }

    a {
        color: #fff;
        text-decoration: none;
    }

    a:hover {
        color: #fff;
        text-decoration: none !important;
    }
    
    .dxgvSelectedRow_XafTheme { color: <%= UICustomization.GetContrastColor() %>; }

    #Content { background-color: <%= UICustomization.GetBackgroundColor() %>; }

    .xafHeaderMenu .menuLinks_XafTheme .dxm-item.accountItem.dropDownSecurity.dxm-subMenu > .dxm-content span { color: <%= UICustomization.GetContrastColor() %>; }

    .ToggleNavigationActiveImage, .ToggleNavigationImage { filter: brightness(0) invert(1); }

    .dxgvSelectedRow_XafTheme img { filter: brightness(0) invert(1); }

    .dxtvControl_XafTheme.TreeViewNavControl > div > ul > li { padding: 0 0 0 0; }
    
    .xav-nav-dxtv-con-tb {
        height: 37px;
        width: 100%;
    }

    .dxtvControl_XafTheme .dxtv-nd {
        display: block;
        float: left;
        margin-right: 0;
        margin-top: 0;
        outline: 0 none;
        padding: 9px 8px;
        text-decoration: none;
    }

    .XafTreeViewNavigationNewStyle.dxtvControl_XafTheme.TreeViewNavControl > div > ul > li {
        padding: 0;
    }

    .XafTreeViewNavigationNewStyle.dxtvControl_XafTheme.TreeViewNavControl > div > ul {
        width: auto;
        display: block;
    }

    .xafNav .dxnbLite_XafTheme .dxnb-item.dxnb-itemHover a { color: <%= UICustomization.GetContrastColor() %>; }

    .xafNav .dxnbLite_XafTheme .dxnb-item.dxnb-itemSelected.dxnb-itemHover a { color: white !important; }
    
    .xafNav .dxtv-ndSel {
        -webkit-border-radius: 0;
        background-color: <%= UICustomization.GetBaseColor() %>;
        border-radius: 0;
        color: white;
    }

    .xafNav .dxtv-ndHov {
        -webkit-border-radius: 0;
        background-color: #91969C;
        border-radius: 0;
        color: #4a4a4a;
    }

    .xafNav .dxnbLite_XafTheme .dxnb-item.dxnb-itemHover, .xafNav .dxnbLite_XafTheme .dxnb-largeHover, .xafNav .dxnbLite_XafTheme .dxnb-item.dxnb-itemHover a, .xafNav .dxnbLite_XafTheme .dxnb-largeHover a {
        -webkit-border-radius: 0px;
        border-radius: 0px;
        color: #4a4a4a;
    }

    .xafNav .dxnbLite_XafTheme .dxnb-last .dxnb-content, .xafNav .dxnbLite_XafTheme .dxnb-content, .xafNav .dxnbLite_XafTheme .dxnb-item {
        border: none;
        margin-right: 0;
    }

    .xafNav .dxnbLite_XafTheme .dxnb-item.dxnb-itemHover a {
        -webkit-border-radius: 0px !important;
        border: 0px !important;
    }

    .xafNav .dxnbLite_XafTheme .dxnb-item.dxnb-itemSelected, .xafNav .dxnbLite_XafTheme .dxnb-item.dxnb-itemSelected a, .xafNav .dxnbLite_XafTheme .dxnb-item.dxnb-largeSelected, .xafNav .dxnbLite_XafTheme .dxnb-item.dxnb-largeSelected a {
        -webkit-border-radius: 0px !important;
        border: 0px !important;
    }
    
    ul:hover { -webkit-border-radius: 0px !important; }

    .xafNav .dxnb-content { padding: 0px 0px 0px 0px; }

    .menuLinks_XafTheme .dxm-item a.dx > span { color: <%= UICustomization.GetBaseColor() %>; }

    #headerTableDiv, #headerTable {
        color: <%= UICustomization.GetContrastColor() %>;
        background-color: <%= UICustomization.GetBaseColor() %>;
    }
</style>