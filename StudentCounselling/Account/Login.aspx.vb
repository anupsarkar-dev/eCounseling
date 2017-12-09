Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports Microsoft.Owin.Security
Imports Owin
Imports System.Data.SqlClient
Imports System.Web.HttpContext


Partial Public Class Login
    Inherits Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load




        RegisterHyperLink.NavigateUrl = "Register"
        ' Enable this once you have account confirmation enabled for password reset functionality
        ' ForgotPasswordHyperLink.NavigateUrl = "Forgot"
        OpenAuthLogin.ReturnUrl = Request.QueryString("ReturnUrl")
        Dim returnUrl = HttpUtility.UrlEncode(Request.QueryString("ReturnUrl"))
        If Not [String].IsNullOrEmpty(returnUrl) Then
            RegisterHyperLink.NavigateUrl += "?ReturnUrl=" & returnUrl
        End If
    End Sub

    ''' <summary>
    ''' 
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub LogIn(sender As Object, e As EventArgs)



        If IsValid Then


            Dim con As New SqlConnection
            Dim con2 As New SqlConnection
            Dim cmd As New SqlCommand
            Dim cmd2 As New SqlCommand
            Dim id As Integer
            Dim name As String
            Dim mail As String
            Dim type As String

            Try
                con.ConnectionString = "Data Source=YASHIRO-PC\SQLEXPRESS;Initial Catalog=counselling;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
                con.Open()
                con2.ConnectionString = "Data Source=YASHIRO-PC\SQLEXPRESS;Initial Catalog=counselling;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
                con2.Open()
                cmd.Connection = con
                cmd2.Connection = con


                cmd = New SqlCommand("select count(*) from tbl_users where reg='" & reg.Text & "' and pass='" & Password.Text & "'", con)
                cmd2 = New SqlCommand("select * from tbl_users where reg='" & reg.Text & "' and pass='" & Password.Text & "'", con)



                Dim rowCount As Integer = Convert.ToInt32(cmd.ExecuteScalar())
                If rowCount > 0 Then

                    Dim reader As SqlDataReader = cmd2.ExecuteReader()

                    If reader.Read Then

                        id = reader(0)
                        name = reader(1)
                        mail = reader(2)
                        type = reader(5)



                        Session("id") = id
                        Session("user") = name
                        Session("email") = mail
                        Session("type") = type



                        ' Validate the user password
                        Dim manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
                        Dim signinManager = Context.GetOwinContext().GetUserManager(Of ApplicationSignInManager)()

                        ' This doen't count login failures towards account lockout
                        ' To enable password failures to trigger lockout, change to shouldLockout := True
                        Dim result = signinManager.PasswordSignIn(mail, Password.Text, RememberMe.Checked, shouldLockout:=False)

                        Select Case result
                            Case SignInStatus.Success
                                IdentityHelper.RedirectToReturnUrl(Request.QueryString("ReturnUrl"), Response)
                                Exit Select
                            Case SignInStatus.LockedOut
                                Response.Redirect("/Account/Lockout")
                                Exit Select
                            Case SignInStatus.RequiresVerification
                                Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                                                    Request.QueryString("ReturnUrl"),
                                                    RememberMe.Checked),
                                      True)
                                Exit Select
                            Case Else
                                FailureText.Text = "Invalid login attempt"
                                ErrorMessage.Visible = True
                                Exit Select
                        End Select




                    Else
                        Response.Write("No Data Found !")
                    End If






                Else
                    err.Text = "Wrong Id pass"
                End If

            Catch ex As Exception
                err.Text = ex.Message


            Finally
                con.Close()
            End Try


        End If
    End Sub
End Class
