using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Admin
{
    public partial class Oneriler : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        string islem = "", TarifID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                TarifID = Request.QueryString["TarifID"];
                islem = Request.QueryString["islem"];
            }

            /*
            
             Silme işlemlerini yaparken kullandığımız &islem=sil  
             komutu ilgili ID ye Ait olan kaydı silmek için yapılır
            "kategori ıd = 2 olanı sec ve onu sil" gibi dusunulebilir

             */
            //Silme işlemleri:

            if (islem == "sil")
            {
                string silSorgusu = "delete from tbl_YemekOneri where TarifID=@ID";
                SqlCommand cmd = new SqlCommand(silSorgusu, bgl.baglanti());
                cmd.Parameters.AddWithValue("@ID", TarifID);
                cmd.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

            listele();
        }

        protected void btnArti_Click(object sender, EventArgs e)
        {
            pnlIcerik.Visible = true;
        }

        protected void btnEksi_Click(object sender, EventArgs e)
        {
            pnlIcerik.Visible = false;
        }
        void listele()
        {

            string sorgu = "Select * from tbl_YemekOneri";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());

            SqlDataReader dr = komut.ExecuteReader();
            dtlKategori.DataSource = dr;
            dtlKategori.DataBind();
        }
    }
}