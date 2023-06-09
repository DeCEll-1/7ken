using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7ken.KullaniciPanel.Kategori
{
    public partial class User_Kategori_Items_View : System.Web.UI.Page
    {
        DataModel db = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_Kategori.DataSource = db.KategoriListele();
            lv_Kategori.DataBind();
        }

        protected void lv_Kategori_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

        }
    }
}