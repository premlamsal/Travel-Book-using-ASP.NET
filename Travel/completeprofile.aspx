<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="completeprofile.aspx.cs" Inherits="Travel.completeprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p> Only Enter correct information !!</p>
    <div class="form-box-complete-profile">
      <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Phone Number" class="signup2-box-inner-input"></asp:TextBox>
      <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Age" class="signup2-box-inner-input"></asp:TextBox>
      <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Your Religon" class="signup2-box-inner-input"></asp:TextBox>
      <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Your Skilles" class="signup2-box-inner-input"></asp:TextBox>
      <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Your Hobbies" class="signup2-box-inner-input"></asp:TextBox>
      <asp:TextBox ID="TextBox6" runat="server" placeholder="You are Intrested On" class="signup2-box-inner-input"></asp:TextBox>
      <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Your College" class="signup2-box-inner-input"></asp:TextBox>
      <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Your School" class="signup2-box-inner-input"></asp:TextBox>
      <asp:TextBox ID="TextBox9" runat="server" placeholder="Enter Your Level" class="signup2-box-inner-input"></asp:TextBox>
      <asp:TextBox ID="TextBox10" runat="server" placeholder="Enter Your Work" class="signup2-box-inner-input"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit" Class="btn-complete-profile" OnClick="Button1_Click" />
    </div>
               
</asp:Content>

