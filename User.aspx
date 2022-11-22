<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="iQHub.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
    <html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body {
                font-family: Arial;
            }

            /* Style the tab */
            .tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
            }

                /* Style the buttons inside the tab */
                .tab button {
                    background-color: inherit;
                    float: left;
                    border: none;
                    outline: none;
                    cursor: pointer;
                    padding: 14px 16px;
                    transition: 0.3s;
                    font-size: 17px;
                }

                    /* Change background color of buttons on hover */
                    .tab button:hover {
                        background-color: #ddd;
                    }

                    /* Create an active/current tablink class */
                    .tab button.active {
                        background-color: #ccc;
                    }

            /* Style the tab content */
            .tabcontent {
                display: none;
                padding: 6px 12px;
                -webkit-animation: fadeEffect 1s;
                animation: fadeEffect 1s;
            }

            /* Fade in tabs */
            @-webkit-keyframes fadeEffect {
                from {
                    opacity: 0;
                }

                to {
                    opacity: 1;
                }
            }

            @keyframes fadeEffect {
                from {
                    opacity: 0;
                }

                to {
                    opacity: 1;
                }
            }
        </style>

        <style>
            /*html, body {*/
            /*display: flex;*/
            /*justify-content: center;
                height: 100%;
            }*/

            /*body, div, h1, form, input, p {
                padding: 0;
                margin: 0;
                outline: none;
                font-family: Roboto, Arial, sans-serif;
                font-size: 16px;
                color: #666;
            }*/


            h1 {
                padding: 10px 0;
                font-size: 32px;
                font-weight: 300;
                text-align: center;
            }

            p {
                font-size: 12px;
            }

            hr {
                color: #a9a9a9;
                opacity: 0.3;
            }

            .main-block {
                max-width: 340px;
                min-height: 460px;
                padding: 10px 0;
                margin: auto;
                border-radius: 5px;
                border: solid 1px #ccc;
                box-shadow: 1px 2px 5px rgba(0,0,0,.31);
                background: #ebebeb;
            }

            form {
                margin: 0 30px;
            }



            label#icon {
                margin: 0;
                border-radius: 5px 0 0 5px;
            }

            input[type=text], input[type=password] {
                width: calc(100% - 57px);
                height: 36px;
                margin: 13px 0 0 -5px;
                padding-left: 10px;
                border-radius: 0 5px 5px 0;
                border: solid 1px #cbc9c9;
                box-shadow: 1px 2px 5px rgba(0,0,0,.09);
                background: #fff;
            }

            input[type=password] {
                margin-bottom: 15px;
            }

            #icon {
                display: inline-block;
                padding: 9.3px 15px;
                box-shadow: 1px 2px 5px rgba(0,0,0,.09);
                background: #1c87c9;
                color: #fff;
                text-align: center;
            }

            .btn-block {
                margin-top: 10px;
                text-align: center;
            }

            button {
                width: 50%;
                padding: 10px 0;
                margin: 10px auto;
                border-radius: 5px;
                border: none;
                background: #1c87c9;
                font-size: 14px;
                font-weight: 600;
                color: #fff;
            }

                button:hover {
                    background: #26a9e0;
                }
        </style>
    </head>
    <body>

        <h3>User</h3>

        <div class="tab">
            <button type="button" id="btnReg" class="tablinks" onclick="openUser(event, 'Register')">Register</button>
            <button type="button" id="btnLog" class="tablinks" onclick="openUser(event, 'Login')">Login</button>

        </div>

        <div id="Register" class="tabcontent" style="display: none">
            <div class="main-block">
                <h1>Registration</h1>
                <form action="/">
                    <hr>

                    <hr>
                    <label id="icon" for="name"><i class="fa fa-envelope"></i></label>
                    <%--<input id="txtEmailReg" type="text" name="name"  placeholder="User Email" required />--%>
                    <asp:TextBox ID="txtEmailReg" runat="server" placeholder="User Email" required></asp:TextBox>
                    <label id="icon" for="name"><i class="fa fa-user"></i></label>
                    <%--<input id="txtUsernameReg" type="text" name="name" placeholder="User Name" required />--%>
                    <asp:TextBox ID="txtUsernameReg" runat="server" placeholder="User Name" required></asp:TextBox>
                    <label id="icon" for="name"><i class="fa fa-unlock-alt"></i></label>

                    <asp:TextBox ID="txtPassReg" TextMode="Password" runat="server" placeholder="User Password" required></asp:TextBox>
                    <hr>
                    <hr>
                    <div class="btn-block">
                      
                        <asp:Button ID="Button1" runat="server" Text="Register" align="center" OnClick="btnRegister_Click" Width="80px"/>
                        <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                        <hr />
                        
                    </div>
                </form>
            </div>
        </div>
        <asp:Label ID="lblMsgReg" runat="server" Text="" Visible="false"></asp:Label>

        <div id="Login" class="tabcontent" style="display: none">
            <div class="main-block">
                <h1>Login</h1>
                <form action="/">
                    <hr>

                    <hr>
                    <label id="icon" for="name"><i class="fa fa-envelope"></i></label>
                    <asp:TextBox ID="txtEmailLog" runat="server" placeholder="User Email" required></asp:TextBox>
                    <label id="icon" for="name"><i class="fa fa-user"></i></label>
                    <asp:TextBox ID="txtUsernameLog" runat="server" placeholder="User Name" required></asp:TextBox>
                    <label id="icon" for="name"><i class="fa fa-unlock-alt"></i></label>
                    <asp:TextBox ID="txtPassLog" TextMode="Password" runat="server" placeholder="User Password" required></asp:TextBox>
                    <hr>
                    <hr>
                    <div class="btn-block">
                        <button id="btnLogin" runat="server" onclick="btnLogin_Click" width="80px">Login</button>
                        <asp:Button ID="Button2" runat="server" Text="Login" OnClick="btnLogin_Click" Width="80px" />
                        <hr />
                        
                    </div>
                </form>
            </div>
        </div>
        <asp:Label ID="lblMsgLog" runat="server" Text="" Visible="false"></asp:Label>


        <script>
            function openUser(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                    
                }
                
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
                document.getElementById(lblMsgReg).style.visibility = "false";
            }
        </script>

    </body>
    </html>
    
</asp:Content>
