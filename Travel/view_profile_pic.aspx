<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="view_profile_pic.aspx.cs" Inherits="Travel.view_profile_pic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <form runat="server" id="form3">
    <p>
        Profile Picture Display</p>
        <asp:image runat="server" id="ImageBox"></asp:image>
        </form>

</asp:Content>
