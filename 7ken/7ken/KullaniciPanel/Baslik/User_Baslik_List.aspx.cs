using DataAccessLayer;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData.ModelProviders;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7ken.KullaniciPanel.Baslik
{
    public partial class User_Baslik_List : System.Web.UI.Page
    {
        DataModel db = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lv_Makale.DataSource = db.MakaleListele(Convert.ToInt32(Request.QueryString["mid"]));
                lv_Makale.DataBind();
            }
            catch (Exception)
            {
                Response.Redirect("/KullaniciPanel/Kategori/User_Kategori_Items_View.aspx");
            }
        }

        protected void lv_Makale_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

        }
    }
}