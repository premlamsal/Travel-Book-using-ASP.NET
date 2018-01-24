<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Travel.about" %>
<!DOCTYPE html>
<html>
<head>
	<title>About | MyBook</title>
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
	           	<li><a href="about.aspx"  class="active">About</a></li>
	           	<li><a href="location.aspx" >Location</a></li>
	           	<li><a href="points.aspx" >Points</a></li>
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
				<h3>About USERNAME</h3>
				<span class="info-head">Lives in</span><p class="info-body">Kathmandu,Nepal</p>

				<span class="info-head">Works at</span><p class="info-body">Microsoft Nepal</p>

				<span class="info-head">Intrested in</span><p class="info-body">Male</p>

				<span class="info-head">Hobbies</span><p class="info-body">Music and Playing Guitar</p>
			</div><!--end of profile-details-->

		</div><!--end of newsfeed-->
	</div><!--end of landing-->

    </div>
</body>
</html>
