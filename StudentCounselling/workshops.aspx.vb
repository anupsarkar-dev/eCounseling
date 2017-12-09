Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports Microsoft.Owin.Security
Imports Owin
Imports System.Data.SqlClient
Imports System.Web.HttpContext
Public Class workshops
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("id") Is Nothing Then
            Response.Redirect("Account/Login")
        End If
        err.Text = " "


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub submitSubscribe(sender As Object, e As EventArgs)
        If Page.IsValid Then
            Dim workshop_id As String = DropDownList1.SelectedValue



            Dim Name As String = CType(Session.Item("user"), String)
            Dim id As String = CType(Session.Item("id"), Integer)
            Dim email As String = CType(Session.Item("email"), String)

            Dim con As New SqlConnection

            Dim cmd As New SqlCommand






            Try
                con.ConnectionString = "Data Source=YASHIRO-PC\SQLEXPRESS;Initial Catalog=counselling;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
                con.Open()
                cmd.Connection = con


                Dim n As Integer
                Dim num As System.Random = New System.Random()
                n = num.Next(100, 999)




                Dim str As String = "A" + n.ToString

                'cmd = New SqlCommand("insert into tbl_query ( [query],[user_name], [user_email], [user_id],[category],[subject]) values ('" & msg & "','" & Name & "','" & email & "','" & id & "','" & problems.SelectedValue & "','" & subs & "')", con)

                cmd = New SqlCommand("insert into assigned_Workshop ([user_id],[workshop_id],[code]) values ('" & id & "','" & workshop_id & "','" & str & "')", con)



                Dim rowCount As Integer = cmd.ExecuteNonQuery()
                If rowCount > 0 Then
                    err.Text = "<script> alert('Your Has been registered  a workshop  Successfully') </script>"



                    ' Response.Redirect("userPanel")
                End If

            Catch ex As Exception
                err.Text = ex.Message


            Finally
                con.Close()
            End Try
        End If



    End Sub


    Protected Sub submitEmail(sender As Object, e As EventArgs)


        Dim con As New SqlConnection
        Dim cmd As New SqlCommand

        Try
            con.ConnectionString = "Data Source=YASHIRO-PC\SQLEXPRESS;Initial Catalog=counselling;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
            con.Open()
            cmd.Connection = con
            Dim id As String = CType(Session.Item("id"), Integer)
            cmd = New SqlCommand("insert into newsletter (email) values ('" & email.Text & "')", con)



            Dim rowCount As Integer = cmd.ExecuteNonQuery()
            If rowCount > 0 Then
                err.Text = "<script> alert('Thanks for subscribing us for newsletter') </script>"



            End If


        Catch ex As Exception
            err.Text = ex.Message


        Finally
            con.Close()
        End Try




    End Sub
End Class