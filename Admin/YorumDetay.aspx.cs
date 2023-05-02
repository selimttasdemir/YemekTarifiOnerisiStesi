using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Admin
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        string id = "";
        Baglanti bgl = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];

            string sorgu = "Select YorumAdSoyad,YorumMail,YorumIcerik,YemekAdi from tbl_Yorumlar inner join tbl_Yemekler on tbl_Yorumlar.YorumYemekID=tbl_Yemekler.YemekID where YorumID=@ID";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());
            komut.Parameters.AddWithValue("@ID", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtAd.Text = dr[0].ToString();
                txtMail.Text = dr[1].ToString();
                txtYemek.Text = dr[3].ToString();
                txtYorum.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();
        }

        void yorumOnayla()
        {
            string sorgu = "update tbl_Yorumlar set YorumOnay=1 where YorumID=@ID";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());
            komut.Parameters.AddWithValue("@ID", id);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void btnOnay_Click(object sender, EventArgs e)
        {
            yorumOnayla();
            Response.Redirect("/Admin/Yorumlar.aspx");
        }
    }
}