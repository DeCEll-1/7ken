<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.Master" AutoEventWireup="true"
    CodeBehind="Kategori_List.aspx.cs" Inherits="_7ken.AdminPanel.Kategori.Kategori_List" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th class="col-lg-1 col-sm-1">ID</th>
                    <th class="col-lg-2 col-sm-2">Kategori Adı</th>
                    <th class="col-lg-2 col-sm-2">Kategoriyi Ekleyen</th>
                    <th class="col-lg-1 col-sm-1">Kategori Resmi</th>
                    <th class="col-lg-2 col-sm-2">Seçenekler</th>
                </tr>
            </thead>
            <tr>
                    <td class="text-center align-middle">1</td>
                    <td class="text-center align-middle">Oyunlar</td>
                    <td class="text-center align-middle">s</td>
                    <td class="text-center align-middle"><img class="img_ResimResize" style="height:60px"
                            src="https://via.placeholder.com/600x400" alt="600x400"></td>
                    <td class="text-center align-middle">

                            <button class="btn btn-primary btn"><i class="fa-solid fa-eye"></i> Görüntüle</button>

                            <button class="btn btn-warning btn"><i class="fa-solid fa-pen-to-square"></i>
                                Düzenle</button>

                            <button class="btn btn-danger btn"><i class="fa-solid fa-trash"></i> Sil</button>

                    </td>
                </tr>
        </table>

    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="MyScripts" runat="server">
        <script>

            $(document).ready(function () {
                var a = true;
                $(".img_ResimResize").click(function (e) {
                    if (a) {
                        $(this).css({
                            "height": "fit-content",
                            "position": "absolute",
                            "margin-left": "-600px",
                        })
                        a = false;
                    } else {
                        $(this).css({
                            "height": "60px",
                            "position": "static",
                            "margin-left": "0",
                        })
                        a = true;
                    }
                });
            })


        </script>
    </asp:Content>