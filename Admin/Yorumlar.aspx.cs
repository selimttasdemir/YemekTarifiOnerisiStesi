using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Admin
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        string id = "", islem = "";
        void yorumListele()
        {
            string sorgu = "Select * from tbl_Yorumlar";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());

            SqlDataReader dr = komut.ExecuteReader();
            dtlYorumlar.DataSource = dr;
            dtlYorumlar.DataBind();
        }
        void OnayliyorumListele()
        {
            string sorgu = "Select * from tbl_Yorumlar where YorumOnay=1";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());

            SqlDataReader dr = komut.ExecuteReader();
            dtlOnayliYorumlar.DataSource = dr;
            dtlOnayliYorumlar.DataBind();
        }
        void OnaysizyorumListele()
        {
            string sorgu = "Select * from tbl_Yorumlar where YorumOnay=0";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());

            SqlDataReader dr = komut.ExecuteReader();
            dtlOnaysizYorumlar.DataSource = dr;
            dtlOnaysizYorumlar.DataBind();
        }
        void yorumIptal()
        {
            string sorgu = "update tbl_Yorumlar set YorumOnay=0 where YorumID=@ID";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());
            komut.Parameters.AddWithValue("@ID", id);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void btnArti_Click(object sender, EventArgs e)
        {
            pnlIcerik.Visible = true;
        }

        protected void btnEksi_Click(object sender, EventArgs e)
        {
            pnlIcerik.Visible = false;
        }

        protected void btnOnaylEksi_Click(object sender, EventArgs e)
        {
            pnl3Icerik.Visible = false;
        }

        protected void btnOnaylArti_Click(object sender, EventArgs e)
        {
            pnl3Icerik.Visible = true;
        }

        protected void btnOnaysiArti_Click(object sender, EventArgs e)
        {
            pnl2Icerik.Visible = true;
        }

        protected void btnOnaysiEksi_Click(object sender, EventArgs e)
        {
            pnl2Icerik.Visible = false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YorumID"];
                islem = Request.QueryString["islem"];
            }

            pnlIcerik.Visible = false;
            pnl2Icerik.Visible = false;
            pnl3Icerik.Visible = false;

            OnaysizyorumListele();
            OnayliyorumListele();

            /*
            
             Silme işlemlerini yaparken kullandığımız &islem=sil  
             komutu ilgili ID ye Ait olan kaydı silmek için yapılır
            "kategori ıd = 2 olanı sec ve onu sil" gibi dusunulebilir

             */
            //Silme işlemleri:

            if (islem == "sil")
            {
                string silSorgusu = "delete from tbl_Yorumlar where YorumID=@ID";
                SqlCommand cmd = new SqlCommand(silSorgusu, bgl.baglanti());
                cmd.Parameters.AddWithValue("@ID", id);
                cmd.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            yorumListele();
        }
    }
}