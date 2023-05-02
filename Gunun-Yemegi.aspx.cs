using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class Gunun_Yemegi : System.Web.UI.Page
    {

        Baglanti bgl = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cmd = "select * from tbl_Yemekler where YemekDurum = 1";
            SqlCommand komut = new SqlCommand(cmd, bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            dataListGununYemegi.DataSource = oku;
            dataListGununYemegi.DataBind();
        }
    }
}