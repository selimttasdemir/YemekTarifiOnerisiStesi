    <%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiSitesi.Admin.Mesajlar" %>

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
                <td class="auto-style10"><strong>MESAJLAR</strong></td>
                <td>
                    <asp:Button ID="btnEksi" runat="server" Height="30px" Text="-" Width="30px" OnClick="btnEksi_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="pnlIcerik" runat="server" CssClass="auto-style6">
        <asp:DataList ID="dtlMesajlar" runat="server" Width="550px">
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="lblMesaj" runat="server" Text='<%# Eval("Baslik") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="MesajDetay.aspx?MesajID=<%# Eval("ID") %>">
                                <asp:Image ID="imgRead" runat="server" Height="30px" Width="30px" ImageUrl="~/img/message.png" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
