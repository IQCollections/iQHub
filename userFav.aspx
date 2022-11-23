<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userFav.aspx.cs" Inherits="iQHub.userFav" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>W3.CSS Template</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .div-1 {
                background-color: #0094ff;
                height: 200px;
                font-size: large;
                font-family: Arial;
                font-weight: bolder;
                font-palette: light;
            }

            .table-condensed tr th {
                border: 0px solid #6e7bd9;
                color: white;
                background-color: #6e7bd9;
            }

            .table-condensed, .table-condensed tr td {
                border: 0px solid #000;
            }

            tr:nth-child(even) {
                background: #f8f7ff
            }

            tr:nth-child(odd) {
                background: #fff;
            }

            body {
                width: 100%;
                margin: 5px;
            }

            body, h1, h2, h3, h4, h5, h6 {
                font-family: "Lato", sans-serif
            }

            .w3-bar, h1, button {
                font-family: "Montserrat", sans-serif
            }

            .fa-anchor, .fa-coffee {
                font-size: 200px
            }
        </style>
    </head>
    <body>

        <!-- Header -->
        <header class="w3-container w3-red w3-center" style="padding: 128px 16px">
            <h1 class="w3-margin w3-jumbo">Favourites Page</h1>
            <p class="w3-xlarge">This page shows the users favourites</p>

        </header>


        <form id="form1">
            <div class="w3-row-padding w3-padding-64 w3-container">
                <asp:GridView CssClass="table table-condensed table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1335px" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="savedID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="savedID" HeaderText="savedID" SortExpression="savedID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="userEmail" HeaderText="userEmail" SortExpression="userEmail" />
                        <asp:BoundField DataField="orgID" HeaderText="orgID" SortExpression="orgID" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                        <ControlStyle BackColor="Red" ForeColor="Black" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [saveORG]"></asp:SqlDataSource>

            </div>
        </form>
        <!-- Second Grid -->
        <div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
            <div class="w3-content">

                <div class="w3-twothird">
                    <h1>Organisations</h1>
                    <h5 class="w3-padding-32">This page shows a list of charitable organisations or companies that have charity drives, that the use has saved and stored for later use!</h5>
                </div>
            </div>
        </div>

        <div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
            <h1 class="w3-margin w3-xlarge">Quote of the day: live life</h1>
        </div>




    </body>
    </html>
</asp:Content>
