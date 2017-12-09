Imports System
Imports System.Web
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports Owin

Partial Public Class Confirm
    Inherits System.Web.UI.Page

    Protected Property StatusMessage() As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim code As String = IdentityHelper.GetCodeFromRequest(Request)
        Dim userId As String = IdentityHelper.GetUserIdFromRequest(Request)
        If code IsNot Nothing AndAlso userId IsNot Nothing Then
            Dim manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
            Dim result = manager.ConfirmEmail(userId, code)
            If result.Succeeded Then
                successPanel.Visible = True
                Return
            End If
        End If
        successPanel.Visible = False
        errorPanel.Visible = True      
    End Sub

End Class