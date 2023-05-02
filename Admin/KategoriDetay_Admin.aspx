<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDetay_Admin.aspx.cs" Inherits="YemekTarifiSitesi.Admin.KategoriDetay_Admin" %>

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
        <td class="auto-style6"><strong>Kategori Adı : </strong></td>
        <td>
            <asp:TextBox ID="txtAd" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Adet : </strong></td>
        <td>
            <asp:TextBox ID="txtAdet" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Resim : </strong></td>
        <td>
            <asp:FileUpload ID="FileUploadResim" runat="server" Width="220px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong></strong></td>
        <td>
            <asp:Button ID="btnGuncelle" runat="server" Height="35px" OnClick="btnGuncelle_Click" Text="Güncelle" Width="100px" />
        </td>
    </tr>
</table>

</asp:Content>
