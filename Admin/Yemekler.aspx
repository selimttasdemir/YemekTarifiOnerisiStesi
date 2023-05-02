<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSitesi.Admin.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .auto-style6 {
            font-weight: bold;
        }

        .auto-style7 {
            width: 420px;
        }

        .auto-style8 {
            width: 65px;
        }

        .auto-style12 {
            width: 30px;
        }

        .auto-style13 {
            text-align: center;
            width: 490px;
        }

        .auto-style15 {
            width: 161px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:Panel ID="pnl1" runat="server" CssClass="auto-style6">
        <table class="w-100">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="btnArti" runat="server" Height="30px" Text="+" Width="30px" OnClick="btnArti_Click" />
                </td>
                <td class="auto-style13"><span class="auto-style6">YEMEK LİSTESİ</span></td>
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
                            <asp:Label ID="lbl" runat="server" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="YemekDuzenle.aspx?YemekID=<%# Eval("YemekID") %>">
                                <asp:Image ID="imgUpdate" runat="server" Height="30px" Width="30px" ImageUrl="~/img/Update_208px.png" />
                            </a>
                        </td>
                        <td class="auto-style8">
                            <a href="Yemekler.aspx?YemekID=<%# Eval("YemekID") %>&islem=sil">
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
                <td class="auto-style12">
                    <asp:Button ID="btn_Arti" runat="server" Height="30px" Text="+" Width="30px" OnClick="btn_Arti_Click" />
                </td>
                <td class="auto-style13"><strong>YEMEK EKLEME</strong></td>
                <td>
                    <asp:Button ID="btn_Eksi" runat="server" Height="30px" Text="-" Width="30px" OnClick="btn_Eksi_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnlKatgoriEkleme" runat="server" CssClass="auto-style6">
        <table class="w-100">
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Yemek Adı : </td>
                <td>
                    <asp:TextBox ID="txtYemekAd" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Malzemeler : </td>
                <td>
                    <asp:TextBox ID="txtMalzemeler" runat="server" Width="200px" Height="70px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Yapılış : </td>
                <td>
                    <asp:TextBox ID="txtYapilis" runat="server" Width="200px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Kategori : </td>
                <td>
                    <asp:DropDownList ID="ddlKategoriler" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Yemeğin Fotoğrafı :</td>
                <td>&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td>
                    <asp:Button ID="btnEkle" runat="server" Height="30px" OnClick="btnEkle_Click" Text="Ekle" Width="120px" />
                </td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
