using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using YemekTarifiSitesi.Admin;

namespace YemekTarifiSitesi
{

    public class VeriListelemeleri
    {
        Baglanti bgl = new Baglanti();
        public void kategoriList()
        {

            //string sorgu = "Select * from tbl_Kategoriler";
            //SqlCommand command = new SqlCommand(sorgu, bgl.baglanti());
            //SqlDataReader dr = command.ExecuteReader();

            //ddlKategoriler.DataTextField = "KategoriAd";
            //ddlKategoriler.DataValueField = "KategoriID";
            //ddlKategoriler.DataSource = dr;
            //ddlKategoriler.DataBind();
        }

    }
}