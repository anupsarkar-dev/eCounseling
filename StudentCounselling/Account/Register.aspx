<%@ Page Title="Register" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Register.aspx.vb" Inherits="StudentCounselling.Register" %>

<%@ Import Namespace="StudentCounselling" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  <div style="background-image:url('Content/bg2.jpg');height:100%">
    
    
          <br />
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <p class="text-danger">
        <asp:Label ID="err" runat="server" ></asp:Label>
    </p>

    <div class="form-horizontal" id="frm">
        <h2 style="text-align:center">Create a new account</h2>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="uname" CssClass="col-md-2 control-label">Name</asp:Label>
             
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="uname" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="uname"
                    CssClass="text-danger" ErrorMessage="The name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="reg" CssClass="col-md-2 control-label">Reg No</asp:Label>
             
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="reg" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="reg"
                    CssClass="text-danger" ErrorMessage="The Reg field is required." />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-primary" style=" width: 58%;margin-bottom: 50px;" />
            </div>
        </div>
    </div>
    <style>
          #frm
        {
            background: rgba(18,18,18,1);
background: -moz-linear-gradient(left, rgba(18,18,18,1) 0%, rgba(20,20,20,1) 12%, rgba(23,23,23,1) 25%, rgba(15,15,15,1) 39%, rgba(10,10,10,1) 50%, rgba(0,0,0,1) 51%, rgba(5,5,5,1) 60%, rgba(10,10,10,1) 76%, rgba(5,5,5,1) 91%, rgba(5,5,5,1) 100%);
background: -webkit-gradient(left top, right top, color-stop(0%, rgba(18,18,18,1)), color-stop(12%, rgba(20,20,20,1)), color-stop(25%, rgba(23,23,23,1)), color-stop(39%, rgba(15,15,15,1)), color-stop(50%, rgba(10,10,10,1)), color-stop(51%, rgba(0,0,0,1)), color-stop(60%, rgba(5,5,5,1)), color-stop(76%, rgba(10,10,10,1)), color-stop(91%, rgba(5,5,5,1)), color-stop(100%, rgba(5,5,5,1)));
background: -webkit-linear-gradient(left, rgba(18,18,18,1) 0%, rgba(20,20,20,1) 12%, rgba(23,23,23,1) 25%, rgba(15,15,15,1) 39%, rgba(10,10,10,1) 50%, rgba(0,0,0,1) 51%, rgba(5,5,5,1) 60%, rgba(10,10,10,1) 76%, rgba(5,5,5,1) 91%, rgba(5,5,5,1) 100%);
background: -o-linear-gradient(left, rgba(18,18,18,1) 0%, rgba(20,20,20,1) 12%, rgba(23,23,23,1) 25%, rgba(15,15,15,1) 39%, rgba(10,10,10,1) 50%, rgba(0,0,0,1) 51%, rgba(5,5,5,1) 60%, rgba(10,10,10,1) 76%, rgba(5,5,5,1) 91%, rgba(5,5,5,1) 100%);
background: -ms-linear-gradient(left, rgba(18,18,18,1) 0%, rgba(20,20,20,1) 12%, rgba(23,23,23,1) 25%, rgba(15,15,15,1) 39%, rgba(10,10,10,1) 50%, rgba(0,0,0,1) 51%, rgba(5,5,5,1) 60%, rgba(10,10,10,1) 76%, rgba(5,5,5,1) 91%, rgba(5,5,5,1) 100%);
background: linear-gradient(to right, rgba(18,18,18,1) 0%, rgba(20,20,20,1) 12%, rgba(23,23,23,1) 25%, rgba(15,15,15,1) 39%, rgba(10,10,10,1) 50%, rgba(0,0,0,1) 51%, rgba(5,5,5,1) 60%, rgba(10,10,10,1) 76%, rgba(5,5,5,1) 91%, rgba(5,5,5,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#121212', endColorstr='#050505', GradientType=1 );
left: 25%;
    width: 50%;

    -webkit-box-shadow: 0px 3px 5px 3px rgba(19,24,112,1);
-moz-box-shadow: 0px 3px 5px 3px rgba(19,24,112,1);
box-shadow: 0px 3px 5px 3px rgba(19,24,112,1);

color:white;


    margin-top: 50px;
    left: 25%;
    margin-left: 300px;


 }
    </style>
      </div>
</asp:Content>
