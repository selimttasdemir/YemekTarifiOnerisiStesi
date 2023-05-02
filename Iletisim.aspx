<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifiSitesi.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <table class="w-100">
        <tr>
            <td class="text-center" colspan="2"><strong><em>Mesaj Gönderebilirsiniz</em></strong></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Adınız ve Soyadınız :</strong></td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Mail Adresiniz :</strong></td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Mesajınızın Konusu :</strong></td>
            <td>
                <asp:TextBox ID="txtKonu" runat="server" TextMode="SingleLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Mesajınız :</strong></td>
            <td>
                <asp:TextBox ID="txtMesaj" runat="server" Height="120px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>
                <asp:Button ID="btnMesajGonder" runat="server" Height="40px" OnClick="btnMesajGonder_Click" Text="GÖNDER" Width="120px" />
            </td>
        </tr>
    </table>

</asp:Content>
