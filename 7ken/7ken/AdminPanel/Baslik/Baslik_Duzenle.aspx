<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Baslik_Duzenle.aspx.cs" Inherits="_7ken.AdminPanel.Baslik.Baslik_Duzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card mt-3">

            <div class="card-header bg-gradient">
                <h4 class="card-title w-50 float-start">Başlık Ekle</h4>
                <asp:Label runat="server" class="form-label float-end text-danger" Text="Boş Kutu Bırakmayınız"
                    id="lbl_error"></asp:Label>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="mb-3 mt-3">
                            <label class="form-label">Başlık İsmi</label>
                            <asp:TextBox ID="tb_name" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8 float-start">
                        <div class="mb-3 mt-3">
                            <label class="form-label">Resim Seçiniz</label>
                            <asp:FileUpload ID="fu_Image" runat="server" CssClass="form-control"></asp:FileUpload>
                        </div>
                    </div>
                </div>

                <div class="row">

                    <div class="col-lg-2 col-md-2 float-start">
                        <div class="mb-3 mt-3">
                            <label class="form-label" for="img_image">Resim</label>
                            <img id="img_image" class="img-thumbnail" src="https://via.placeholder.com/600x400"
                                alt="600x400">
                        </div>
                    </div>

                    <div class="col-lg-10 col-md-10 float-end">
                        <div class="mb-3 mt-3 col-lg-12 col-md-12">
                            <label class="form-label" for="ddl_Kategori">Kategori</label>
                            <asp:DropDownList ID="ddl_Kategori" runat="server" DataTextField="KategoriAdi"
                                DataValueField="ID" CssClass="form-control"></asp:DropDownList>
                        </div>

                        <div class="mb-3 mt-3 col-lg-12 col-md-12">
                            <label class="form-label" for="tb_Aciklama">Açıklama</label>
                            <asp:TextBox TextMode="MultiLine" ID="tb_Aciklama" runat="server" DataTextField="Aciklama"
                                DataValueField="ID" CssClass="form-control"></asp:TextBox>
                        </div>


                    </div>

                    <div class="card-footer">

                        <asp:LinkButton ID="lbtn_create" runat="server" CssClass="btn btn-success float-end disabled"
                            OnClick="lbtn_create_Click">Başlığı Düzenle
                        </asp:LinkButton>

                        <a href="#" class=" btn float-end btn-secondary me-4">Başlık Listesine Git</a>

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
                    if (this.value == "" || $("#ContentPlaceHolder1_tb_Aciklama").val() == "") {
                        $("#ContentPlaceHolder1_lbl_error").show(500);
                        // $("#ContentPlaceHolder1_lbl_error").attr("Text","Asssssssss");
                        $("#ContentPlaceHolder1_lbtn_create").removeClass("enabled");
                        $("#ContentPlaceHolder1_lbtn_create").addClass("disabled");
                    } else {
                        $("#ContentPlaceHolder1_lbl_error").hide(500);
                        $("#ContentPlaceHolder1_lbtn_create").addClass("enabled");
                        $("#ContentPlaceHolder1_lbtn_create").removeClass("disabled");
                    }
                });
                $("#ContentPlaceHolder1_tb_Aciklama").on("input focus", function (e) {
                    if (this.value == "" || $("#ContentPlaceHolder1_tb_name").val() == "") {
                        $("#ContentPlaceHolder1_lbl_error").show(500);
                        // $("#ContentPlaceHolder1_lbl_error").attr("Text","Asssssssss");
                        $("#ContentPlaceHolder1_lbtn_create").removeClass("enabled");
                        $("#ContentPlaceHolder1_lbtn_create").addClass("disabled");
                    } else {
                        $("#ContentPlaceHolder1_lbl_error").hide(500);
                        $("#ContentPlaceHolder1_lbtn_create").addClass("enabled");
                        $("#ContentPlaceHolder1_lbtn_create").removeClass("disabled");
                    }
                });
            });
        </script>
</asp:Content>
