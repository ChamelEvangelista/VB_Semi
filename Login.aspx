<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="VB_Semi.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login Form</title>
    <style>
        body {
            background-color: #0F2A1D;
            font-family: "Segoe UI", sans-serif;
            color: #E3EED4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #375534;
            padding: 40px 35px;
            border-radius: 12px;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.4);
            width: 360px;
            text-align: center;
        }

        h2 {
            margin-bottom: 25px;
            color: #E3EED4;
            font-weight: 600;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            margin-bottom: 15px;
            width: 100%;
        }

        label {
            font-weight: 500;
            color: #AEC3B0;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: none;
            background-color: #6B9071;
            color: #0F2A1D;
            font-size: 14px;
            box-sizing: border-box;
        }

        input::placeholder {
            color: #E3EED4;
            opacity: 0.8;
        }

        .btn {
            width: 100%;
            background-color: #AEC3B0;
            color: #0F2A1D;
            border: none;
            padding: 10px;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 10px;
        }

        .btn:hover {
            background-color: #E3EED4;
            transform: scale(1.02);
        }

        .message {
            text-align: center;
            margin-top: 15px;
            color: #E3EED4;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Login Form</h2>

            <div class="form-group">
                <label for="txtUsername">Username: </label>
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter your username" />
            </div>

            <div class="form-group">
                <label for="txtPassword">Password: </label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Enter your password" />
            </div>

            <asp:Button Text="Login" ID="btnLogin" CssClass="btn" runat="server" OnClick="btnLogin_Click" />

            <asp:Label ID="lblMessage" runat="server" CssClass="message" />
        </div>
    </form>
</body>
</html>
