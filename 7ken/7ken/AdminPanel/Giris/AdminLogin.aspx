<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs"
    Inherits="_7ken.AdminPanel.Giris.AdminLogin" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title></title>
        <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
        <link href="../../Assets/Css/dashboard.css" rel="stylesheet" />
        <link href="../../Assets/fontawesome/css/all.min.css" rel="stylesheet" />
        <style>
            body {
                background-color: #f5f5f5;
            }
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <div style="margin-top: 5%;" class="text-center ">

                <div class="w-25 ms-auto me-auto">
                    <div class="mb-5">
                        <img src="../../Images/Logo-transparent-big288x108.png" alt="7ken" class="">
                    </div>

                    <div class="card shadow-sm p-3 mb-5 bg-white rounded">

                        <div class="card-header">
                            Admin Girişi
                        </div>

                        <div class="card-body">

                            <div class="input-group">
                                <span class="input-group-text rounded-0">Mail</span>

                                <asp:TextBox ID="tb_Mail" runat="server" CssClass="form-control rounded-0" />


                                <div id="error_Mail"
                                    class="alert alert-danger rounded-0 p-1 pe-auto align-items-center fade show w-100">
                                    <strong>Mailde @ ve .com bulunmalıdır</strong>
                                </div>
                            </div>

                            <div class="input-group mt-4">
                                <span class="input-group-text rounded-0">Şifre</span>

                                <asp:TextBox type="password" ID="tb_Sifre" runat="server" CssClass="form-control" />

                                <button type="button" id="btn_SifreEye" class="btn btn-secondary">
                                    <i class='fa-solid fa-eye-slash'></i>
                                </button>


                                <div id="error_Sifre"
                                    class="alert alert-danger rounded-0 p-1 pe-auto align-items-center fade show w-100">
                                    <strong>Şifre Yanlış</strong>
                                </div>
                            </div>

                            <div class="mt-2">
                                <!-- Şifremi unuttun forgor -->
                            </div>


                            <div class="mt-3">
                                <asp:LinkButton OnClick="btn_Giris_Click" ID="btn_Giris" runat="server" CssClass="btn btn-primary w-100">Giriş</asp:LinkButton>
                            </div>




                        </div>

                    </div>

                </div>

            </div>
        </form>

        <script src="../../Scripts/bootstrap.bundle.min.js"></script>
        <script src="../../Scripts/bootstrap.min.js"></script>
        <script src="../../Assets/Scripts/dashboard.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.4.js"
            integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
        <%--<script src="../Scripts/jquery-3.6.4.js"></script>--%>

            <!-- from https://stackoverflow.com/questions/55219718/how-to-detect-number-of-special-characters-in-jquery -->
            <script>

                $(document).ready(function () {
                    $("#error_Mail").hide();

                    $("#tb_Mail").on("input focus", function (e) {
                        if (!(this.value.includes("@")) || !(this.value.includes(".com"))) {
                            $("#error_Mail").show(500);
                            $("#error_Mail").empty();
                            $("#error_Mail").append("Mail @ ve .com içermelidir");
                            $("#btn_Giris").addClass("disabled");
                        } else {
                            $("#error_Mail").hide(500);
                            $("#btn_Giris").removeClass("disabled");
                        }
                    });

                    $("#error_Sifre").hide();
                    $("#tb_Sifre").on("input focus", function (e) {
                        if (this.value == "") {
                            $("#error_Sifre").show(500);
                            $("#error_Sifre").empty();
                            $("#error_Sifre").append("Şifre girilmelidir");
                            $("#btn_Giris").addClass("disabled");
                        } else if (this.value.length < 8) {
                            $("#error_Sifre").show(500);
                            $("#error_Sifre").empty();
                            $("#error_Sifre").append("Şifre en az 8 karakter olabilir");
                            $("#btn_Giris").addClass("disabled");
                        } else {
                            $("#error_Sifre").hide(500);
                            $("#btn_Giris").removeClass("disabled");
                        }
                    });

                    var a = true;

                    $("#btn_SifreEye").click(function () {
                        $("#btn_SifreEye").empty();
                        if (a) {
                            $("#btn_SifreEye").append("<i class='fa-solid fa-eye'></i>");
                            a = false;

                            $("#tb_Sifre").attr("type", "textbox")
                        } else {
                            $("#btn_SifreEye").append("<i class='fa-solid fa-eye-slash'></i>");
                            a = true;

                            $("#tb_Sifre").attr("type", "password")
                        }
                    })

                });

            </script>


    </body>

    </html>