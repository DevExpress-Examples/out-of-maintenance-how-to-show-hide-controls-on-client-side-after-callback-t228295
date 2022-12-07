<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function SubmitRobotTest(s, e) {
            resultsPanel.PerformCallback();
        };

        function HideCaptchaList(s, e) {
            captchaLabel.SetVisible(false);
            captchaList.SetVisible(false);
        };
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxLabel ID="CaptchaLabel" runat="server"
            ClientInstanceName="captchaLabel"
            Text="Are you a robot? You have only one attempt!"
            Width="200px">
        </dx:ASPxLabel>
        <dx:ASPxRadioButtonList ID="CaptchaRadioButtonList" runat="server"
            ClientInstanceName="captchaList"
            ValueType="System.Boolean"
            SelectedIndex="0">
            <Items>
                <dx:ListEditItem Text="Yes" Value="true" />
                <dx:ListEditItem Text="No" Value="false" />
            </Items>
        </dx:ASPxRadioButtonList>
        <br />
        <dx:ASPxButton ID="SubmitButton" runat="server" Text="Submit" AutoPostBack="false">
            <ClientSideEvents Click="SubmitRobotTest" />
        </dx:ASPxButton>

        <dx:ASPxCallbackPanel ID="ResultsCallbackPanel" runat="server"
            ClientInstanceName="resultsPanel"
            Width="200px"
            OnCallback="ResultsCallbackPanel_Callback">
            <ClientSideEvents EndCallback="HideCaptchaList" />
        </dx:ASPxCallbackPanel>
    </form>
</body>
</html>