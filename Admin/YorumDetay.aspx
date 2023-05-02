<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifiSitesi.Admin.YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 123px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style6"><strong></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Ad Soyad : </strong></td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" Width="220px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mail : </strong></td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Width="220px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yorum : </strong></td>
            <td>
                <asp:TextBox ID="txtYorum" runat="server" Width="220px" Enabled="False" Height="125px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yemek : </strong></td>
            <td>
                <asp:TextBox ID="txtYemek" runat="server" Width="220px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="btnOnay" runat="server" OnClick="btnOnay_Click" Text="Onayla" Width="220px" />
            </td>
        </tr>
    </table>
</asp:Content>
