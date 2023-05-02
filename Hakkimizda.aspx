<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifiSitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <asp:DataList ID="dtlHakkimizda" runat="server" Width="550px">
        <ItemTemplate>
            <asp:Label ID="lblHakkimizda" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>

    <br />
    <asp:Image ID="imgHakkimizda" runat="server" Height="350px" ImageUrl="~/img/yemek.jpg" Width="550px" />

</asp:Content>
