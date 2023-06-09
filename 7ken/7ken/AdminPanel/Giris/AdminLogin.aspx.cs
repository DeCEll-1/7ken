using DataAccessLayer;
using DataAccessLayer.sql_stuff;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7ken.AdminPanel.Giris
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        DataModel db = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Giris_Click(object sender, EventArgs e)
        {
            if (db.NullVeBoslukKontrol(tb_Sifre.Text) && db.NullVeBoslukKontrol(tb_Mail.Text))
            {
                if (db.ValidEposta(tb_Mail.Text))
                {
                    Yoneticiler y = db.GirisYap(tb_Mail.Text, tb_Sifre.Text);
                    if (y != null)
                    {
                        Session["Admin"] = y;
                        Response.Redirect("/AdminPanel/Kategori/Kategori_List.aspx");
                    }
                }
            }
        }
    }
}