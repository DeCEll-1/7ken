<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciPanel/KullaniciMasterPage.Master" AutoEventWireup="true"
    CodeBehind="User_Baslik_View.aspx.cs" Inherits="_7ken.KullaniciPanel.Baslik.User_Baslik_View" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <img class="col-12 img-thumbnail" src="https://via.placeholder.com/600x400" alt="600x400">
                </div>
                <div class="col-md-5">
                    <h1>Başlık</h1>
                    <br>
                    <h2>x Tarafından Eklendi</h2>
                </div>
            </div>
            <div class="border-dark  mt-5">
                <div class="row mt-2 " style="">

                    <div class="col-md-3 p-0 float-start" style="">
                        <a href="/7ken/KullaniciPanel/Kullanici/Kullanici_Profil.aspx"
                            class="border-top border-start border-bottom col-6 float-start"
                            style="border-top-left-radius: 50%; border-bottom-left-radius: 50%; border-top-right-radius: 0; border-bottom-right-radius: 0;">

                            <img class="col-12 rounded-circle img-thumbnail" src="https://via.placeholder.com/400x400"
                                alt="600x400">

                            <!-- link button -->

                        </a>
                        <div class="col-6 h-100 float-end border-top border-bottom">
                            <div class="m-2 mt-0 ">
                                Kullanıcı Adı
                                <br>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-9 border">
                        content
                    </div>

                </div>
            </div>
        </div>

    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="MyScripts" runat="server">
    </asp:Content>