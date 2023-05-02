<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Gunun-Yemegi.aspx.cs" Inherits="YemekTarifiSitesi.Gunun_Yemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:DataList ID="dataListGununYemegi" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong>GÜNÜN YEMEĞİ</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" runat="server" Height="250px" Style="text-align: center" Width="350px" ImageUrl='<%# Eval("YemekResim") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Puan :
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Tarih :
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>

    </asp:DataList>
</asp:Content>
