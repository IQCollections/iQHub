<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orgEditPage.aspx.cs" Inherits="iQHub.orgEditPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <html>
    <head>
        <title>Educational registration form</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
        <style id="style edit">
            body {
                /*min-height: 100%;*/
                padding: 1px 16px;
                height: 1500px;
            }

            body, div, form, input, select, p {
                padding: 0;
                margin: 0;
                outline: none;
                align-items: center;
                font-family: Roboto, Arial, sans-serif;
                font-size: 16px;
                color: #eee;
            }

            body {
                padding: 1px 16px;
                height: 1000px;
            }

            .main-block {
                /*display: flex;*/
                flex-direction: column;
                justify-content: center;
                align-items: center;
                margin: 100px 20px 0px 100px;
                height: 1000px;
                /*height: 100%;*/
                padding: 25px;
                background: rgba(0, 0, 0, 0.5);
            }

            .left-part, form {
                padding: 35px;
            }

            .left-part {
                text-align: center;
            }

            .fa-graduation-cap {
                font-size: 52px;
            }

            form {
                background: rgba(0, 0, 0, 0.7);
                margin-left: 50px;
            }

            .title {
                display: flex;
                
                margin-left: 200px;
                margin-bottom: 10px;
            }

            .info {
                display: flex;
                flex-direction: column;
                margin-left: 20px;
            }
            h2 {
                align-content: center;
                align-items: center;
            }

            input, select {
                padding: 5px;
                margin-bottom: 30px;
                background: transparent;
                border: none;
                border-bottom: 1px solid #eee;
            }

                input::placeholder {
                    color: #eee;
                }

            option:focus {
                border: none;
            }

            option {
                background: black;
                border: none;
            }


            .btn-item, button {
                padding: 10px 5px ;
                margin-top: 20px;
                border-radius: 5px;
                border: none;
                background: #26a9e0;
                text-decoration: none;
                font-size: 15px;
                width: 30%;
                font-weight: 400;
                color: #fff;
            }

            .btn-item {
                display: inline-block;
                margin: 20px 5px 0px 30px;
            }

            button {
                width: 30%;
                margin-left: 30px;
            }

                button:hover, .btn-item:hover {
                    background: #85d6de;
                }

            @media (min-width: 568px) {
                html, body {
                    height: 100%;
                }

                .main-block {
                    flex-direction: row;
                    height: calc(100% - 50px);
                }

                .left-part, form {
                    flex: 1;
                    height: auto;
                }
            }
        </style>
    </head>
    <body>
        <div class="main-block">
            <div class="left-part">
                <i class="fas fa-graduation-cap"></i>


            </div>
            <form action="/">
                <div class="title">
                    <i class="fas fa-pencil-alt"></i>
                    <h2>Register here</h2>
                </div>
                <div class="info">
                    <input class="fname" type="text" name="name" placeholder="Full name">
                    <input type="text" name="name" placeholder="Email">
                    <input type="text" name="name" placeholder="Phone number">
                    <input type="password" name="name" placeholder="Password">
                    <select>
                        <option value="course-type" selected>Course type*</option>
                        <option value="short-courses">Short courses</option>
                        <option value="featured-courses">Featured courses</option>
                        <option value="undergraduate">Undergraduate</option>
                        <option value="diploma">Diploma</option>
                        <option value="certificate">Certificate</option>
                        <option value="masters-degree">Masters degree</option>
                        <option value="postgraduate">Postgraduate</option>
                    </select>
                </div>
                
                <button type="submit" href="/">Submit</button>
            </form>
        </div>
    </body>
    </html>
</asp:Content>
