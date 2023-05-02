<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="OneriDetay.aspx.cs" Inherits="YemekTarifiSitesi.Admin.OneriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Yemek Adı :</td>
            <td>
                <asp:TextBox Text='<%# Eval("TarifAd") %>' placeholder="---" ID="txtTarifAdi" runat="server" Width="200px" Enabled="False" />
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
            <td class="auto-style3">Yemeğin Malzemeleri :</td>
            <td>
                <asp:TextBox Text='<%# Eval("TarifMalzeme") %>' placeholder="..." ID="txtMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="200px" Enabled="False" /></td>
        </tr>
        <tr>
            <td class="auto-style3">Yemeğin Yapılışı :&nbsp;</td>
            <td>
                <asp:TextBox Text='<%# Eval("TarifYapilis") %>' placeholder="---" ID="txtTarif" runat="server" Height="100px" TextMode="MultiLine" Width="200px" Enabled="False" /></td>
        </tr>
        <tr>
            <td class="auto-style3">Öneren Kişi :</td>
            <td>
                <asp:TextBox Text='<%# Eval("TarifSahip") %>' placeholder="İsim Soyisim" ID="txtName" runat="server" Width="200px" Enabled="False" /></td>
        </tr>
        <tr>
            <td class="auto-style3">Mail Adresi :</td>
            <td>
                <asp:TextBox Text='<%# Eval("TarifSahipMail") %>' placeholder="Example@domain.com" ID="txtMail" runat="server" TextMode="Email" Width="200px" Enabled="False" /></td>
        </tr>
        <tr>
            <td class="auto-style3">Resim :</td>
            <td>
                <asp:Image ID="YemekResim" runat="server" Height="250px" Style="text-align: center" Width="350px" ImageUrl='<%# Eval("TarifResim") %>' />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btnOnayla" runat="server" Height="40px" Text="Onayla" Width="150px" OnClick="btnOnayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
