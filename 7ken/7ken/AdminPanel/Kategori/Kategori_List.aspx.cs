using DataAccessLayer;
using DataAccessLayer.sql_stuff;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7ken.AdminPanel.Kategori
{
    public partial class Kategori_List : System.Web.UI.Page
    {
        DataModel db = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_Kategori.DataSource = db.KategoriListele();
            lv_Kategori.DataBind();
        }

        protected void lv_Kategori_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Kategoriler kategori = db.GetKategori(id);
            if (e.CommandName == "Sil")
            {
                bool a = kategori.IsDeleted;
                if (a)
                {
                    if (db.KategoriSilGuncelle(0, id))
                    {
                        Response.Redirect("/AdminPanel/Kategori/Kategori_List.aspx");
                    }
                }
                else
                {
                    if (db.KategoriSilGuncelle(1, id))
                    {
                        Response.Redirect("/AdminPanel/Kategori/Kategori_List.aspx");
                    }
                }
            }
            else if (e.CommandName == "Duzenle")
            {
                Response.Redirect("/AdminPanel/Kategori/Kategori_Duzenle.aspx/?mid=" + id);
            }
        }
    }
}