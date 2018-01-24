using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Travel
{
    public class SqlGetData
    {
        static SqlConnection con;
        static SqlDataAdapter adapt;
        static DataSet ds;


        public static SqlConnection GetConnection()
        {

            con = new SqlConnection("server=ANONYMOUS\\SQLEXPRESS;integrated security=true;database=travel");
            return con;
        }

        public static DataSet GetData(string query)
        {
            adapt = new SqlDataAdapter(query, GetConnection());
            ds = new DataSet();
            adapt.Fill(ds, "user_info");
            return ds;
        }

        public static bool DataMan(string query)
        {
            SqlCommand cmd = new SqlCommand(query, GetConnection());
            con.Open();
            int rowAffected = cmd.ExecuteNonQuery();
            con.Close();
            if (rowAffected > 0)
            {
                return true;
            }
            else
            {
                return true;
            }


        }

    }
}