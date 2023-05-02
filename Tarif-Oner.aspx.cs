using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Tarif_Oner : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriList();
        }

        void temizle()
        {
            txtMail.Text = "";
            txtMalzemeler.Text = "";
            txtName.Text = "";
            txtTarif.Text = "";
            txtTarifAdi.Text = "";
            fileUpload = null;
            txtTarifAdi.Focus();
        }

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

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            string cmd = "insert into tbl_YemekOneri (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@Ad,@Malzeme,@Yapilis,@Resim,@Sahip,@Mail)";

            try
            {
                if (txtTarifAdi.Text == "" || txtTarif.Text == "" || txtMalzemeler.Text == "" || txtMail.Text == "" || txtName.Text == "" || fileUpload.FileName == null)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ögeler Boş Geçilemez.')", true);
                }

                else
                {
                    SqlCommand komut = new SqlCommand(cmd, bgl.baglanti());
                    komut.Parameters.AddWithValue("@Ad", txtTarifAdi.Text);
                    komut.Parameters.AddWithValue("@Malzeme", txtMalzemeler.Text);
                    komut.Parameters.AddWithValue("@Yapilis", txtTarif.Text);
                    komut.Parameters.AddWithValue("@Resim", fileUpload.FileName);
                    komut.Parameters.AddWithValue("@Sahip", txtName.Text);
                    komut.Parameters.AddWithValue("@Mail", txtMail.Text);
                    komut.ExecuteNonQuery();
                    bgl.baglanti().Close();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Kayıt Tamamlandı.')", true);
                    temizle();
                }
            }
            catch (Exception)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bağlantı Hatası.')", true);
            }

        }
    }
}