Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.Owin

Partial Public Class ManageLogins
    Inherits System.Web.UI.Page

    Protected Property SuccessMessage() As String
        Get
            Return m_SuccessMessage
        End Get
        Private Set
            m_SuccessMessage = Value
        End Set
    End Property
    Private m_SuccessMessage As String

    Protected Property CanRemoveExternalLogins() As Boolean
        Get
            Return m_CanRemoveExternalLogins
        End Get
        Private Set
            m_CanRemoveExternalLogins = Value
        End Set
    End Property
    Private m_CanRemoveExternalLogins As Boolean

    Private Function HasPassword(manager As ApplicationUserManager) As Boolean
        Return manager.HasPassword(User.Identity.GetUserId())
    End Function

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
        CanRemoveExternalLogins = manager.GetLogins(User.Identity.GetUserId()).Count() > 1

        SuccessMessage = String.Empty
        SuccessMessagePlaceholder.Visible = Not String.IsNullOrEmpty(SuccessMessage)
    End Sub

    Public Function GetLogins() As IEnumerable(Of UserLoginInfo)
        Dim manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
        Dim accounts = manager.GetLogins(User.Identity.GetUserId())
        CanRemoveExternalLogins = accounts.Count() > 1 OrElse HasPassword(manager)
        Return accounts
    End Function

    Public Sub RemoveLogin(loginProvider As String, providerKey As String)
        Dim manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
        Dim signInManager = Context.GetOwinContext().Get(Of ApplicationSignInManager)()
        Dim result = manager.RemoveLogin(User.Identity.GetUserId(), New UserLoginInfo(loginProvider, providerKey))
        Dim msg As String = String.Empty
        If result.Succeeded Then
            Dim userInfo = manager.FindById(User.Identity.GetUserId())
            signInManager.SignIn(userInfo, isPersistent := False, rememberBrowser := False)
            msg = "?m=RemoveLoginSuccess"
        End If
        Response.Redirect("~/Account/ManageLogins" & msg)
    End Sub
End Class
