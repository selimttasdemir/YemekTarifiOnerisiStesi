using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class index : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cmd = "select * from tbl_Yemekler";
            SqlCommand komut = new SqlCommand(cmd, bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            dtlYemekler.DataSource = dr;
            dtlYemekler.DataBind();
        }
    }
}