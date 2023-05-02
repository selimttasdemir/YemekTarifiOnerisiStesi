<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifiSitesi.Admin.MesajDetay" %>

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
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Kimden : </strong></td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mail : </strong></td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Konu : </strong></td>
            <td>
                <asp:TextBox ID="txtKonu" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mesaj : </strong></td>
            <td>
                <asp:TextBox ID="txtMesaj" runat="server" Width="220px" Height="120px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
