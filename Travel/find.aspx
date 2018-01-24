<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="find.aspx.cs" Inherits="Travel.find" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="profile-search">
            
        
           <h3 class="searchHeading3"> Search by People and Connect with them</h3>
       <div class="searchbox">
            <asp:TextBox ID="TextBox1" runat="server" class="searchinput"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" class="searchbtn" />
           <p>Most Searched Profiles</p>


         </div><!--end of searchbox-->
    </div><!--end of profile-search-->
   
</asp:Content>
