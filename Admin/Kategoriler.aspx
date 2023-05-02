<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSitesi.Admin.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            margin-bottom: 0px;
            background-color: #6699FF;
            height: auto;
        }

        .auto-style7 {
            width: 400px;
        }

        .auto-style8 {
            text-align: center;
            width: 65px;
        }

        .auto-style9 {
            width: 30px;
        }

        .auto-style10 {
            width: 490px;
            text-align: center;
        }

        .auto-style11 {
            width: 153px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <asp:Panel ID="pnl1" runat="server" CssClass="auto-style6">
        <table class="w-100">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnArti" runat="server" Height="30px" Text="+" Width="30px" OnClick="btnArti_Click" />
                </td>
                <td class="auto-style10"><strong>KATEGORİLER</strong></td>
                <td>
                    <asp:Button ID="btnEksi" runat="server" Height="30px" Text="-" Width="30px" OnClick="btnEksi_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnlIcerik" runat="server" CssClass="auto-style6">
        <asp:DataList ID="dtlKategori" runat="server" Width="550px">
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="KategoriDetay_Admin.aspx?KategoriID=<%# Eval("KategoriID") %>">
                                <asp:Image ID="imgUpdate" runat="server" Height="30px" Width="30px" ImageUrl="~/img/Update_208px.png" />
                            </a>
                        </td>
                        <td class="auto-style8">
                            <a href="Kategoriler.aspx?KategoriID=<%# Eval("KategoriID") %>&islem=sil">
                                <asp:Image ID="imgDelete" runat="server" Height="30px" Width="30px" ImageUrl="~/img/delete_96px.png" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="pnl2" runat="server" CssClass="auto-style6">
        <table class="w-100">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btn_Arti" runat="server" Height="30px" Text="+" Width="30px" OnClick="btn_Arti_Click" />
                </td>
                <td class="auto-style10"><strong>KATEGORİ EKLEME</strong></td>
                <td>
                    <asp:Button ID="btn_Eksi" runat="server" Height="30px" Text="-" Width="30px" OnClick="btn_Eksi_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnlKatgoriEkleme" runat="server" CssClass="auto-style6">
        <table class="w-100">
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Kategori Adı :</td>
                <td>
                    <asp:TextBox ID="txtK_adi" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Kategori İkon :</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td>
                    <asp:Button ID="btnEkle" runat="server" Height="30px" OnClick="btnEkle_Click" Text="Ekle" Width="120px" />
                </td>
            </tr>
        </table>

    </asp:Panel>

</asp:Content>
