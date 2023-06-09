<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.Master" AutoEventWireup="true"
    CodeBehind="Baslik_List.aspx.cs" Inherits="_7ken.AdminPanel.Baslik.Baslik_List" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ListView runat="server" ID="lv_Baslik" OnItemCommand="lv_Baslik_ItemCommand">

        <LayoutTemplate>
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th class="col-lg-1 col-sm-1">ID</th>
                        <th class="col-lg-2 col-sm-2">Başlık</th>
                        <th class="col-lg-1 col-sm-1">Başlık Resmi</th>
                        <th class="col-lg-1 col-sm-1">Başlık Resmi</th>
                    <th class="col-lg-2 col-sm-2">Silinmiş mi</th>
                    <th class="col-lg-2 col-sm-2">Seçenekler</th>
                    <asp:PlaceHolder runat="server" ID="ItemPlaceHolder" />
                </tr>
                </thead>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td class="text-center align-middle">
                    <%#Eval("ID") %>
                </td>
                <td class="text-center align-middle">
                    <%#Eval("Baslik") %>
                </td>
                <td class="text-center align-middle">
                    <img style="height:60px" class="img_ResimResize" src='/Fotograflar/Baslik/<%# Eval("TamResimAdi") %>' alt='<%# Eval("TamResimAdi") %>'>
                </td>
                <td class="text-center align-middle">
                    <%#Eval("Ozet") %>
                </td>
                <td class="text-center align-middle">
                    <%#(bool)Eval("IsDeleted")==false ? "Aktif" :"Kapalı"%>
                </td>
                <td class="text-center align-middle">

                    <a href="/7ken/KullaniciPanel/" id="lbtn_View" class="btn btn-primary btn"><i
                            class="fa-solid fa-eye"></i>Görüntüle</a>

                    <asp:LinkButton ID="lbtn_Duzenle" CssClass="btn btn-warning" CommandArgument='<%# Eval("ID") %>'
                        CommandName="Duzenle" runat="server">
                        <i class="fa-solid fa-pen-to-square"></i>
                        Düzenle
                    </asp:LinkButton>

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