<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="points.aspx.cs" Inherits="Travel.points" %>

<!DOCTYPE html>
<html>
<head>
	<title>Points | MyBook</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<meta charset="utf-8">
</head>
<body>
	<div class="container">
		<div class="navContainer">
		<ul>
			<li><a href="#">MY BOOK</a></li>
			<li><a href="Home.aspx">Home</a></li>
			<li><a href="#">Profile</a></li>
			<li><a href="find.aspx">Find</a></li>
			<li><a href="#">Visited Places</a></li>
              <li><a href="logout.aspx">LogOut</a></li>
		</ul>
	</div>
	<div class="landing">
		<div class="leftNav">
            <asp:Image ID="Image1" runat="server" style=" width:260px;"/>
	            <h3><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
	           <ul>
	          <li><a href="home.aspx" >News</a></li>
	           	<li><a href="about.aspx" >About</a></li>
	           	<li><a href="location.aspx" >Location</a></li>
	           	<li><a href="points.aspx" class="active">Points</a></li>
	           	<li><a href="levels.aspx" >Level</a></li>
	           	<li><a href="setting.aspx" >Setting</a></li>
	           </ul>
	  	</div><!--end of leftNav-->
		<div class="newfeed-profile">
              <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink>
          
			<div class="cover-pic-box">
			<img src="img/cover.jpg" class="cover-img-itself">

			 </div><!--end of cover-pic-box-->
			<div class="profile-details">
				<h3>Point based on profile views</h3>
				<span class="info-head">Profile Points collected </span><p class="info-body"> 10000</p>

				
			</div><!--end of profile-details-->

		</div><!--end of newsfeed-->
	</div><!--end of landing-->

    </div>
</body>
</html>
