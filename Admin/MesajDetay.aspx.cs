using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Admin
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Baglanti bgl = new Baglanti();
            string MesajID = "";
            MesajID = Request.QueryString["ID"];

            string sorgu = "Select AdSoyad,Mail,Baslik,Mesaj from tbl_Mesajlar where ID = @ID";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());

            SqlParameter unitsParam = komut.Parameters.AddWithValue("@ID", MesajID);
            if (MesajID == null)
            {
                unitsParam.Value = DBNull.Value;
            }

            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtAd.Text = dr[0].ToString();
                txtMail.Text = dr[1].ToString();
                txtKonu.Text = dr[2].ToString();
                txtMesaj.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
        }
    }
}