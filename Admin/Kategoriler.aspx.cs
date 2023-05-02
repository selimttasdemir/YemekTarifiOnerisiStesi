using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Admin
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();

        string islem = "", id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
                if (Page.IsPostBack == false)
                {
                    id = Request.QueryString["KategoriID"];
                    islem = Request.QueryString["islem"];
                }


            string sorgu = "Select * from tbl_Kategoriler";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());

            SqlDataReader dr = komut.ExecuteReader();
            dtlKategori.DataSource = dr;
            dtlKategori.DataBind();



            /*
            
             Silme işlemlerini yaparken kullandığımız &islem=sil  
             komutu ilgili ID ye Ait olan kaydı silmek için yapılır
            "kategori ıd = 2 olanı sec ve onu sil" gibi dusunulebilir

             */
            //Silme işlemleri:

            if (islem == "sil")
            {
                string silSorgusu = "delete from tbl_Kategoriler where KategoriID=@ID";
                SqlCommand cmd = new SqlCommand(silSorgusu, bgl.baglanti());
                cmd.Parameters.AddWithValue("@ID", id);
                cmd.ExecuteNonQuery();
                bgl.baglanti().Close();
            }


            pnlIcerik.Visible = false;
            pnlKatgoriEkleme.Visible = false;

        }

        protected void btnArti_Click(object sender, EventArgs e)
        {
            pnlIcerik.Visible = true;
        }

        protected void btnEksi_Click(object sender, EventArgs e)
        {
            pnlIcerik.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            string sorgu = "insert into Tbl_Kategoriler(KategoriAd) values(@p1)";
            SqlCommand cmd = new SqlCommand(sorgu, bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", txtK_adi.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            txtK_adi.Text = "";
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