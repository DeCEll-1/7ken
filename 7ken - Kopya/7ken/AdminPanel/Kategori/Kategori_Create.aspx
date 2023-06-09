<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMasterPage.Master" AutoEventWireup="true"
    CodeBehind="Kategori_Create.aspx.cs" Inherits="_7ken.AdminPanel.Kategori.Kategori_Create" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="card mt-3">

            <div class="card-header bg-gradient">
                <h4 class="card-title">Ürün Ekle</h4>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="mb-3 mt-3">
                            <label class="form-label">Kategori İsmi</label>
                            <asp:TextBox ID="lbl_name" runat="server" CssClass="form-control"></asp:TextBox>
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

                    <div class="card-footer">

                        <asp:LinkButton ID="lbtn_create" runat="server" CssClass="btn btn-success float-end"
                            OnClick="lbtn_create_Click">Ürün Ekle
                        </asp:LinkButton>

                        <a href="#" class=" btn float-end btn-secondary me-4">Ürünler Listesine Git</a>

                    </div>

                </div>
            </div>
        </div>

    </asp:Content>


    <asp:Content ID="Content3" ContentPlaceHolderID="MyScripts" runat="server">

        <script src="../../Assets/Scripts/ImagePreview.js"></script>
    </asp:Content>