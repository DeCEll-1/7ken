using DataAccessLayer;
using DataAccessLayer.sql_stuff;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7ken.AdminPanel
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {

        DataModel db = new DataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null)
            {
                Yoneticiler y = (Yoneticiler)Session["Admin"];
                lbl_MasterPageName.Text = $"Hoşgeldiniz {y.YetkiAdi} {y.Adi}";
            }
            else
            {
                Response.Redirect("/AdminPanel/Giris/AdminLogin.aspx");

            }
        }
    }
}