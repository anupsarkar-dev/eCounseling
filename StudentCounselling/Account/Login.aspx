<%@ Page Title="Log in" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="StudentCounselling.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

     <div style="background-image:url('Content/bg2.jpg');height:100%">
         <br />
         <br />
         <br />
    <div class="row">
        <div id="frm" class="col-md-8" style="
    
    
">
            <section id="loginForm" style="color:white">
                <div class="form-horizontal">
                    <h1 style="color:aqua">Welcome to Student Counselling</h1>
                    
                    <h4 class="text-danger">
        <asp:Label ID="err" runat="server" Text="Before proceed please login first"></asp:Label>
    </h4>
                    <div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  If you are LPU student just put UMS id pass otherwise  <strong><a runat="server" href="Register"  style="color:white">Sign Up First</a>
                        <br />
      </strong>
</div>
                 
                    <hr />
                      <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="reg" CssClass="col-md-2 control-label">Reg No</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="reg" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="reg"
                                CssClass="text-danger" ErrorMessage="The reg field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-primary" style=" width: 58%;margin-bottom: 15px;" />
                        </div>
                    </div>
                </div>
                
             
 <p>

     <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true">Dont have an account ?</span>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled"> Register as a new user</asp:HyperLink>
                </p>
       <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
            </section>
        </div>

        <div class="col-md-4" style="visibility:hidden">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
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



 }
    </style>
</div>
</asp:Content>
