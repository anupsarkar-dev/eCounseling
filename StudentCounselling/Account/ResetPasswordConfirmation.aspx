<%@ Page Title="Password Changed" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPasswordConfirmation.aspx.vb" Inherits="StudentCounselling.ResetPasswordConfirmation" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <div>
        <p>Your password has been changed. Click <asp:HyperLink ID="login" runat="server" NavigateUrl="~/Account/Login">here</asp:HyperLink> to login </p>
    </div>
</asp:Content>
