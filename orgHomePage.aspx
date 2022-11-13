<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orgHomePage.aspx.cs" Inherits="iQHub.orgHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #icon {
            margin-top: 20px;
            font-size: 50px;
            color: #3498DB;
            border: 2px;
            border-style: solid;
            border-color: white;
        }

        .col-lg-3 {
            padding: 30px;
            width: 550px;
        }

        .card {
            height: 250px;
            width: 500px;
            border: 2px;
            border-color: black;
            border-style: solid;
            align-content: center
        }

        .card-body {
            height: 250px;
        }
        .card:hover{
            color: white;

            font-size: 25px;
        }
       /* #icon:hover {
            color: #3498DB;
            font-size: 50px;
        }*/

        h2:hover {
            color: white;
            font-size: 50px;
        }
        #heading {
            text-align: center;
            background-color: #3498DB;
            color: white;
        }
        

       /* h2 {
            text-align: center;
            background-color: #3498DB;
            color: white;
        }*/


    </style>
    <%--    <title></title>
</head>
<body>--%>
    <%--<form id="form1" runat="server">
        <div class="row">
            <h1 class="display-4">welcom</h1>

        </div>
    </form>--%>


    <div class="row" style="vertical-align: auto">
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body">
                    <h2 id="heading">Donations 
                        <i id="icon">
                            <asp:Image ID="donate" ImageUrl="~/xbcad icons/ic_donate.png" runat="server"/>
                        </i></h2>
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink1" runat="server" href="/orgEdit">View Current Donations</asp:HyperLink>
                        
                        <br />
                        <asp:HyperLink ID="HyperLink3" runat="server" href="/orgEdit">What We Do</asp:HyperLink>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body">
                    <h2 id="heading">Requests 
                        <i id="icon">
                            <asp:Image ID="Req" ImageUrl="~/xbcad icons/ic_req.png" runat="server" />
                        </i>
                    </h2 id="heading">
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink10" runat="server" href="/orgEdit">Current Requests</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body">
                    <h2 id="heading">Projects 
                        <i id="icon">
                            <asp:Image ID="Image1" ImageUrl="~/xbcad icons/ic_projects.png" runat="server" />
                        </i>
                    </h2>
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink2" runat="server" href="/orgEdit">Current Projects</asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink4" runat="server" href="/orgEdit">Future Projects</asp:HyperLink> <br />
                        <asp:HyperLink ID="HyperLink5" runat="server" href="/orgEdit">Completed Projects</asp:HyperLink> <br />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body">
                    <h2 id="heading">Statistics
                        <i id="icon">
                            <asp:Image ID="Image2" ImageUrl="~/xbcad icons/ic_stats.png" runat="server" />
                        </i>
                    </h2>
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink6" runat="server" href="/orgEdit">View Donation Stats</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body">
                    <h2 id="heading">Social Media
                        <i id="icon">
                            <asp:Image ID="Image4" ImageUrl="~/xbcad icons/ic_social.png" runat="server" />
                        </i>
                    </h2>
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink7" runat="server" href="/orgEdit">Social Media</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body">
                    <h2 id="heading">Personal Details
                        <i id="icon">
                            <asp:Image ID="Image3" ImageUrl="~/xbcad icons/ic_details.png" runat="server" />
                        </i>
                    </h2>
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink8" runat="server" href="/orgEdit">Personal Details</asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink9" runat="server" href="/orgEdit">Address</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
