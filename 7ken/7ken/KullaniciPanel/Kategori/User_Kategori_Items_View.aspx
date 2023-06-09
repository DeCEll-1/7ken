<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciPanel/KullaniciMasterPage.Master" AutoEventWireup="true"
    CodeBehind="User_Kategori_Items_View.aspx.cs" Inherits="_7ken.KullaniciPanel.Kategori.User_Kategori_Items_View" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
            .clickable-row:hover {
                cursor: pointer;
            }
        </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:ListView runat="server" ID="lv_Kategori" OnItemCommand="lv_Kategori_ItemCommand">


            <layouttemplate>

                <table class="table table-bordered table-hover">
                    <tr>
                        <th class="col-lg-1 col-sm-1">ID</th>
                        <th class="col-lg-2 col-sm-2">Kategori Adı</th>
                        <asp:PlaceHolder runat="server" ID="ItemPlaceHolder" />
                    </tr>
                </table>

            </layouttemplate>


            <itemtemplate>
                <tr class="clickable-row"
                    data-href='/KullaniciPanel/Baslik/User_Baslik_List.aspx/?mid=<%#Eval("ID") %>'>

                    <td class="text-center align-middle">
                        <%#Eval("ID") %>
                    </td>

                    <td class="text-center align-middle">
                        <%#Eval("KategoriAdi") %>
                    </td>
                </tr>

            </itemtemplate>

        </asp:ListView>
    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="MyScripts" runat="server">
        <script>

            $(document).ready(function () {
                $(".clickable-row").click(function () {
                    window.location = $(this).data("href");
                });
            });
        </script>
    </asp:Content>