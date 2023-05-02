using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        string kategordiID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategordiID = Request.QueryString["KategoriID"];
            string sorgu = "Select * from tbl_Yemekler where KategoriID=@p1";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());

            SqlParameter unitsParam = komut.Parameters.AddWithValue("@p1", kategordiID);
            if (kategordiID == null)
            {
                unitsParam.Value = DBNull.Value;
            }

            SqlDataReader dr = komut.ExecuteReader();
            dtlYemekler.DataSource = dr;
            dtlYemekler.DataBind();
        }
    }
}