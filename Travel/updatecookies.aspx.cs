using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Travel
{
    public partial class updatecookies : System.Web.UI.Page
    {
        DataSet ds1;
        protected void Page_Load(object sender, EventArgs e)
        {
         
           
                try
                {
                    if (functions.cookieUpdater == "ok")
                    {
                        string uid2 = functions.uid;

                        ds1 = SqlGetData.GetData("Select *from user_info where uid='" + uid2 + "'");

                        if (ds1.IsInitialized)
                        {
                            String userid = ds1.Tables["user_info"].Rows[0][0].ToString();
                            String Lname = ds1.Tables["user_info"].Rows[0][1].ToString();
                            String Fname = ds1.Tables["user_info"].Rows[0][2].ToString();
                            String UEmail = ds1.Tables["user_info"].Rows[0][3].ToString();
                            String space = " ";
                            String FullName = Fname + space + Lname;
                            Response.Cookies["userid"].Value = userid;
                            Response.Cookies["userid"].Expires = DateTime.Now.AddDays(1);
                            Response.Cookies["FullName"].Value = FullName;
                            Response.Cookies["FullName"].Expires = DateTime.Now.AddDays(1);
                            Response.Cookies["UEmail"].Value = UEmail;
                            Response.Cookies["UEmail"].Expires = DateTime.Now.AddDays(1);
                            Response.Cookies["setCookies"].Value = "ok";
                            Response.Cookies["setCookies"].Expires = DateTime.Now.AddDays(1);
                            Response.Redirect("home.aspx");
                            functions.cookieUpdater = "notok";
                        }
                        else
                        {

                        }
                    }
                    else {
                        Response.Redirect("logout.aspx");
                    }
                }
                catch (Exception ex)
                {
                    Console.Write(ex.Message);

                }

            


        }
    }
}