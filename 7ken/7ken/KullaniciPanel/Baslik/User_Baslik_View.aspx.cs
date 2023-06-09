using DataAccessLayer;
using DataAccessLayer.sql_stuff;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7ken.KullaniciPanel.Baslik
{
    public partial class User_Baslik_View : System.Web.UI.Page
    {
        DataModel db = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (db.GetMakale(Convert.ToInt32(Request.QueryString["mid"])) == null)
                {
                    Response.Redirect("/KullaniciPanel/Kategori/User_Kategori_Items_View.aspx");
                    return;
                }
                Makaleler m = db.GetMakale(Convert.ToInt32(Request.QueryString["mid"]));
                lbl_Baslik.Text = m.Baslik; lbl_Aciklama.Text = m.Ozet; img_Baslik.ImageUrl = "/Fotograflar/Baslik/" + m.TamResimAdi;
                try
                {
                    lv_User_Baslik_View_Yorumlar.DataSource = db.YorumListele(0, db.GetMakale(Convert.ToInt32(Request.QueryString["mid"])).ID);
                    lv_User_Baslik_View_Yorumlar.DataBind();
                }
                catch (Exception)
                {
                    return;
                }
            }
            catch (Exception)
            {
                Response.Redirect("/KullaniciPanel/Kategori/User_Kategori_Items_View.aspx");

            }
        }

    }
}