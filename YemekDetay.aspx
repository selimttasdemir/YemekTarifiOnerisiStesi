<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSitesi.YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 431px;
        }

        .auto-style6 {
            font-size: small;
        }

        .auto-style7 {
            font-size: medium;
        }

        .auto-style8 {
            font-size: large;
        }

        .auto-style9 {
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:Label ID="lblBaslik" runat="server" Style="font-weight: 700; font-size: xx-large" Text=""></asp:Label>
    <br />
    <br />
    <strong>Malzemeler :</strong>
    <asp:Label ID="lblMalzeme" runat="server" Style="font-size: medium;" Text="" />
    <br />
    <br />
    <strong>Yapılışı :</strong>
    <asp:Label ID="lblTarif" runat="server" Style="font-size: medium;" Text="" />
    <br />
    <br />

    <div style="">

        <table class="w-100">
            <tr>
                <td class="text-center" colspan="2"><strong><em>Yorum Yapabilirsiniz</em></strong></td>
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
                <td class="auto-style9"><strong>Yorumunuz :</strong></td>
                <td>
                    <asp:TextBox ID="txtYorum" runat="server" Height="120px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    <asp:Button ID="btnYorumYap" runat="server" Height="40px" OnClick="btnYorumYap_Click" Text="Yorum Yap" Width="120px" />
                </td>
            </tr>
        </table>

    </div>

    <div style="background-color: #4cff00">
        <asp:DataList ID="dtlstYorum" runat="server" Width="544px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5"><strong>
                            <asp:Label ID="lblYorumAdSoyad" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style2"><strong>
                            <asp:Label ID="lblYorumTarih" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </strong></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblYorumDetay" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>

</asp:Content>
