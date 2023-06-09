﻿<%@ Page Title="" Language="C#" MasterPageFile="~/KullaniciPanel/KullaniciMasterPage.Master" AutoEventWireup="true"
    CodeBehind="User_Baslik_List.aspx.cs" Inherits="_7ken.KullaniciPanel.Baslik.User_Baslik_List" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <style>
            .clickable-row:hover {
                cursor: pointer;
            }
        </style>


    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container mt-4">

            <asp:ListView runat="server" ID="lv_Makale" OnItemCommand="lv_Makale_ItemCommand">
                <layouttemplate>
                    <table class="table table-bordered table-hover">

                        <tr>
                            <th class="col-lg-2 col-sm-2">Başlık</th>
                            <th class="col-lg-2 col-sm-2">Başlığın Kategorisi</th>
                            <th class="col-lg-1 col-sm-1">Başlık Resmi</th>
                        <asp:PlaceHolder runat="server" ID="ItemPlaceHolder" />
                    </tr>

                    </table>
                </layouttemplate>


            <itemtemplate>
                <tr class="clickable-row" data-href='/KullaniciPanel/Baslik/User_Baslik_View.aspx/?mid=<%#Eval("ID") %>'>

                    <td class="text-center align-middle">
                        <%#Eval("ID") %>
                    </td>
                    <td class="text-center align-middle">
                        <%#Eval("KategoriAdi") %>
                    </td>
                    <td class="text-center align-middle">
                        <img class="img_ResimResize" style="height:60px" src="https://via.placeholder.com/600x400"
                            alt="600x400">
                    </td>

                </tr>



            </itemtemplate>
            
        </asp:ListView>

        </div>
    </asp:Content>

    <asp:Content ID="Content3" ContentPlaceHolderID="MyScripts" runat="server">

        <script>

            $(document).ready(function () {


                $(".clickable-row").click(function () {
                    window.location = $(this).data("href");
                });



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