using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.IO;

namespace Travel
{
    public partial class view_profile_pic : System.Web.UI.Page
    {
        DataSet dataset;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int id = 1;
                dataset = SqlGetData.GetData("SELECT * FROM profile_details where uid='" + id + "'");
                if (dataset.IsInitialized)
                {
                    string getimagepath = dataset.Tables["user_info"].Rows[0][13].ToString();
                    //ImageBox.ImageUrl = getimagepath;
                    string bindimage = "~/dp/" + getimagepath;
                    ImageBox.ImageUrl = bindimage;
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
          

           
        
            

           
        }
    }
}