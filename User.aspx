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
                    font-palette:dark;
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
                color: darkred;
            }

                button:hover {
                    background: #26a9e0;
                }
        </style>
    </head>
    <body>

        <h3 align="center">User</h3>

        <div class="tab">
            <a href="/userRegister">
                <button type="button" id="btnReg" class="tablinks" ">Register</button>
            </a>
            
            <a href="/userLogin">
            <button type="button" id="btnLog" class="tablinks">Login</button>
</a>
        </div>

        

    </body>
    </html>
    
</asp:Content>
