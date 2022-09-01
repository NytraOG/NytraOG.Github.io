﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Frontend.Web.LoginPage" EnableViewState="false"
ValidateRequest="false" CodeBehind="Login.aspx.cs" %>
<%@ Register Assembly="DevExpress.ExpressApp.Web.v22.1, Version=22.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
Namespace="DevExpress.ExpressApp.Web.Controls" TagPrefix="cc4" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Logon</title>
</head>
<body class="Dialog">
<div id="PageContent" class="PageContent DialogPageContent">
    <form id="form1" runat="server">
        <cc4:ASPxProgressControl ID="ProgressControl" runat="server"/>
        <div id="Content" runat="server"/>
    </form>
</div>
</body>
</html>