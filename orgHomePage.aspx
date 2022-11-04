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
            padding: 20px;
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
            height: 300px;
        }

       /* #icon:hover {
            color: #3498DB;
            font-size: 50px;
        }*/

        h2:hover {
            color: white;
            font-size: 50px;
        }

        h2 {
            text-align: center;
            background-color: #3498DB;
            color: white;
        }

        #req {
            padding-left: 20px;
        }
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
                    <h2 >Donations 
                        <i id="icon">
                            <asp:Image ID="donate" ImageUrl="~/xbcad icons/ic_donate.png" runat="server"/>
                        </i></h2>
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink1" runat="server">View Current Donations</asp:HyperLink>
                        
                        <br />
                        <asp:HyperLink ID="HyperLink3" runat="server">What We Do</asp:HyperLink>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body">
                    <h2>Requests 
                        <i id="icon">
                            <asp:Image ID="Req" ImageUrl="~/xbcad icons/ic_req.png" runat="server" />
                        </i>
                    </h2>
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink10" runat="server">Current Requests</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body">
                    <h2>Projects 
                        <i id="icon">
                            <asp:Image ID="Image1" ImageUrl="~/xbcad icons/ic_projects.png" runat="server" />
                        </i>
                    </h2>
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink2" runat="server">Current Projects</asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink4" runat="server">Future Projects</asp:HyperLink> <br />
                        <asp:HyperLink ID="HyperLink5" runat="server">Completed Projects</asp:HyperLink> <br />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body">
                    <h2>Statistics
                        <i id="icon">
                            <asp:Image ID="Image2" ImageUrl="~/xbcad icons/ic_stats.png" runat="server" />
                        </i>
                    </h2>
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink6" runat="server">View Donation Stats</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body">
                    <h2>Social Media
                        <i id="icon">
                            <asp:Image ID="Image4" ImageUrl="~/xbcad icons/ic_social.png" runat="server" />
                        </i>
                    </h2>
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink7" runat="server">Social Media</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body">
                    <h2>Personal Details
                        <i id="icon">
                            <asp:Image ID="Image3" ImageUrl="~/xbcad icons/ic_details.png" runat="server" />
                        </i>
                    </h2>
                    <div style="text-align: center">
                        <asp:HyperLink ID="HyperLink8" runat="server">Personal Details</asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink9" runat="server">Address</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
