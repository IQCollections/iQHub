<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Home2.aspx.cs" Inherits="iQHub.Home2" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
		p {
			padding: 5px 20px;
			font-size: 18px
		}
		
		h2 {
			text-align: center;
		}
	

        div.card {
            float: left;
			width: 31%;
            margin: 0px 1% 50px 1%;
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
		
		
		.generalBtn {
			background-color: #4CAF50;
			color: white;
			padding: 16px;
			font-size: 16px;
			border: none;
			cursor: pointer;
			margin: 50px;
		}
		
		.dropbtn {
			background-color: #4CAF50;
			color: white;
			padding: 16px;
			font-size: 16px;
			border: none;
			cursor: pointer;
		}
		
		.dropdown {
			position: relative;
			float: left;
		}
		
		.dropdown-content {
			display: none;
			position: absolute;
			background-color: #f9f9f9;
			min-width: 160px;
			box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
			z-index: 1;
		}
		
		.dropdown-content a {
			color: black;
			padding: 12px 16px;
			text-decoration: none;
			display: block;
		}
		
		.dropdown-content a:hover {background-color: #f1f1f1}
		
		.dropdown:hover .dropdown-content {
			display: block;
		}
		
		.dropdown:hover .dropbtn {
			background-color: #3e8e41;
		}

		.ddl
		{
			padding: 15px;
		}

    </style>

    <div style="background-image: url(NatureImg2.jpg); height: 300px; padding: 100px 0px 0px 20%" >
        <h1 style="vertical-align: central">"Only a life lived in the service to others is worth living."</h1>
        <h4>- Albert Einstein</h4>
    </div>
    
	<h1 style="font-size: 40px; text-align: center">Let us help you find an NGO</h1>
	<div style="margin: 50px;">
	
		<div style="margin:100px 50px 0px 0px; float:left"><asp:Button runat="server" ID="btnType1" Text="" BackColor="#4CAF50" ForeColor="White" Height="50px" Width="130px" OnClick="btnType1_Click"></asp:Button></div>
		<div style="margin:100px 50px 0px 0px; float:left"><asp:Button runat="server" ID="btnType2" Text="" BackColor="#4CAF50" ForeColor="White" Height="50px" Width="130px" OnClick="btnType2_Click"></asp:Button></div>
		<div style="margin:100px 50px 0px 0px; float:left"><asp:Button runat="server" ID="btnType3" Text="" BackColor="#4CAF50" ForeColor="White" Height="50px" Width="130px" OnClick="btnType3_Click"></asp:Button></div>
	</div>
	
	<h1 style="text-align: center; margin: 200px 0px 0px 0px">NGO's near you</h1> 
	
	<div style="margin: 50px 0px 150px 0px">
		<div class="card">
			<h1 style="text-align: center; border-bottom: 4px solid deepskyblue; padding: 15px"><asp:HyperLink ID="Org1Name" NavigateUrl="#" runat="server"></asp:HyperLink></h1>
			<div style="font-size: 30px; text-align: center"><asp:label ID="Org1Type" runat="server">What we do</asp:label></div>
			<p><asp:label ID="Org1Descrip" runat="server">We are a baby clinic. We do what we do because it's what we do. Our values are: this, this, and this.</asp:label></P>
			<p><b>Location:</b><asp:label ID="Org1Location" runat="server"> 1 Street ave, Suburb, City </asp:label></p>
			<p><b>Contact:</b><asp:label ID="Org1Contact" runat="server"> ngo2@ngo.ngo </asp:label></p>
			<p><b>What we need:</b> Baby clothes</p>
		</div>
		<div class="card">
			<h1 style="text-align: center; border-bottom: 4px solid deepskyblue; padding: 15px"><asp:HyperLink ID="Org2Name" NavigateUrl="#" runat="server"></asp:HyperLink></h1>
			<div style="font-size: 30px; text-align: center"><asp:label ID="Org2Type" runat="server">What we do</asp:label></div>
			<p>We are an animal clinic. We do what we do because it's what we do. Our values are: this, this, and this.</P>
			<p><b>Location:</b><asp:label ID="Org2Location" runat="server"> 1 Street ave, Suburb, City </asp:label></p>
			<p><b>Contact:</b><asp:label ID="Org2Contact" runat="server"> ngo2@ngo.ngo </asp:label></p>
			<p><b>What we need:</b> Volunteers to walk dogs</p>
		</div>
		<div class="card">
			<h1 style="text-align: center; border-bottom: 4px solid deepskyblue; padding: 15px"><asp:HyperLink ID="Org3Name" NavigateUrl="#" runat="server"></asp:HyperLink></h1>
			<div style="font-size: 30px; text-align: center"><asp:label ID="Org3Type" runat="server">What we do</asp:label></div>
			<p>We are nature preservationists. We do what we do because it's what we do. Our values are: this, this, and this.</P>
			<p><b>Location:</b><asp:label ID="Org3Location" runat="server"> 1 Street ave, Suburb, City </asp:label></p>
			<p><b>Contact:</b><asp:label ID="Org3Contact" runat="server"> ngo2@ngo.ngo </asp:label></p>
			<p><b>What we need:</b> Funds</p>
		</div>
	</div>
	<div style="margin:150px 50px"><asp:Button runat="server" ID="btnNext" Text="Next Page" BackColor="#4CAF50" ForeColor="White" Height="50px" Width="130px" OnClick="btnNext_Click"></asp:Button></div>
	
</asp:Content>
