<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orgEdit.aspx.cs" Inherits="iQHub.orgEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
       
        <style>
            body {
                font-family: "Lato", sans-serif;
            }

            .sidebar {
                margin: 0;
                top: 100px;
                padding: 0px;
                width: 220px;
                position: fixed;
                height: 80%;
                overflow: auto;
                border-radius: 10px;
                border: 1px;
                border-color: black;
                border-style: solid;
            }

                .sidebar a {
                    display: block;
                    color: black;
                    padding: 16px;
                    text-decoration: none;
                }

                    .sidebar a.active {
                        background-color: #04AA6D;
                        color: white;
                        font-size: 26px;
                    }

                    .sidebar a:hover:not(.active) {
                        background-color: #555;
                        color: white;
                    }

            div.main {
                margin-left: 250px;
                padding: 1px 16px;
                height: 1000px;
            }

            .menu-head {
                padding: 2px 0px 0px 8px;
                text-decoration: none;
                font-size: 25px;
                font-weight: bold;
                background-color: dodgerblue;
                color: white;
                display: block;
            }

            @media screen and (max-width: 700px) {
                .sidebar {
                    width: 100%;
                    height: auto;
                    position: relative;
                }

                    .sidebar a {
                        float: left;
                    }

                div.main {
                    margin-left: 0;
                }
            }

            @media screen and (max-width: 400px) {
                .sidebar a {
                    text-align: center;
                    float: none;
                }
            }
        </style>
    </head>
    <body>

        <div class="sidebar">
            <div class="menu-header">
                <p class="menu-head">Donations</p>
            </div>
            <a href="#donation">View Current Donations</a>
            <a href="#services">What We Do</a>
            <div class="menu-header">
                <p class="menu-head">Requests</p>
            </div>

            <a href="#clients">Current Requests</a>
            <div class="menu-header">
                <p class="menu-head">Projects</p>
            </div>
            <a href="/contact">Completed Projects</a>
            <a href="/contact">Current Projects</a>
            <a href="/contact">Future Projects</a>
            <div class="menu-header">
                <p class="menu-head">Statistics</p>
            </div>
            <a href="#contact">View Statistics</a>
            <div class="menu-header">
                <p class="menu-head">Social Media</p>
            </div>
            <a href="#contact">Social Media</a>
            <div class="menu-header">
                <p class="menu-head">Account Details</p>
            </div>
            <div class="tab">
                <a href="#contact">Personal Information</a>
                <button class="tablinks" onclick="openEdit(event, 'Donation')">Donations</button>
                <button class="tablinks" onclick="openEdit(event, 'Donation_2')">Donations 2</button>
                <button class="tablinks" onclick="openEdit(event, 'Donation_3')">Donations 3</button>
            </div>
        </div>





        <div class="main">
            <h2>Auto Sidebar</h2>
            <div id="Donation" class="tabcontent">
                <h3>Donation</h3>
                <p>Donation for the month</p>
            </div>

            <h2>Auto Sidebar</h2>
            <div id="Donation_2" class="tabcontent">
                <h3>Donation 2</h3>
                <p>Donation 2 for the month</p>
            </div>

            <h2>Auto Sidebar</h2>
            <div id="Donation_3" class="tabcontent">
                <h3>Donation 3</h3>
                <p>Donation 3 for the month</p>
            </div>
        </div>


        <script type="text/javascript">
            function openEdit(evt, eventName) {
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
            }
        </script>


    </body>
    </html>
</asp:Content>
