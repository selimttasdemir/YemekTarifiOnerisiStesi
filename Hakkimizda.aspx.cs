using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sorgu = "Select * from tbl_Hakkimizda";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            dtlHakkimizda.DataSource = dr;
            dtlHakkimizda.DataBind();
        }
    }
}