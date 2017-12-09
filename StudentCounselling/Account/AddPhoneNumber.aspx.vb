Imports System.Threading.Tasks
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.Owin

Partial Public Class AddPhoneNumber
    Inherits System.Web.UI.Page
    Protected Sub PhoneNumber_Click(sender As Object, e As EventArgs)
        Dim manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
        Dim code = manager.GenerateChangePhoneNumberToken(User.Identity.GetUserId(), PhoneNumber.Text)
        If manager.SmsService IsNot Nothing Then
            Dim message = New IdentityMessage() With {
                .Destination = PhoneNumber.Text,
                .Body = "Your security code is " & Convert.ToString(code)
            }

            manager.SmsService.Send(message)
        End If

        Response.Redirect("/Account/VerifyPhoneNumber?PhoneNumber=" & HttpUtility.UrlEncode(PhoneNumber.Text))
    End Sub
End Class
