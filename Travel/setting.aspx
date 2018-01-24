<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="setting.aspx.cs" Inherits="Travel.settings" %>
<!DOCTYPE html>
<html>
<head>
	<title>Settings | MyBook </title>
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
	          <li><a href="home.aspx">News</a></li>
	           	<li><a href="about.aspx" >About</a></li>
	           	<li><a href="location.aspx" >Location</a></li>
	           	<li><a href="points.aspx" >Points</a></li>
	           	<li><a href="levels.aspx" >Level</a></li>
	           	<li><a href="setting.aspx" class="active">Setting</a></li>
	           </ul>
	  	</div><!--end of leftNav-->
		<div class="newfeed-profile">
            
           
         
               <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink>
          
			<div class="cover-pic-box">
			<img src="img/cover.jpg" class="cover-img-itself">

			 </div><!--end of cover-pic-box-->
			<div class="profile-details">
				<h3>Profile Settings</h3>
				<span class="info-head">Only enter correct information</span>
                <div class="grid_view_table">                
                    <p class="info-body"> 
                    
                    I hereby accept all the information below are correct and fact.It will take 24 hours to update your information in database.</p>
                <p>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uid" DataSourceID="SqlDataSource1" Height="84px" Width="945px" HorizontalAlign="Justify" OnRowUpdated="GridView1_RowUpdated">
                        <Columns>
                            <asp:BoundField DataField="uid" HeaderText="Profile ID" InsertVisible="False" ReadOnly="True" SortExpression="uid" />
                            <asp:BoundField DataField="UFirstName" HeaderText="First Name" SortExpression="UFirstName" />
                            <asp:BoundField DataField="ULastName" HeaderText="Last Name" SortExpression="ULastName" />
                            <asp:BoundField DataField="UEmail" HeaderText="Email" SortExpression="UEmail" />
                            <asp:BoundField DataField="UPassword" HeaderText="Password" SortExpression="UPassword" />
                            <asp:CommandField ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                  
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:travelConnectionString %>" DeleteCommand="DELETE FROM [user_info] WHERE [uid] = @original_uid AND [ULastName] = @original_ULastName AND (([UFirstName] = @original_UFirstName) OR ([UFirstName] IS NULL AND @original_UFirstName IS NULL)) AND [UEmail] = @original_UEmail AND [UPassword] = @original_UPassword" InsertCommand="INSERT INTO [user_info] ([ULastName], [UFirstName], [UEmail], [UPassword]) VALUES (@ULastName, @UFirstName, @UEmail, @UPassword)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [user_info] WHERE ([uid] = @uid)" UpdateCommand="UPDATE [user_info] SET [ULastName] = @ULastName, [UFirstName] = @UFirstName, [UEmail] = @UEmail, [UPassword] = @UPassword WHERE [uid] = @original_uid AND [ULastName] = @original_ULastName AND (([UFirstName] = @original_UFirstName) OR ([UFirstName] IS NULL AND @original_UFirstName IS NULL)) AND [UEmail] = @original_UEmail AND [UPassword] = @original_UPassword">
                        <DeleteParameters>
                            <asp:Parameter Name="original_uid" Type="Int32" />
                            <asp:Parameter Name="original_ULastName" Type="String" />
                            <asp:Parameter Name="original_UFirstName" Type="String" />
                            <asp:Parameter Name="original_UEmail" Type="String" />
                            <asp:Parameter Name="original_UPassword" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ULastName" Type="String" />
                            <asp:Parameter Name="UFirstName" Type="String" />
                            <asp:Parameter Name="UEmail" Type="String" />
                            <asp:Parameter Name="UPassword" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:CookieParameter CookieName="userid" Name="uid" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ULastName" Type="String" />
                            <asp:Parameter Name="UFirstName" Type="String" />
                            <asp:Parameter Name="UEmail" Type="String" />
                            <asp:Parameter Name="UPassword" Type="String" />
                            <asp:Parameter Name="original_uid" Type="Int32" />
                            <asp:Parameter Name="original_ULastName" Type="String" />
                            <asp:Parameter Name="original_UFirstName" Type="String" />
                            <asp:Parameter Name="original_UEmail" Type="String" />
                            <asp:Parameter Name="original_UPassword" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                  
                </p>
                    </div>

                
                <div class="dp-change-box">
                <h3>Change Display pictures</h3>
                    <p>



                   </p>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                    <br />
                    <br />
                    File Upload Status:<br />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    
				
			</div><!--end of profile-details-->
		</div><!--end of newsfeed-->
            
	</div><!--end of landing-->

    </div>
        </div>
    </form>
</body>
</html>