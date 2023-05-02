using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi.Admin
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();

        void mesajListele()
        {
            string sorgu = "Select * from tbl_Mesajlar";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());

            SqlDataReader dr = komut.ExecuteReader();
            dtlMesajlar.DataSource = dr;
            dtlMesajlar.DataBind();
        }

        string MesajID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                MesajID = Request.QueryString["ID"];
            }

            mesajListele();
        }

        protected void btnArti_Click(object sender, EventArgs e)
        {

        }

        protected void btnEksi_Click(object sender, EventArgs e)
        {

        }
    }
}