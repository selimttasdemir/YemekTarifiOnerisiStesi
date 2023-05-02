using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifiSitesi
{
    public class Baglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection bgl = new SqlConnection(@"Data Source=.\SELIMTASDEMIR;Initial Catalog=dbYemekTarifleri;Integrated Security=True");
            bgl.Open();
            return bgl;
        }
    }
}