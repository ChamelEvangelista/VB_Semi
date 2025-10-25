<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="Dashboard.aspx.vb" Inherits="VB_Semi.Dashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>User Dashboard</title>
    <style>
        body {
            background: linear-gradient(to bottom right, #0F2A1D, #375534);
            font-family: "Segoe UI", sans-serif;
            color: #E3EED4;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            margin: 0;
            padding-top: 60px;
        }

        .dashboard-container {
            background-color: #375534;
            width: 80%;
            max-width: 800px;
            border-radius: 15px;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.4);
            padding: 30px 40px;
        }

        h2 {
            text-align: center;
            color: #E3EED4;
            margin-bottom: 25px;
            font-size: 24px;
            letter-spacing: 1px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #6B9071;
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: center;
            color: #0F2A1D;
        }

        th {
            background-color: #AEC3B0;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #AEC3B0;
        }

        tr:hover {
            background-color: #E3EED4;
        }

        .btn {
            background-color: #AEC3B0;
            color: #0F2A1D;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 20px;
            display: block;
            margin-left: auto;
            margin-right: auto;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #E3EED4;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="dashboard-container">
            <h2>Registered Users</h2>
            <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="True" 
                HeaderStyle-BackColor="#AEC3B0" 
                HeaderStyle-ForeColor="#0F2A1D" 
                RowStyle-BackColor="#6B9071" 
                AlternatingRowStyle-BackColor="#AEC3B0"
                BorderStyle="None" 
                CellPadding="8" 
                Font-Size="Medium" 
                Width="100%" />

            <asp:Button Text="Logout" ID="btnLogout" CssClass="btn" runat="server" OnClick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>
