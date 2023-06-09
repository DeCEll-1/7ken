using DataAccessLayer;
using DataAccessLayer.sql_stuff;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7ken.AdminPanel.Baslik
{
    public partial class Baslik_Duzenle : System.Web.UI.Page
    {
        DataModel db = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["mid"]);
                    tb_name.Text = db.GetMakale(id).Baslik.ToString();
                    tb_Aciklama.Text = db.GetMakale(id).Ozet.ToString();
                    ddl_Kategori.DataSource = db.KategoriListele(0);
                    ddl_Kategori.DataBind();
                }
            }
            catch (Exception)
            {
                Response.Redirect("/AdminPanel/Baslik/Baslik_List.aspx");
            }
        }

        protected void lbtn_create_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_name.Text))
            {
                Makaleler m = new Makaleler();

                m = db.GetMakale(Convert.ToInt32(Request.QueryString["mid"]));
                m.Ozet = tb_Aciklama.Text;
                m.Baslik = tb_name.Text;
                if (db.MakaleGuncelle(m))
                {
                    Response.Redirect("/AdminPanel/Baslik/Baslik_List.aspx");
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