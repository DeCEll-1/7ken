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
    public partial class Baslik_List : System.Web.UI.Page
    {
        DataModel db = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_Baslik.DataSource = db.MakaleListele();
            lv_Baslik.DataBind();
        }

        protected void lv_Baslik_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Makaleler m = db.GetMakale(id);
            if (e.CommandName == "Sil")
            {
                bool a = m.IsDeleted;
                if (a)
                {
                    if (db.MakaleSilGuncelle(false, id))
                    {
                        Response.Redirect("/AdminPanel/Baslik/Baslik_List.aspx");
                    }
                }
                else
                {
                    if (db.MakaleSilGuncelle(true, id))
                    {
                        Response.Redirect("/AdminPanel/Baslik/Baslik_List.aspx");
                    }
                }
            }
            else if (e.CommandName == "Duzenle")
            {
                Response.Redirect("/AdminPanel/Baslik/Baslik_Duzenle.aspx/?mid=" + id);
            }
        }
    }
}