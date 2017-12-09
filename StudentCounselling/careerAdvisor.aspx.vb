Imports System.Data
Imports System.Data.SqlClient
Public Class careerAdvisor
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("type") Is "normal" Then
            Response.Redirect("userPanel")
        ElseIf Session("id") Is Nothing Then
            Response.Redirect("Account/Login")
        Else
            Dim UserName As String = CType(Session.Item("user"), String)
            Dim id As String = CType(Session.Item("id"), Integer)
            Dim Useremail As String = CType(Session.Item("email"), String)
            Dim Utype As String = CType(Session.Item("type"), String)

            Dim con As New SqlConnection
            Dim cmd As New SqlCommand

            name.Text = UserName
            email.Text = Useremail
            type.Text = Utype

            Dim admin As String = "admin"
            Dim regNo As String
            Try
                con.ConnectionString = "Data Source=YASHIRO-PC\SQLEXPRESS;Initial Catalog=counselling;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
                con.Open()
                cmd.Connection = con

                cmd = New SqlCommand("select * from tbl_users where id='" & id & "' and type='" & admin & "'", con)

                Dim reader As SqlDataReader = cmd.ExecuteReader()

                If reader.Read Then


                    regNo = reader(4)


                    reg.Text = regNo
                    name.Text = UserName
                    email.Text = Useremail
                    type.Text = Utype



                End If





            Catch ex As Exception



            Finally
                con.Close()
            End Try
        End If
    End Sub

End Class