Imports MySql.Data.MySqlClient
Imports System.Configuration
Imports System.Data

Public Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            LoadUsers()
        End If
    End Sub

    Private Sub LoadUsers()
        Dim conStr As String = ConfigurationManager.ConnectionStrings("MySqlConn").ConnectionString
        Using con As New MySqlConnection(conStr)
            Try
                con.Open()
                Dim query As String = "SELECT fullname AS 'Full Name', username AS 'Username', password AS 'Password' FROM users"
                Dim adapter As New MySqlDataAdapter(query, con)
                Dim dt As New DataTable()
                adapter.Fill(dt)
                gvUsers.DataSource = dt
                gvUsers.DataBind()
            Catch ex As Exception
                ' Handle potential database error gracefully
                Response.Write("<script>alert('Error loading users: " & ex.Message & "');</script>")
            End Try
        End Using
    End Sub

    Protected Sub btnLogout_Click(sender As Object, e As EventArgs)
        ' Redirect back to Login page
        Response.Redirect("Login.aspx")
    End Sub
End Class
