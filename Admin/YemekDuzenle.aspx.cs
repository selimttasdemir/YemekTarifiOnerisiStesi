using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Admin
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        string yemekID = "";

        void kategoriList()
        {
            string sorgu = "Select * from tbl_Kategoriler";
            SqlCommand command = new SqlCommand(sorgu, bgl.baglanti());
            SqlDataReader dr = command.ExecuteReader();

            ddlKategori.DataTextField = "KategoriAd";
            ddlKategori.DataValueField = "KategoriID";
            ddlKategori.DataSource = dr;
            ddlKategori.DataBind();
        }
        void temizle()
        {
            txtMalzemeler.Text = "";
            txtTarif.Text = "";
            txtAd.Text = "";
            txtAd.Focus();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekID = Request.QueryString["YemekID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from tbl_Yemekler where YemekID=@p1", bgl.baglanti());
                SqlParameter unitsParam = komut.Parameters.AddWithValue("@p1", yemekID);
                if (yemekID == null)
                {
                    unitsParam.Value = DBNull.Value;
                }
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txtAd.Text = dr[1].ToString();
                    txtMalzemeler.Text = dr[2].ToString();
                    txtTarif.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();

                kategoriList();
            }

        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string sorgu = "Update tbl_Yemekler set YemekAdi=@p1,YemekMalzeme=@p2,YemekTarifi=@p3,KategoriID=@P4 where YemekID=@p0";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtAd.Text);
            komut.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", txtTarif.Text);
            komut.Parameters.AddWithValue("@p4", ddlKategori.SelectedValue);
            komut.Parameters.AddWithValue("@p0", yemekID);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            temizle();
        }

        protected void btnGununYemegi_Click(object sender, EventArgs e)
        {

            //Yemeklerin durumunu false yaptık ve günün yemeği değiştirme işlemi başladı
            SqlCommand komut = new SqlCommand("Update tbl_Yemekler set YemekDurum = 0",bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            // Günün yemeği için id ' ye göre durumu true yaparak günün yemeğini seçelim

            SqlCommand komut2 = new SqlCommand("Update tbl_Yemekler set YemekDurum = 1 where YemekID = @ID", bgl.baglanti());
            komut2.Parameters.AddWithValue("@ID", yemekID);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}