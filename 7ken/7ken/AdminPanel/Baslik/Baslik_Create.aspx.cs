using DataAccessLayer;
using DataAccessLayer.sql_stuff;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7ken.AdminPanel.Baslik
{
    public partial class Baslik_Create : System.Web.UI.Page
    {

        DataModel db = new DataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddl_Kategori.DataSource = db.KategoriListele(0);
                ddl_Kategori.DataBind();

            }
        }

        protected void lbtn_create_Click(object sender, EventArgs e)
        {

            if (ddl_Kategori.SelectedItem != null)
            {
                Makaleler m = new Makaleler();
                m.Baslik = tb_name.Text;
                m.KategoriID = Convert.ToInt32(ddl_Kategori.SelectedItem.Value);
                m.Ozet = "s";
                m.Tamicerik = tb_Aciklama.Text;
                m.IsDeleted = false;
                m.YuklemeTarihi = DateTime.Now;
                Yoneticiler y = (Yoneticiler)Session["Admin"];
                m.YoneticiID = y.ID;
                m.Okundu = 0;
                m.ThumbnailAdi = "";

                if (fu_Image.HasFile)
                {
                    FileInfo fi = new FileInfo(fu_Image.FileName);
                    string fileName = "";
                    foreach (char item in fi.Name)
                    {
                        if (item != '.')
                        {
                            fileName += item;
                        }
                        else
                        {
                            break;
                        }
                    }
                    fileName += Guid.NewGuid().ToString();
                    fileName += fi.Extension;
                    m.ThumbnailAdi = fileName;
                    fu_Image.PostedFile.SaveAs(Server.MapPath($"/Fotograflar/Baslik"));
                    //fi.CopyTo(Server.MapPath($"/Fotograflar/Baslik/{fileName}"));

                }
                else
                {
                    m.TamResimAdi = "Sad.png";
                }

                if (db.MakaleEkle(m))
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
                lbl_error.Text = "Kategori Girilmelidir";
            }
        }
    }
}