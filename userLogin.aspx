<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="iQHub.userLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<style>

        div .label{
            color:  #e74c3c;
            font-size: 30px;
            margin: 200px;
            padding: 5px;
            font-family: 'Times New Roman';
            font-weight: bold; 
            font-style: italic;
        }
        body{
            font-family: 'Times New Roman';
            color:  black ;
        }
        .card {
            background:  #fdfefe;
                border: solid;
                border-color:  #40E0D0 ;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            height: 80%;
            margin: 20px 150px 0px 150px;
        }
        table{
            background:  #fdfefe;
                border: solid;
                border-color:  #40E0D0 ;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            font-size: 20px;
            font-family: 'Times New Roman';
            border: #3498db;
            border-width: medium;
            
        }
        td{
            align-content: center;
            align-items: center;
            margin: 5px;
            background:  #fdfefe;
                border: solid;
                border-color:   #6495ed  ;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            padding: 5px;
            width: 250px;
        }
        tr{
            align-items: center;
            align-content: center;
            margin: 5px;
            padding: 5px;
        }

        button{
            color: #2ecc71;
            font-size: 20px;
            font-family: 'Times New Roman';
            margin: 2px 10px 2px 50px;
            font-weight: bold;
        }

        div .button {
            display: flex;
            font-size: 20px;
            flex-direction: row;
            width: 200px;
            justify-content: space-between;
            margin-left: 300px;
            
            padding: 5px;
        }

        
        
    .auto-style1 {
        height: 150px;
    }
        
    </style>
<%--<html xmlns="http://www.w3.org/1999/xhtml">--%>

<head >
    <title></title>
</head>

<body>
    <form id="form1" >
        <div class="card">
            <h1 align="center">User Login</h1>
            <br />
            <br />
            
            <table align="center">
                <tr>
                    <td>Email</td>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is Required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is Required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                </table>
           
                    <div class="label">
                        <asp:Label ID="lblMsg" runat="server" Visible="False" ForeColor="Red"></asp:Label>
                    </div>
                        
            <br />
            <br />

            <div class="button">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="80px" />
                    
                        <div class="btn-link">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/userRegister.aspx">Register</asp:HyperLink>
            </div>
            </div>

            <br />
           
        </div>
    </form>
</body>
</html>


</asp:Content>
