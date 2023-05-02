using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Iletisim : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMesajGonder_Click(object sender, EventArgs e)
        {
            string sorgu = "insert into tbl_Mesajlar (AdSoyad,Mail,Baslik,Mesaj) values (@Ad,@Mail,@Baslik,@Mesaj)";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());
            komut.Parameters.AddWithValue("@Ad", txtAd.Text);
            komut.Parameters.AddWithValue("@Mail", txtMail.Text);
            komut.Parameters.AddWithValue("@Baslik", txtKonu.Text);
            komut.Parameters.AddWithValue("@Mesaj", txtMesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Mesajınız başarıyla gönderildi.')", true);
        }
    }
}