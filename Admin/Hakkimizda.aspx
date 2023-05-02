<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifiSitesi.Admin.Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:Panel ID="pnl1" runat="server" CssClass="auto-style6">
        <table class="w-100">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnArti" runat="server" Height="30px" Text="+" Width="30px" OnClick="btnArti_Click" />
                </td>
                <td class="text-center"><strong>HAKKIMIZDA</strong></td>
                <td class="text-right">
                    <asp:Button ID="btnEksi" runat="server" Height="30px" Text="-" Width="30px" OnClick="btnEksi_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server">
        <table class="w-100">

        </table>
    </asp:Panel>
</asp:Content>
