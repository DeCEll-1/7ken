using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7ken.AdminPanel.Kullanici
{
    public partial class Kullanici_List : System.Web.UI.Page
    {
        DataModel db = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_Kullanici.DataSource = db.KullaniciListele();
            lv_Kullanici.DataBind();
        }

        protected void lv_Kullanici_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Kullaniciler kullanici = db.KullaniciGetir(id);
            if (e.CommandName == "Sil")
            {
                bool a = kullanici.IsDeleted;
                if (a)
                {
                    if (db.KullaniciSil(id, false))
                    {
                        Response.Redirect("/AdminPanel/Kullanici/Kullanici_List.aspx");
                    }
                }
                else
                {
                    if (db.KullaniciSil(id, true))
                    {
                        Response.Redirect("/AdminPanel/Kullanici/Kullanici_List.aspx");
                    }
                }
            }
        }
    }
}