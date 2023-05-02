<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifiSitesi.Admin.YemekDuzenle" %>

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
            <td class="auto-style6"><strong>Yemek Adı : </strong></td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Malzemeler : </strong></td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server" Width="220px" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yemek Tarifi : </strong></td>
            <td>
                <asp:TextBox ID="txtTarif" runat="server" Width="220px" Height="120px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Kategori : </strong></td>
            <td>
                <asp:DropDownList ID="ddlKategori" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="btnGuncelle" runat="server" Height="35px" OnClick="btnGuncelle_Click" Text="Güncelle" Width="100px" />
                <asp:Button ID="btnGununYemegi" runat="server" Height="35px" OnClick="btnGununYemegi_Click" Text="Günün Yemeği" Width="100px" />
            </td>
        </tr>
    </table>

</asp:Content>
