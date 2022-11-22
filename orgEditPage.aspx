<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orgEditPage.aspx.cs" Inherits="iQHub.orgEditPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
<style>
        body {
            /*background: url(../Images/black.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;*/
            /*color: #2ecc71;*/
            color: #3498db;
            font-size: 35px;
            font-family: 'Times New Roman';
            font-weight: bold;
            font-style: italic;
        }

        label{
            color:  #e74c3c;
            font-size: 35px;
            font-family: 'Times New Roman';
            font-weight: bold;
            font-style: italic;
        }
        body{
            background-color:     #1c2833;
            color:  #f0f3f4 ;
        }
        table{
            border: #3498db;
            border-width: medium;
            border-block-style: ridge;
        }

        button{
            color: #2ecc71;
            font-size: 20px;
            font-family: 'Times New Roman';
            font-weight: bold;
        }
        
        
    .auto-style1 {
        height: 150px;
    }
        
    </style>
<html xmlns="http://www.w3.org/1999/xhtml">

<head >
    <title></title>
</head>

<body>
    <form id="form1" >
        <div>
            <h1 align="center">Login</h1>
            <%--<asp:Table ID="Table1" runat="server" align="Center" Height="152px" Width="300px">
                <asp:TableRow>
                    <asp:TableCell>Username</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Password</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><br/><asp:Button ID="btnLogin" runat="server" Text="Login" /></asp:TableCell>                    
                    <asp:TableCell><br/><asp:Button ID="btnRegister" runat="server" Text="Register" align="center"/></asp:TableCell>
                    <asp:TableCell><br/><asp:Button ID="btnExit" runat="server" Text="Exit" align="center"/></asp:TableCell>
                </asp:TableRow> 
            </asp:Table> --%> 
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
            <table align="center">
                <tr>
                    <td class="auto-style1" align="center">
                        <asp:Label ID="lblMsg" runat="server" Visible="False" ForeColor="Red"></asp:Label></td>
                </tr>
                </table>
            <table align="center">
                <tr>
                    <td style="width:100px"><br/><br/>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="80px" /></td>
                    <td style="width:150px"><br/><br/>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Register</asp:HyperLink>
                    </td>
                    
                </tr>
            </table>
           
        </div>
    </form>
</body>
</html>


</asp:Content>
