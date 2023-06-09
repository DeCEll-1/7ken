using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7ken.AdminPanel.Kategori
{
    public partial class Kategori_Duzenle : System.Web.UI.Page
    {
        DataModel db = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["mid"]);
                    tb_name.Text = db.GetKategori(id).KategoriAdi.ToString();
                }
            }
            catch (Exception)
            {
                Response.Redirect("/AdminPanel/Kategori/Kategori_List.aspx");

            }

        }

        protected void lbtn_create_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_name.Text))
            {
                Kategoriler k = new Kategoriler();
                k.ID = Convert.ToInt32(Request.QueryString["mid"]);
                k.KategoriAdi = tb_name.Text;
                k.IsDeleted = false;
                if (db.KategoriGuncelle(k))
                {
                    Response.Redirect("/AdminPanel/Kategori/Kategori_List.aspx");
                }
                else
                {
                    lbl_error.Text = "Bir Hata Oluştu Lütfen Tekrar Deneyiniz";
                }
            }
            else
            {
                lbl_error.Visible = true;
                lbl_error.Text = "Lütfen Geçerli Bir Kategori Adı Giriniz";
            }
        }
    }
}