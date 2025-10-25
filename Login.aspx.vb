Imports MySql.Data.MySqlClient
Imports System.Configuration

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs)
        Dim conStr As String = ConfigurationManager.ConnectionStrings("MySqlConn").ConnectionString
        Using con As New MySqlConnection(conStr)
            Try
                con.Open()
                Dim query As String = "SELECT * FROM users WHERE username=@username AND password=@password"
                Using cmd As New MySqlCommand(query, con)
                    cmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim())
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim())

                    Using reader As MySqlDataReader = cmd.ExecuteReader()
                        If reader.HasRows Then
                            ' ✅ Show alert and redirect using JavaScript
                            Dim script As String = "alert('Login successfully'); window.location='Register.aspx';"
                            ClientScript.RegisterStartupScript(Me.GetType(), "LoginSuccess", script, True)
                        Else
                            lblMessage.ForeColor = Drawing.Color.Red
                            lblMessage.Text = "Invalid username or password."
                        End If
                    End Using
                End Using
            Catch ex As Exception
                lblMessage.ForeColor = Drawing.Color.Red
                lblMessage.Text = "Error: " & ex.Message
            End Try
        End Using
    End Sub
End Class
