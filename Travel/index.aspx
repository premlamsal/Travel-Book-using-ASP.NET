<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Travel.index" %>
<!DOCTYPE html>
<html><head>
	<title>Login | MyBook</title>
	<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
    <form runat="server" id="form">
   
	
	    <div class="nav">
	    	<div class="container">
	    		<span class="proflie-masthead">Profile</span>
		        <div class="login-box" id="form1">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="username" class="login-box-inner-input"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="password" class="login-box-inner-input"></asp:TextBox>
		            
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" class="login-box-inner-btn" OnClick="Button1_Click"/>
		        </div>
			       
	        </div><!--end of container-->
	</div><!--end of nav-->	
	<div class="container">
	 <div class="landing">
			        	 <h1 class="top-profile-h1">Top Profiler</h1>
                             <div class="img-box-top">
                             	   <img src="img/dash_home.jpg" class="img-top-distinct">
                     <div class="signup-form">
                     	<h2 class="joinHub">Join Hub</h2>
                         <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Your First Name" class="signup-box-inner-input"></asp:TextBox>
                         <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Your Last Name" class="signup-box-inner-input"></asp:TextBox>
                         <asp:TextBox ID="TextBox5" runat="server"  type="text" placeholder="Enter Your Email" class="signup-box-inner-input"></asp:TextBox>
                         <asp:TextBox ID="TextBox6" runat="server" type="password" placeholder="Enter Your new Password" class="signup-box-inner-input"></asp:TextBox>
		        	       <asp:TextBox ID="TextBox7" runat="server" type="password" placeholder="Re-enter Your new Password" class="signup-box-inner-input"></asp:TextBox>
		        	
                         <p class="terms">By Singing up. You Have accepted our <a href="#" class="orange">Terms and Condition.</a></p>
                         
                         <asp:Button ID="Button2" runat="server" Text="SignUp" class="signup-box-inner-btn" OnClick="Button2_Click1"/>
                         <br />
                    <p class="signup_sucess"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
                          </div>
                             </div><!--end of img-box-top-->
			        </div><!--end of landing-->
			    </div><!--end of 2nd container-->
			    <div class="footer">
			    	<p>Copyright Protected by Prem Lamsal</p>
			    </div>
        </form>
</body></html>
