using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
namespace Travel
{
    public partial class home : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                string p_actor_username = Request.Cookies["FullName"].Value;
                string dateTime = System.DateTime.Now.ToString();
              
                        if (FileUpload1.HasFile)
                        {
                            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/post_img/") + fileName);
                            string bindfilename = fileName;


                                    if (SqlGetData.DataMan("INSERT INTO POST (post_caption,post_actor,post_photo,post_date,post_actor_name)VALUES('" + TextBox1.Text + "','" + meroid + "','" + bindfilename + "','" + dateTime + "','"+p_actor_username+"') "))
                                    {
                                        Response.Redirect("home.aspx");
                                    }
                        }
                

            }

            

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }
    }
}