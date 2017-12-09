
Imports System.Data.SqlClient
Public Class query

    Inherits Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load



        If Session("id") Is Nothing Then
            Response.Redirect("Account/Login")
        End If


    End Sub

    Protected Sub submitQuery(sender As Object, e As EventArgs)
        If Page.IsValid Then
            Dim subs As String = subject.Text
            Dim cat As String = problems.Text
            Dim msg As String = msgs.Text


            Dim Name As String = CType(Session.Item("user"), String)
            Dim id As String = CType(Session.Item("id"), Integer)
            Dim email As String = CType(Session.Item("email"), String)

            Dim con As New SqlConnection
            Dim con2 As New SqlConnection
            Dim cmd As New SqlCommand
            Dim cmd2 As New SqlCommand




            Try
                con.ConnectionString = "Data Source=YASHIRO-PC\SQLEXPRESS;Initial Catalog=counselling;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
                con.Open()
                cmd.Connection = con

                con2.ConnectionString = "Data Source=YASHIRO-PC\SQLEXPRESS;Initial Catalog=counselling;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
                con2.Open()
                cmd2.Connection = con2

                cmd = New SqlCommand("insert into tbl_query ( [query],[user_name], [user_email], [user_id],[category],[subject]) values ('" & msg & "','" & Name & "','" & email & "','" & id & "','" & problems.SelectedValue & "','" & subs & "')", con)

                cmd2 = New SqlCommand("insert into tbl_QA ([question_id]) values ('" & id & "')", con)


                cmd2.ExecuteNonQuery()


                Dim rowCount As Integer = cmd.ExecuteNonQuery()
                If rowCount > 0 Then
                    Response.Redirect("userPanel")
                End If

            Catch ex As Exception
                err.Text = ex.Message


            Finally
                con.Close()
            End Try
        End If




    End Sub
End Class