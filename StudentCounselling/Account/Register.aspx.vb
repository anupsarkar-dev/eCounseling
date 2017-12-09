Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports Owin
Imports System.Data.SqlClient

Partial Public Class Register
    Inherits Page
    Protected Sub CreateUser_Click(sender As Object, e As EventArgs)
        Dim userName As String = Email.Text
        Dim name As String = uname.Text
        Dim regno As Integer = CInt(reg.Text)

        Dim manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
        Dim signInManager = Context.GetOwinContext().Get(Of ApplicationSignInManager)()
        Dim user = New ApplicationUser() With {.UserName = userName, .Email = userName}
        Dim result = manager.Create(user, Password.Text)

        Dim con As New SqlConnection
        Dim cmd As New SqlCommand

        Try
            con.ConnectionString = "Data Source=YASHIRO-PC\SQLEXPRESS;Initial Catalog=counselling;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
            con.Open()
            cmd.Connection = con

            cmd = New SqlCommand("insert into tbl_users ([name], [email], [pass], [reg]) values ('" & name & "','" & userName & "','" & Password.Text & "','" & regno & "')", con)



            Dim rowCount As Integer = cmd.ExecuteNonQuery()
            If rowCount > 0 Then
                err.Text = "data inserted succesfully"
            End If

        Catch ex As Exception
            err.Text = ex.Message


        Finally
            con.Close()
        End Try





    End Sub
End Class

