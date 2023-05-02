<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Tarif-Oner.aspx.cs" Inherits="YemekTarifiSitesi.Tarif_Oner" %>

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
            <td class="auto-style3">Yemek Ad :</td>
            <td>
                <asp:TextBox placeholder="İçli Köfte" ID="txtTarifAdi" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="text-right">Kategori : </td>
            <td>
                <asp:DropDownList ID="ddlKategoriler" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Yemek Malzemeleri :</td>
            <td>
                <asp:TextBox placeholder="Kıyma, Bulgur, ..." ID="txtMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="200px" /></td>
        </tr>
        <tr>
            <td class="auto-style3">Yapılışı :&nbsp;</td>
            <td>
                <asp:TextBox placeholder="Kıymayı soğanla kavuruyoruz..." ID="txtTarif" runat="server" Height="100px" TextMode="MultiLine" Width="200px" /></td>
        </tr>
        <tr>
            <td class="auto-style3">Resim Yükle :</td>
            <td>
                <asp:FileUpload ID="fileUpload" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Tam Adınız :</td>
            <td>
                <asp:TextBox placeholder="Ali Kaya" ID="txtName" runat="server" Width="200px" /></td>
        </tr>
        <tr>
            <td class="auto-style3">Mail Adresiniz :</td>
            <td>
                <asp:TextBox placeholder="Example@domain.com" ID="txtMail" runat="server" TextMode="Email" Width="200px" /></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btnGonder" runat="server" Height="40px" Text="Tarif Öner" Width="150px" OnClick="btnGonder_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
