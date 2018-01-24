<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicHome.aspx.cs" Inherits="Travel.DynamicHome" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home | MyBook</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<meta charset="utf-8">
</head>
<body>
     <form id="form1" runat="server">
	<div class="container">
		<div class="navContainer">
		<ul>
			<li><a href="#">MY BOOK</a></li>
			<li><a href="Home.aspx">Home</a></li>
			<li><a href="#">Profile</a></li>
			<li><a href="#">Find</a></li>
			<li><a href="#">Visited Places</a></li>
              <li><a href="logout.aspx">LogOut</a></li>
		</ul>
	</div>
	<div class="landing">
		<div class="leftNav">
            <asp:Image ID="Image1" runat="server" style=" width:260px;height:218px;"/>
	            <h3><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
	           <ul>
	          <li><a href="home.aspx" class="active">News</a></li>
	           	<li><a href="about.aspx" >About</a></li>
	           	<li><a href="location.aspx" >Location</a></li>
	           	<li><a href="points.aspx" >Points</a></li>
	           	<li><a href="levels.aspx" >Level</a></li>
	           	<li><a href="setting.aspx" >Setting</a></li>
	           </ul>
	  	</div><!--end of leftNav-->
		<div class="newfeed">
			<h4>Post the Place you travelled Before</h4>
			<input type="text" name="story" placeholder="I have visited .....">
			<button class="btn-post">Post</button>
			<div class="dynamic-feed-load">
				
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="619px">
                    <ItemTemplate>
                        caption
                        <asp:Label ID="post_captionLabel" runat="server" Text='<%# Eval("post_caption") %>' />
                       <br />
                        <asp:Image ID="Image2" runat="server" Height="365px" ImageUrl='<%# "~/post_img/"+Eval("post_photo") %>' Width="624px" />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>




			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:travelConnectionString %>" SelectCommand="SELECT [post_caption], [post_photo] FROM [post] WHERE ([post_actor] = @post_actor)">
                    <SelectParameters>
                        <asp:CookieParameter CookieName="userid" Name="post_actor" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>




			</div><!--end of dynami-feed-load-->
		</div><!--end of newsfeed-->
       <div class="rightNav">
       	   <h3 class="rightNav_heading">Profile Notification</h3>
           <div class="complete-profile">
           <p>
               <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink>
           </p>
           </div>
       </div><!--end of rightNav-->
	</div><!--end of landing-->

    </div>

         </form>
</body>
</html>