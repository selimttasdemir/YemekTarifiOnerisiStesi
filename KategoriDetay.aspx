<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifiSitesi.KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div>
        <asp:DataList ID="dtlYemekler" runat="server" Width="550px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>

                            <a href="YemekDetay.aspx?YemekID=<%# Eval("YemekID") %>">
                                <asp:Label ID="lblAdi" runat="server" Style="font-weight: 700; text-align: center; font-size: x-large" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                            </a>

                        </td>
                    </tr>
                    <tr>
                        <td><strong>Malzemeler :</strong>
                            <asp:Label ID="lblMalzeme" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Yemek Tarifi :</strong>
                            <asp:Label ID="lblTarif" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Eklenme Tarihi :
                                            <asp:Label ID="lblTarih" runat="server" Style="color: #999999" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            &nbsp;- <span class="auto-style3"><strong><em>Puan</em></strong></span> <strong>:</strong>
                            <asp:Label ID="lblPuan" runat="server" Style="font-weight: 700" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: groove; border-bottom-width: thick">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
