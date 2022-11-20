<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orgEdit.aspx.cs" Inherits="iQHub.orgEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <style>
            body {
                font-family: "Times New Roman", 'Times New Roman';
            }

            .sidebar {
                margin: 0;
                top: 100px;
                padding: 0px;
                width: 220px;
                position: fixed;
                height: 60%;
                overflow: auto;
                border-radius: 10px;
                border: 2px;
                border-color:   #0070ff;
                border-style: solid;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }

                .sidebar button {
                    display: block;
                    color: black;
                    padding: 16px;
                    text-decoration: none;
                }

                    .sidebar button.active {
                        background-color: #34495e;
                        color: white;
                        font-size: 20px;
                    }

                    .sidebar button:hover:not(.active) {
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

                    .sidebar button {
                        float: left;
                    }

                div.main {
                    margin-left: 0;
                }
            }

            @media screen and (max-width: 400px) {
                .sidebar button {
                    text-align: center;
                    float: none;
                }
            }

            .tab button {
                display: block;
                background-color: inherit;
                color: black;
                padding: 10px 15px;
                width: 100%;
                border: none;
                outline: none;
                text-align: left;
                cursor: pointer;
                transition: 0.3s;
                font-size: 17px;
            }

            .tabcontent {
                float: left;
                padding: 0px 12px;
                width: 80%;
                border-left: none;
                height: 80%;
            }
        </style>

        <style id="style edit">
            .main-block {
                /*display: flex;*/
                flex-direction: column;
                justify-content: center;
                align-items: center;
                margin: 20px 20px 10px 20px;
                height: 1000px;
                /*height: 100%;*/
                padding: 15px;
                background:  #fdfefe;
                border: solid;
                border-color:  #40E0D0 ;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)
            }

            .left-part, form {
                padding: 15px;
            }

            .left-part {
                text-align: center;
            }

            .fa-graduation-cap {
                font-size: 52px;
            }

            form {
                /*background: rgba(0, 0, 0, 0.7);*/
                margin-left: 20px;
            }

            .title {
                display: flex;
                margin-left: 200px;
                margin-bottom: 10px;
            }

            .info {
                display: flex;
                flex-direction: column;
                margin-left: 80px;
            }

            h2 {
                align-content: center;
                align-items: center;
            }

            input, select {
                padding: 5px;
                margin-bottom: 30px;
                font-size: 25px;
                background: transparent;
                border: none;
                margin-left: 80px;
                border-bottom: 1px solid #eee;
            }

                input::placeholder {
                    color: deepskyblue;
                }

            


            .btn-item, .btnSub {
                padding: 10px 5px;
                margin-top: 20px;
                border-radius: 5px;
                border: none;
                background: #26a9e0;
                text-decoration: none;
                font-size: 15px;
                width: 30%;
                margin-left: 80px;
                font-weight: 400;
                color: #fff;
            }

            .btn-item {
                display: inline-block;
                margin-top: 20px ;
                margin-left: 80px;
            }

            .btnSub {
                width: 30%;
                margin-left: 200px;
            }

                .btnSub:hover, .btn-item:hover {
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

        <style>
            div.card {
            float: left;
			width: 80%;
            margin: 0px 1%;
            border: 3px;
            border-color:   #6495ED ;
            border-style: solid;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
		
		div.card a {
			color: black;
			padding: 12px 16px;
			text-decoration: none;
			display: block;
		}
		
		div.card a:hover {
			color: #4CAF50;
			cursor: pointer;
		}
        </style>

    </head>
    <body>

        <div class="sidebar">
            <div class="menu-header">
                <p class="menu-head">Donations</p>
            </div>
            <div class="tab">
                <button type="button" class="tablinks" onclick="openEdit(event, 'Donation')">Current Projects</button>
                
            </div>

            <div class="menu-header">
                <p class="menu-head">Projects</p>
            </div>
            <div class="tab">
                <button type="button" class="tablinks" onclick="openEdit(event, 'Completed')">Completed Projects</button>
                <button type="button" class="tablinks" onclick="openEdit(event, 'Future')">Future Projects</button>
            </div>
            <div class="menu-header">
                <p class="menu-head">Statistics</p>
            </div>
            <div class="tab">
                <a href="/stats">
                    <button type="button" class="tablinks">View Statistics </button>
                </a>
            </div>
            <div class="menu-header">
                <p class="menu-head">Account Details</p>
            </div>
            <div class="tab">
                <button type="button" class="tablinks" onclick="openEdit(event, 'orgDetail')">Personal Information</button>

            </div>
        </div>


        <div class="main">

            <div id="Donation" class="tabcontent">
                <h3>Donation</h3>
                <p>Donation for the month</p>

                <div style="margin: 50px 0px 150px 0px">
                    <div class="card">
                        <h1 style="text-align: center; border-bottom: 4px solid deepskyblue; padding: 15px">Projects</h1>
                        <h2>Project Details</h2>
                        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="postID" DataSourceID="SqlDataSource1">
                            <Fields>
                                <asp:BoundField DataField="orgID" HeaderText="orgID" SortExpression="orgID" />
                                <asp:BoundField DataField="postTitle" HeaderText="postTitle" SortExpression="postTitle" />
                                <asp:BoundField DataField="postDescription" HeaderText="postDescription" SortExpression="postDescription" />
                                <asp:BoundField DataField="postID" HeaderText="postID" InsertVisible="False" ReadOnly="True" SortExpression="postID" />
                            </Fields>
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [posts] WHERE [postID] = @postID" InsertCommand="INSERT INTO [posts] ([orgID], [postTitle], [postDescription]) VALUES (@orgID, @postTitle, @postDescription)" SelectCommand="SELECT [orgID], [postTitle], [postDescription], [postID] FROM [posts]" UpdateCommand="UPDATE [posts] SET [orgID] = @orgID, [postTitle] = @postTitle, [postDescription] = @postDescription WHERE [postID] = @postID">
                            <DeleteParameters>
                                <asp:Parameter Name="postID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="orgID" Type="Int32" />
                                <asp:Parameter Name="postTitle" Type="String" />
                                <asp:Parameter Name="postDescription" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="orgID" Type="Int32" />
                                <asp:Parameter Name="postTitle" Type="String" />
                                <asp:Parameter Name="postDescription" Type="String" />
                                <asp:Parameter Name="postID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        
                    </div>
                    
                </div>


                <div id="Stats" class="tabcontent" style="display: none">
                    <h3>Statistics</h3>
                    <p>This is the stats page</p>
                </div>




                <div id="Completed" class="tabcontent" style="display: none">
                    <h3>Donation 2</h3>
                    <p>Donation 2 for the month</p>

                </div>

            </div>


            <div id="Future" class="tabcontent" style="display: none">
                <h3>Donation 3</h3>
                <p>Donation 3 for the month</p>
            </div>

            <div id="orgDetail" class="tabcontent" style="display: none">

                <div class="main-block">
                    <div class="left-part">
                        <i class="fas fa-graduation-cap"></i>


                    </div>
                    <form action="/">
                        <div class="title">
                            <i class="fas fa-pencil-alt"></i>
                            <h2>Account Details</h2>
                        </div>
                        <div class="info">
                            <input class="fname" type="text" name="name" placeholder="Organisation Name">
                            <input type="text" name="name" placeholder="Email">
                            <input type="text" name="name" placeholder="Location">
                            <input type="text" name="name" placeholder="Organisation Category">
                            <input type="password" name="name" placeholder="Password">
                        </div>

                        <button class="btnSub" type="Submit" href="/">Update</button>
                    </form>
                </div>

            </div>





        </div>


        <script type="text/javascript">
            function openEdit(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                    document.documentElement.scrollTop = 0
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }
            document.getElementById("defaultOpen").click();
        </script>


    </body>
    </html>
</asp:Content>
