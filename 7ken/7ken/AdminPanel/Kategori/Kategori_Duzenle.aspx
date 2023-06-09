<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.Master" AutoEventWireup="true"
    CodeBehind="Kategori_Duzenle.aspx.cs" Inherits="_7ken.AdminPanel.Kategori.Kategori_Duzenle" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="card mt-3">

            <div class="card-header bg-gradient">
                <h4 class="card-title float-start">Kategori Ekle</h4>
                <asp:Label runat="server" class="form-label float-end text-danger" Text="Kategori Adı Zorunludur"
                    id="lbl_error"></asp:Label>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="mb-3 mt-3">
                            <label class="form-label">Kategori İsmi</label>
                            <asp:TextBox ID="tb_name" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">

                    <div class="card-footer">

                        <asp:LinkButton ID="lbtn_create" runat="server" CssClass="btn btn-success float-end"
                            OnClick="lbtn_create_Click1">Kategoriyi Düzenle
                        </asp:LinkButton>

                        <a href="/AdminPanel/Kategori/Kategori_List.aspx"
                            class=" btn float-end btn-secondary me-4">Ürünler Listesine Git</a>

                    </div>

                </div>
            </div>
        </div>
    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="MyScripts" runat="server">
        <script src="../../Assets/Scripts/ImagePreview.js"></script>
        <script>
            $(document).ready(function () {
                $("#ContentPlaceHolder1_lbl_error").hide();
                $("#ContentPlaceHolder1_tb_name").on("input focus", function (e) {
                    if (this.value == "") {
                        $("#ContentPlaceHolder1_lbl_error").show(500);
                        // $("#ContentPlaceHolder1_lbl_error").attr("Text","Asssssssss");
                        $("#ContentPlaceHolder1_lbtn_create").addClass("disabled");
                    } else {
                        $("#ContentPlaceHolder1_lbl_error").hide(500);
                        $("#ContentPlaceHolder1_lbtn_create").removeClass("disabled");
                    }
                });
            });
        </script>
    </asp:Content>