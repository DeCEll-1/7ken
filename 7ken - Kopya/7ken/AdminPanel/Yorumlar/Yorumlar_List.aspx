<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.Master" AutoEventWireup="true"
    CodeBehind="Yorumlar_List.aspx.cs" Inherits="_7ken.AdminPanel.Yorumlar.Yorumlar_List" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th class="col-lg-1 col-sm-1">Yorum ID</th>
                    <th class="col-lg-2 col-sm-2">Atılan Başlığın IDsi</th>
                    <th class="col-lg-2 col-sm-2">Atılan Başlığın Adı</th>
                    <th class="col-lg-2 col-sm-2">Yorumu Atan</th>
                    <th class="col-lg-2 col-sm-2">Yorumun İçeriği</th>
                    <th class="col-lg-2 col-sm-2">Seçenekler</th>
                </tr>
                <tr>
                    <td class="text-center align-middle">1</td>
                    <td class="text-center align-middle">2</td>
                    <td class="text-center align-middle">starsector</td>
                    <td class="text-center align-middle">Ahmet</td>
                    <td class="text-center align-middle">amogus</td>
                    <td class="w-100 btn-group">

                        <button class="btn btn-primary btn-sm"><i class="fa-solid fa-eye"></i> Görüntüle</button>

                        <button class="btn btn-danger btn-sm"><i class="fa-solid fa-trash"></i> Sil</button>

                    </td>
                </tr>
            </thead>
        </table>

    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="MyScripts" runat="server">
    </asp:Content>