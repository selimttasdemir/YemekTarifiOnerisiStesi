using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {

        Baglanti bgl = new Baglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
            string komut = "select * from tbl_Kategoriler";
            SqlCommand cmd = new SqlCommand(komut, bgl.baglanti());
            SqlDataReader oku = cmd.ExecuteReader();
            dataListKategori.DataSource = oku;
            dataListKategori.DataBind();
        }

    }
}