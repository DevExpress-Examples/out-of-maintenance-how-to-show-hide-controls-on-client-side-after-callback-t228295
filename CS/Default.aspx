<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to hide controls on client side after callback</title>
    <script>
        function SubmitRobotTest(s, e) {
            CallbackPanel.PerformCallback();
        }
        function OnEndCallback(s, e) {
            CaptchaLabel.SetVisible(false);
            CaptchaRadioButtonList.SetVisible(false);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxLabel ID="CaptchaLabel" ClientInstanceName="CaptchaLabel" 
            runat="server"
            Text="Are you a robot? You have only one attempt!"
            Width="200px">
        </dx:ASPxLabel>
        <dx:ASPxRadioButtonList ID="CaptchaRadioButtonList" ClientInstanceName="CaptchaRadioButtonList" 
            runat="server"
            ValueType="System.Boolean"
            SelectedIndex="0">
            <Items>
                <dx:ListEditItem Text="Yes" Value="true" />
                <dx:ListEditItem Text="No" Value="false" />
            </Items>
        </dx:ASPxRadioButtonList>
        <br />
        <dx:ASPxButton ID="Button" runat="server" Text="Submit" AutoPostBack="false">
            <ClientSideEvents Click="SubmitRobotTest" />
        </dx:ASPxButton>

        <dx:ASPxCallbackPanel ID="CallbackPanel" ClientInstanceName="CallbackPanel" 
            runat="server"
            Width="200px"
            OnCallback="CallbackPanel_Callback">
            <ClientSideEvents EndCallback="OnEndCallback" />
        </dx:ASPxCallbackPanel>
    </form>
</body>
</html>
