using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        string yemekId = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            yemekId = Request.QueryString["YemekID"]; // Sorguladığımız değeri - ? sembolunden sonraki değer oluyor bu - değişkene aktarıp burda diğer sayfadan taşımak istediğmiz değğerleri çağırmak için kullanıyoruz

            string cmd = "select YemekAdi,YemekMalzeme,YemekTarifi from tbl_Yemekler where YemekID=@P1";
            SqlCommand komut = new SqlCommand(cmd, bgl.baglanti());

            SqlParameter unitsParam = komut.Parameters.AddWithValue("@P1", yemekId);
            if (yemekId == null)
            {
                unitsParam.Value = DBNull.Value;
            }

            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                lblBaslik.Text = dr[0].ToString();
                lblMalzeme.Text = dr[1].ToString();
                lblTarif.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();

            // Yorumları Listeleme
            try
            {
                string cmd2 = "select YorumAdSoyad, YorumTarih, YorumIcerik from tbl_Yorumlar where YorumYemekID=@Id";
                SqlCommand komut2 = new SqlCommand(cmd2, bgl.baglanti());
                komut2.Parameters.AddWithValue("@Id", yemekId);
                SqlDataReader dr2 = komut2.ExecuteReader();
                dtlstYorum.DataSource = dr2;
                dtlstYorum.DataBind();
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bağlantı Hatası. Lütfen 60 Saniye sonra tekrar deneyiniz..')", true);
            }

        }

        protected void btnYorumYap_Click(object sender, EventArgs e)
        {
            string sorgu = "insert into tbl_Yorumlar (YorumAdSoyad,YorumMail,YorumIcerik,YorumYemekID) values (@Ad,@Mail,@Icerik,@ID)";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());
            komut.Parameters.AddWithValue("@Ad", txtAd.Text);
            komut.Parameters.AddWithValue("@Mail", txtMail.Text);
            komut.Parameters.AddWithValue("@Icerik", txtYorum.Text);
            komut.Parameters.AddWithValue("@ID", yemekId);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}