Imports MySql.Data.MySqlClient
Imports System.Configuration

Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs)
        Dim fullname As String = txtFullname.Text.Trim()
        Dim username As String = txtUsername.Text.Trim()
        Dim password As String = txtPassword.Text.Trim()

        ' Check for empty fields
        If fullname = "" OrElse username = "" OrElse password = "" Then
            lblMessage.ForeColor = Drawing.Color.Red
            lblMessage.Text = "Please fill in all fields."
            pnlSummary.Visible = False
            Return
        End If

        Dim conStr As String = ConfigurationManager.ConnectionStrings("MySqlConn").ConnectionString
        Using con As New MySqlConnection(conStr)
            Try
                con.Open()
                Dim query As String = "INSERT INTO users (fullname, username, password) VALUES (@fullname, @username, @password)"
                Using cmd As New MySqlCommand(query, con)
                    cmd.Parameters.AddWithValue("@fullname", fullname)
                    cmd.Parameters.AddWithValue("@username", username)
                    cmd.Parameters.AddWithValue("@password", password)
                    cmd.ExecuteNonQuery()
                End Using

                ' Show success message
                lblMessage.ForeColor = Drawing.Color.Green
                lblMessage.Text = "Registration successful!"

                ' Show summary panel with user input
                lblSummary.Text = "<strong>Full Name:</strong> " & fullname & "<br />" &
                                  "<strong>Username:</strong> " & username & "<br />" &
                                  "<strong>Password:</strong> " & password
                pnlSummary.Visible = True

            Catch ex As Exception
                lblMessage.ForeColor = Drawing.Color.Red
                lblMessage.Text = "Error: " & ex.Message
                pnlSummary.Visible = False
            End Try
        End Using
    End Sub

    Protected Sub btnGoLogin_Click(sender As Object, e As EventArgs)
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub btnGoDashboard_Click(sender As Object, e As EventArgs)
        Response.Redirect("Dashboard.aspx")
    End Sub
End Class
