using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Admin
{
    public partial class OneriDetay : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        string TarifID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            TarifID = Request.QueryString["TarifID"];

            if (Page.IsPostBack == false) // Sayfayı Yeniden Yukleme demek 
            {
                SqlCommand komut = new SqlCommand("Select * from tbl_YemekOneri where TarifID=@p1", bgl.baglanti());
                SqlParameter unitsParam = komut.Parameters.AddWithValue("@p1", TarifID);
                if (TarifID == null)
                {
                    unitsParam.Value = DBNull.Value;
                }
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txtTarifAdi.Text = dr[2].ToString();
                    txtMalzemeler.Text = dr[3].ToString();
                    txtTarif.Text = dr[4].ToString();
                    txtMail.Text = dr[7].ToString();
                    txtName.Text = dr[6].ToString();
                    YemekResim.ImageUrl = dr[5].ToString();
                }
                bgl.baglanti().Close();

                kategoriList();

            }
        }

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
        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            string sorgu, sorgu2;
            sorgu = "Update tbl_YemekOneri set Durum = 1 where TarifID = @ID";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());
            komut.Parameters.AddWithValue("@ID", TarifID);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            sorgu2 = "insert into tbl_Yemekler(YemekAdi, YemekMalzeme, YemekTarifi, KategoriID) values(@p1, @p2, @p3, @p4)";
            SqlCommand komut2 = new SqlCommand(sorgu2, bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", txtTarifAdi.Text);
            komut2.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", txtTarif.Text);
            komut2.Parameters.AddWithValue("@p4", ddlKategori.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}