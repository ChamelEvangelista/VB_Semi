<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="VB_Semi.Register" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Registration Form</title>
    <style>
        body {
            background: linear-gradient(to bottom right, #375534, #AEC3B0);
            font-family: "Segoe UI", sans-serif;
            color: #0F2A1D;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #93a896;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 0 30px rgba(55, 85, 52, 0.4);
            width: 400px;
            text-align: center;
        }
        h2 {
            margin-bottom: 25px;
            color: #375534;
        }
        input[type="text"], input[type="password"] {
            width: 90%;
            padding: 10px;
            border-radius: 10px;
            border: 1px solid #6B9071;
            background-color: #AEC3B0;
            color: #0F2A1D;
            font-size: 14px;
            margin-bottom: 15px;
        }
        input::placeholder {
            color: #375534;
            opacity: 0.8;
        }
        .btn {
            width: 90%;
            background-color: #375534;
            color: #E3EED4;
            border: none;
            padding: 10px;
            border-radius: 10px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 5px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #6B9071;
        }
        .message {
            margin-top: 10px;
            font-weight: 500;
        }
        /* Styled Summary Panel */
        .summary-panel {
            background-color: #AEC3B0;
            border: 2px solid #6B9071;
            border-radius: 10px;
            padding: 15px;
            margin-top: 15px;
            color: #0F2A1D;
            box-shadow: 0 0 10px rgba(55, 85, 52, 0.3);
            text-align: left;
        }
        .summary-panel h3 {
            color: #375534;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Registration Form</h2>

            <asp:TextBox ID="txtFullname" runat="server" placeholder="Enter your full name" /><br />
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Create your username" /><br />
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Create your password" /><br />

            <asp:Button Text="Register" ID="btnRegister" CssClass="btn" runat="server" OnClick="btnRegister_Click" /><br />
            <asp:Button Text="Go to Login" ID="btnGoLogin" CssClass="btn" runat="server" OnClick="btnGoLogin_Click" /><br />
            <asp:Button ID="btnGoDashboard" runat="server" Text="Go to Dashboard" CssClass="btn btn-secondary" OnClick="btnGoDashboard_Click" />

            <asp:Label ID="lblMessage" runat="server" CssClass="message" /><br />

            <asp:Panel ID="pnlSummary" runat="server" CssClass="summary-panel" Visible="False">
                <h3>Registration Summary</h3>
                <asp:Label ID="lblSummary" runat="server" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
