Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports Owin
Imports System.Data.SqlClient

Public Class appointment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") Is Nothing Then
            Response.Redirect("Account/Login")
        End If

        err.Text = " "


    End Sub

    Protected Sub CreateAppointment_Click(sender As Object, e As EventArgs)


        Dim dates As String = Calendar.SelectedDate.ToString()


        Dim con As New SqlConnection
        Dim cmd As New SqlCommand

        Try
            con.ConnectionString = "Data Source=YASHIRO-PC\SQLEXPRESS;Initial Catalog=counselling;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
            con.Open()
            cmd.Connection = con
            Dim id As String = CType(Session.Item("id"), Integer)
            cmd = New SqlCommand("insert into appintment ([user_id], [date]) values ('" & id & "','" & Calendar.SelectedDate & "')", con)



            Dim rowCount As Integer = cmd.ExecuteNonQuery()
            If rowCount > 0 Then
                err.Text = "<script> alert('Your Appointment Date : " + Calendar.SelectedDate.ToString + " , Has been Fixed Successfully') </script>"


                If Session("type") Is "normal" Then
                    Response.Redirect("userPanel")

                End If

                If Session("type") Is "admin" Then
                    Response.Redirect("adminPanel")

                End If

            End If


        Catch ex As Exception
            err.Text = ex.Message


        Finally
            con.Close()
        End Try





    End Sub
End Class