<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.Master" AutoEventWireup="true"
    CodeBehind="Kullanici_List.aspx.cs" Inherits="_7ken.AdminPanel.Kullanici.Kullanici_List" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ListView runat="server" ID="lv_Kullanici" OnItemCommand="lv_Kullanici_ItemCommand">

            <LayoutTemplate>


                <table class="table table-bordered table-hover">
                    <tr>
                        <th class="col-lg-1 col-sm-1">ID</th>
                        <th class="col-lg-2 col-sm-2">Kullanıcı Adı</th>
                        <th class="col-lg-1 col-sm-1">Kullanıcı Resmi</th>
                    <th class="col-lg-2 col-sm-2">Silinmiş mi</th>
                    <th class="col-lg-2 col-sm-2">Seçenekler</th>
                    <asp:PlaceHolder runat="server" ID="ItemPlaceHolder" />
                </tr>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td class="text-center align-middle">
                        <%#Eval("ID") %>
                    </td>
                    <td class="text-center align-middle">
                        <%#Eval("KullaniciAdi") %>
                    </td>
                    <td class="text-center align-middle">
                        <img class="img_ResimResize" style="height:60px" src="https://via.placeholder.com/600x400"
                            alt="600x400">
                    </td>
                    <td class="text-center align-middle">
                        <%#(bool)Eval("IsDeleted")==false ? "Aktif" :"Kapalı"%>
                    </td>

                    <td class="text-center align-middle">

                        <a href="/7ken/KullaniciPanel/" id="lbtn_View" class="btn btn-primary btn"><i
                                class="fa-solid fa-eye"></i>Görüntüle</a>

                        <%#(bool)Eval("IsDeleted")==false ? "" : "" %>


                            <asp:LinkButton ID='lbtn_SilAktiflestir' CssClass='btn' CommandArgument='<%# Eval("ID") %>'
                                CommandName='Sil' runat='server'>

                                <%#(bool)Eval("IsDeleted")==false ? "<i class='fa-solid fa-x'></i> Sil"
                                    : "<i class='fa-solid fa-check'></i> Yayınla" %>

                            </asp:LinkButton>

                    </td>
                </tr>
            </ItemTemplate>

        </asp:ListView>

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
                $(".fa-check").parent().addClass("btn-success")
                $(".fa-x").parent().addClass("btn-danger")
            })

        </script>
    </asp:Content>