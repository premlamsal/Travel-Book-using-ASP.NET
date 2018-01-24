using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Travel
{
    public class functions
    {
       
        public static string uid;
        public static string cookieUpdater = "notok";
        public static int profile_completed;
        public static DataSet dataset_p;
        public static string var;

        public static bool check_table_presence(string id) {
            
              dataset_p = SqlGetData.GetData("SELECT * FROM profile_details where uid='" + id + "'");
              if (dataset_p.Tables["user_info"].Rows.Count > 0)
              {
                  return true;
              }
              else
              {
                  return false;
              }
          
        }
    
    }


}