<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="iQHub.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
		p {
			padding: 5px 20px;
			font-size: 18px
		}
		
		h2 {
			text-align: center;
		}
	
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            top: 0;
            height: 93px;
            width: 100%;
			background-color: white;
            }
        
        li {
            float: right;
        }
        
        li a {
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 20px;
        }
        
        li a:hover {
            background-color: slategray;
        }
        
        .active {
            background-color: deepskyblue;
        }

        div.card {
            float: left;
			width: 31%;
            margin: 0px 1%;
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

    </style>
    <title></title>
</head>
<body style="font-family: calibri">
    <ul>
        <li><a href="UserLogin.aspx">Login</a></li>
        <li><a href="Contact.aspx">Contact Us</a></li>
        <li><a href="About.aspx">About</a></li>
        <li><a class ="active" href="Home.aspx">Home</a></li>
        <li  style="font: bold 45px calibri; color:deepskyblue; float: left; text-align:left; margin-left: 5%">IQHub</li>
    </ul>

    <div style="background-image: url(NatureImg2.jpg); height: 300px; padding: 100px 0px 0px 20%" >
        <h1 style="vertical-align: center">"Only a life lived in the service to others is worth living."</h2>
        <h4>- Albert Einstein</h4>
    </div>
    
	<h1 style="font-size: 40px; text-align: center">Let us help you find an NGO</h1>
	<div style="margin: 50px;">
		<div class="dropdown">
			<button class="dropbtn">Type of NGO</button>
			<div class="dropdown-content">
				<a href="#">Type 1</a>
				<a href="#">Type 2</a>
				<a href="#">Type 3</a>
				<a href="#">Type 4</a>
				<a href="#">Type 5</a>
			</div>
		</div>
		<div style="float: right">
			<input type="text" placeholder="Search for NGO.." style="font-size: 20px;">
		</div>
	</div>
	
	<h1 style="text-align: center; margin: 200px 0px 0px 0px">NGO's near you</h1> 
	
	<div style="margin: 50px 0px 150px 0px">
		<div class="card">
			<h1 style="text-align: center; border-bottom: 4px solid deepskyblue; padding: 15px"><a href="#">Organisation 1</a></h1>
			<h2>What we do</h2>
			<p>We are a baby clinic. We do what we do because it's what we do. Our values are: this, this, and this.</P>
			<p><b>Address:</b> 1 Street ave, Suburb, City</p>
			<p><b>Contact:</b> 000 0000 0000 | ngo@ngo.ngo</p>
			<p><b>What we need:</b> Baby clothes</p>
			<p>-------IMAGE FROM ORGAINSATION HERE-------</p>
		</div>
		<div class="card">
			<h1 style="text-align: center; border-bottom: 4px solid deepskyblue; padding: 15px"><a href="#">Organisation 2</a></h1>
			<h2>What we do</h2>
			<p>We are an animal clinic. We do what we do because it's what we do. Our values are: this, this, and this.</P>
			<p><b>Address:</b> 2 Street ave, Suburb, City</p>
			<p><b>Contact:</b> 111 1111 1111 | ngo2@ngo.ngo</p>
			<p><b>What we need:</b> Volunteers to walk dogs</p>
			<p>-------IMAGE FROM ORGAINSATION HERE-------</p>
		</div>
		<div class="card">
			<h1 style="text-align: center; border-bottom: 4px solid deepskyblue; padding: 15px"><a href="#">Organisation 3</a></h1>
			<h2>What we do</h2>
			<p>We are nature preservationists. We do what we do because it's what we do. Our values are: this, this, and this.</P>
			<p><b>Address:</b> 3 Street ave, Suburb, City</p>
			<p><b>Contact:</b> 222 2222 2222 | ngo3@ngo.ngo</p>
			<p><b>What we need:</b> Funds</p>
			<p>-------IMAGE FROM ORGAINSATION HERE-------</p>
		</div>
	<div>
	<button class="generalBtn"> Next Page</button>
	
	<h1 style="font-size: 40px; text-align: center">How would you like to help out?</h1>
	<div style="margin: 50px;">
		<div class="dropdown">
			<button class="dropbtn">Needs of NGOs</button>
			<div class="dropdown-content">
				<a href="#">Type 1</a>
				<a href="#">Type 2</a>
				<a href="#">Type 3</a>
				<a href="#">Type 4</a>
				<a href="#">Type 5</a>
			</div>
		</div>
		<div style="float: right">
			<input type="text" placeholder="Search for need.." style="font-size: 20px;">
		</div>
	</div>
	
	<h1 style="text-align: center; margin: 200px 0px 0px 0px">This is what we found near you</h1> 
	
	<div style="margin: 50px 0px 150px 0px">
		<div class="card">
			<h1 style="text-align: center; border-bottom: 4px solid deepskyblue; padding: 15px">Baby clothes donations</h1>
			<h2><a href="#">Organisation 1</a></h2>
			<p>We are a baby clinic. We do what we do because it's what we do. Our values are: this, this, and this.</P>
			<p><b>Address:</b> 1 Street ave, Suburb, City</p>
			<p><b>Contact:</b> 000 0000 0000 | ngo@ngo.ngo</p>
			<p><b>Details:</b> This is exactly what we need.</p>
			<p>-------IMAGE FROM ORGAINSATION HERE-------</p>
		</div>
		<div class="card">
			<h1 style="text-align: center; border-bottom: 4px solid deepskyblue; padding: 15px">Volunteers to walk dogs</h1>
			<h2><a href="#">Organisation 2</a></h2>
			<p>We are an animal clinic. We do what we do because it's what we do. Our values are: this, this, and this.</P>
			<p><b>Address:</b> 2 Street ave, Suburb, City</p>
			<p><b>Contact:</b> 111 1111 1111 | ngo2@ngo.ngo</p>
			<p><b>Details:</b> This is exactly what we need.</p>
			<p>-------IMAGE FROM ORGAINSATION HERE-------</p>
		</div>
		<div class="card">
			<h1 style="text-align: center; border-bottom: 4px solid deepskyblue; padding: 15px">Funds</h1>
			<h2><a href="#">Organisation 3</a></h2>
			<p>We are nature preservationists. We do what we do because it's what we do. Our values are: this, this, and this.</P>
			<p><b>Address:</b> 3 Street ave, Suburb, City</p>
			<p><b>Contact:</b> 222 2222 2222 | ngo3@ngo.ngo</p>
			<p><b>Details:</b> This is exactly what we need.</p>
			<p>-------IMAGE FROM ORGAINSATION HERE-------</p>
		</div>
	<div>
	<button class="generalBtn"> Next Page</button>
	
	<div style="background-color: #4CAF50; color: white"> 	FOOTER</div>
	
</body>
</html>