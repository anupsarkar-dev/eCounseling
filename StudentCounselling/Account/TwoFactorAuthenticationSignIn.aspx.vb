Imports System.Threading.Tasks
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.Owin

Partial Public Class TwoFactorAuthenticationSignIn
    Inherits System.Web.UI.Page
    Private signinManager As ApplicationSignInManager
    Private manager As ApplicationUserManager

    Public Sub New()
        manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
        signinManager = Context.GetOwinContext().GetUserManager(Of ApplicationSignInManager)()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim userId = signinManager.GetVerifiedUserId()
        If userId Is Nothing Then
            Response.Redirect("/Account/Error", True)
        End If
        Dim userFactors = manager.GetValidTwoFactorProviders(userId)
        Providers.DataSource = userFactors.Select(Function(x) x).ToList()
        Providers.DataBind()
    End Sub

    Protected Sub CodeSubmit_Click(sender As Object, e As EventArgs)
        Dim rememberMeValue As Boolean
        Boolean.TryParse(Request.QueryString("RememberMe"), rememberMeValue)
        
        Dim result = signinManager.TwoFactorSignIn(SelectedProvider.Value, Code.Text, isPersistent := rememberMeValue, rememberBrowser := RememberBrowser.Checked)
        Select Case result
          Case SignInStatus.Success
              IdentityHelper.RedirectToReturnUrl(Request.QueryString("ReturnUrl"), Response)
              Exit Select
          Case SignInStatus.LockedOut
              Response.Redirect("/Account/Lockout")
              Exit Select
          Case Else
              FailureText.Text = "Invalid code"
              ErrorMessage.Visible = True
              Exit Select
        End Select
    End Sub

    Protected Sub ProviderSubmit_Click(sender As Object, e As EventArgs)
      If Not signinManager.SendTwoFactorCode(Providers.SelectedValue) Then
            Response.Redirect("/Account/Error")
        End If

        Dim user = manager.FindById(signinManager.GetVerifiedUserId())
        If user IsNot Nothing Then
            Dim code = manager.GenerateTwoFactorToken(user.Id, Providers.SelectedValue)
        End If

          SelectedProvider.Value = Providers.SelectedValue
          sendcode.Visible = False
          verifycode.Visible = True
    End Sub
End Class

