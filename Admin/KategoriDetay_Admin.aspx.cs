using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Admin
{
    public partial class KategoriDetay_Admin : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        string KategoriId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            KategoriId = Request.QueryString["KategoriID"];

            if (Page.IsPostBack == false) // Sayfayı Yeniden Yukleme demek 
            {
                SqlCommand komut = new SqlCommand("Select * from tbl_kategoriler where KategoriID=@p1", bgl.baglanti());
                SqlParameter unitsParam = komut.Parameters.AddWithValue("@p1", KategoriId);
                if (KategoriId == null)
                {
                    unitsParam.Value = DBNull.Value;
                }
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txtAd.Text = dr[1].ToString();
                    txtAdet.Text = dr[2].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string sorgu = "Update tbl_Kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where KategoriID=@p3";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtAd.Text);
            komut.Parameters.AddWithValue("@p2", txtAdet.Text);
            komut.Parameters.AddWithValue("@p3", KategoriId);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}