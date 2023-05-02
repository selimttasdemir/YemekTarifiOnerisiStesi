﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSitesi.Admin.Yorumlar" %>

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
                <td class="auto-style10"><strong>YORUMLAR</strong></td>
                <td>
                    <asp:Button ID="btnEksi" runat="server" Height="30px" Text="-" Width="30px" OnClick="btnEksi_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnlIcerik" runat="server" CssClass="auto-style6">
        <asp:DataList ID="dtlYorumlar" runat="server" Width="550px">
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="YorumDetay.aspx?YorumID=<%# Eval("YorumID") %>">
                                <asp:Image ID="imgUpdate" runat="server" Height="30px" Width="30px" ImageUrl="~/img/Update_208px.png" />
                            </a>
                        </td>
                        <td class="auto-style8">
                            <a href="Yorumlar.aspx?YorumID=<%# Eval("YorumID") %>&islem=sil">
                                <asp:Image ID="imgDelete" runat="server" Height="30px" Width="30px" ImageUrl="~/img/delete_96px.png" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
        <table class="w-100">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnOnaysiArti" runat="server" Height="30px" Text="+" Width="30px" OnClick="btnOnaysiArti_Click" />
                </td>
                <td class="auto-style10"><strong>ONAYLANMAMIŞ YORUMLAR</strong></td>
                <td>
                    <asp:Button ID="btnOnaysiEksi" runat="server" Height="30px" Text="-" Width="30px" OnClick="btnOnaysiEksi_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnl2Icerik" runat="server" CssClass="auto-style6">
        <asp:DataList ID="dtlOnaysizYorumlar" runat="server" Width="550px">
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        </td>
                        <%--<td class="auto-style8">
                            <a href="KategoriDetay_Admin.aspx?KategoriID=<%# Eval("KategoriID") %>">
                                <asp:Image ID="imgUpdate" runat="server" Height="30px" Width="30px" ImageUrl="~/img/Update_208px.png" />
                            </a>
                        </td>--%>
                        <%--<td class="auto-style8">
                            <a href="Yorumlar.aspx?YorumID=<%# Eval("YorumID") %>&islem=sil">
                                <asp:Image ID="imgDelete" runat="server" Height="30px" Width="30px" ImageUrl="~/img/delete_96px.png" />
                            </a>
                        </td>--%>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style6">
        <table class="w-100">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnOnaylArti" runat="server" Height="30px" Text="+" Width="30px" OnClick="btnOnaylEksi_Click" />
                </td>
                <td class="auto-style10"><strong>ONAYLANMIŞ YORUMLAR</strong></td>
                <td>
                    <asp:Button ID="btnOnaylEksi" runat="server" Height="30px" Text="-" Width="30px" OnClick="btnOnaylArti_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnl3Icerik" runat="server" CssClass="auto-style6">
        <asp:DataList ID="dtlOnayliYorumlar" runat="server" Width="550px">
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        </td>
                        <%--<td class="auto-style8">
                            <a href="KategoriDetay_Admin.aspx?KategoriID=<%# Eval("KategoriID") %>">
                                <asp:Image ID="imgUpdate" runat="server" Height="30px" Width="30px" ImageUrl="~/img/Update_208px.png" />
                            </a>
                        </td>--%>
                        <%--<td class="auto-style8">
                            <a href="Yorumlar.aspx?YorumID=<%# Eval("YorumID") %>&islem=sil">
                                <asp:Image ID="imgDelete" runat="server" Height="30px" Width="30px" ImageUrl="~/img/delete_96px.png" />
                            </a>
                        </td>--%>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
