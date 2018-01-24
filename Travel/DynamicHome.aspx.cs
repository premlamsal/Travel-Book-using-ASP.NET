using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Travel
{
    public partial class DynamicHome : System.Web.UI.Page
    {
     
        static DataSet dataset;

        string meroid;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["FullName"] == null)
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                meroid = Request.Cookies["userid"].Value;
                Label1.Text = Request.Cookies["FullName"].Value;
            }


            try
            {


                if (functions.check_table_presence(meroid))
                {
                    // Response.Write(meroid); 
                    HyperLink1.Enabled = false;

                    dataset = SqlGetData.GetData("SELECT * FROM profile_details where uid='" + meroid + "'");
                    if (dataset.Tables["user_info"].Rows.Count > 0)
                    {
                        string getimagepath = dataset.Tables["user_info"].Rows[0][13].ToString();
                        //ImageBox.ImageUrl = getimagepath;
                        string bindimage = "~/dp/" + getimagepath;
                        Image1.ImageUrl = bindimage;
                    }

                }
                else
                {
                    HyperLink1.Text = "Complete Your Profile";
                    HyperLink1.NavigateUrl = "completeprofile.aspx";
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }






        }
    }
}