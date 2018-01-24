<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Travel.home" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home | MyBook</title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<meta charset="utf-8">
    <style type="text/css">
        .file-upload-panel {}
    </style>
</head>
<body>
     <form id="form1" runat="server">
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
             <h3 class="profile-head"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
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
          <div class="statusbox">
			<h4>Post the Place you travelled Before</h4>
            <asp:TextBox ID="TextBox1" runat="server"  placeholder="I have visited....." CssClass="status-box-input"></asp:TextBox>
              <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-upload-panel" Width="135px" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Post" OnClick="Button1_Click" class="btn-post" Width="102px" Height="52px" />
            <br />
          </div>
			
			<div class="dynamic-feed-load">
				
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="555px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <ItemTemplate>
                          
                      
                       
                          
                      <span class="post-actor-name">
                         <asp:Label ID="post_actor_nameLabel" runat="server" Text='<%# Eval("post_actor_name") %>' />
                        </span>
                        
                       <span class="post-location-date">
                         <asp:Label ID="post_locationLabel" runat="server" Text='<%# Eval("post_location") %>' />

                          
                        <asp:Label ID="post_dateLabel" runat="server" Text='<%# Eval("post_date") %>' />
                        <br />
                        </span>
                        <asp:Label ID="post_captionLabel" runat="server" Text='<%# Eval("post_caption") %>' />
                        <br />
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/post_img/"+Eval("post_photo") %>' Width="555px" />
                        <br />
                      
                     
                       
                       
                        +comments:
                        <asp:Label ID="post_commentLabel" runat="server" Text='<%# Eval("post_comment") %>' />
                       &nbsp;
                        <asp:Label ID="Label2" runat="server" Text="+LIKE" CssClass="likebtn"></asp:Label>
                        <asp:Label ID="post_likeLabel" runat="server" Text='<%# Eval("post_like") %>' />
                        
                       
                        <br />
                        	<div class="milk-seperator"></div>
                    
                    </ItemTemplate>
                </asp:DataList>




			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:travelConnectionString %>" SelectCommand="SELECT post_caption, post_photo, post_actor, post_location, post_share, post_comment, post_like, post_date, post_actor_name FROM post WHERE (post_actor = @post_actor)">
                    <SelectParameters>
                        <asp:CookieParameter CookieName="userid" Name="post_actor" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>



                <!--  #"~/post_img/"+Eval("post_photo")--->
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