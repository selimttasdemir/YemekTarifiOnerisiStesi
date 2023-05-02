using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Admin
{
    public partial class Yemekler : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        string islem = "", id = "";

        void kategoriList()
        {
            string sorgu = "Select * from tbl_Kategoriler";
            SqlCommand command = new SqlCommand(sorgu, bgl.baglanti());
            SqlDataReader dr = command.ExecuteReader();

            ddlKategoriler.DataTextField = "KategoriAd";
            ddlKategoriler.DataValueField = "KategoriID";
            ddlKategoriler.DataSource = dr;
            ddlKategoriler.DataBind();
        }

        void yemekList()
        {
            string sorgu = "Select * from tbl_Yemekler";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());

            SqlDataReader dr = komut.ExecuteReader();
            dtlKategori.DataSource = dr;
            dtlKategori.DataBind();
        }

        void temizle()
        {
            txtMalzemeler.Text = "";
            txtYapilis.Text = "";
            txtYemekAd.Text = "";
            txtYemekAd.Focus();
        }

        void kategoriArttir()
        {
            string sorgu = "update tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriID=@ID";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());
            komut.Parameters.AddWithValue("@ID", ddlKategoriler.SelectedValue);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekList();

            if (Page.IsPostBack == false)
            {
                kategoriList();
                islem = Request.QueryString["islem"];
                id = Request.QueryString["YemekID"];
            }


            /*
            
             Silme işlemlerini yaparken kullandığımız &islem=sil  
             komutu ilgili ID ye Ait olan kaydı silmek için yapılır
            "kategori ıd = 2 olanı sec ve onu sil" gibi dusunulebilir

             */
            //Silme işlemleri:

            if (islem == "sil")
            {
                string silSorgusu = "delete from tbl_Yemekler where YemekID=@ID";
                SqlCommand cmd = new SqlCommand(silSorgusu, bgl.baglanti());
                cmd.Parameters.AddWithValue("@ID", id);
                cmd.ExecuteNonQuery();
                bgl.baglanti().Close();

                //kategoriAzalt();
            }

            yemekList();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            // yemek Ekleme

            string sorgu = "insert into tbl_Yemekler(YemekAdi, YemekMalzeme, YemekTarifi, KategoriID) values(@p1, @p2, @p3, @p4)";
            SqlCommand cmd = new SqlCommand(sorgu, bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            cmd.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            cmd.Parameters.AddWithValue("@p3", txtYapilis.Text);
            cmd.Parameters.AddWithValue("@p4", ddlKategoriler.SelectedValue);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();

            temizle();

            kategoriArttir();

        }

        protected void btnArti_Click(object sender, EventArgs e)
        {
            pnlIcerik.Visible = true;
        }

        protected void btnEksi_Click(object sender, EventArgs e)
        {
            pnlIcerik.Visible = false;
        }

        protected void btn_Arti_Click(object sender, EventArgs e)
        {
            pnlKatgoriEkleme.Visible = true;
        }

        protected void btn_Eksi_Click(object sender, EventArgs e)
        {
            pnlKatgoriEkleme.Visible = false;
        }
    }
}