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
    public partial class index : System.Web.UI.Page
    {
        DataSet ds;
             

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
            TextBox4.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
            TextBox5.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
            TextBox6.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
            TextBox7.Attributes.Add("onkeydown", "return (event.keyCode!=13);");
            string lable1_text = "";
            Label1.Text = lable1_text;
            if (Request.Cookies["userid"] != null)
            {
                functions.uid = Request.Cookies["userid"].Value;
            }
            if (Request.Cookies["FullName"] != null) {
                Response.Redirect("home.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try {
                ds = SqlGetData.GetData("Select *from user_info where UEmail='" + TextBox1.Text + "' and UPassword='" + TextBox2.Text + "'");
               
                if (ds.IsInitialized)
                {
                    String userid=ds.Tables["user_info"].Rows[0][0].ToString();
                    String Lname= ds.Tables["user_info"].Rows[0][1].ToString();
                    String Fname=ds.Tables["user_info"].Rows[0][2].ToString();
                    String UEmail = ds.Tables["user_info"].Rows[0][3].ToString();
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

                    if (functions.check_table_presence(userid)) {
                        functions.profile_completed = 1;
                    }
                   
                    Response.Redirect("home.aspx");
                }
                else {
                    Response.Redirect("index.aspx");
                }
            }
            catch (Exception ex) {
                Console.Write(ex.Message);

            }
            /*
            try
            {
                con = new SqlConnection("server=ANONYMOUS\\SQLEXPRESS;integrated security=true;database=travel");
                con.Open();
                String qry = "Select *from user_info where UEmail='" + TextBox1.Text + "' and UPassword='" + TextBox2.Text + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
            catch (Exception ex) {
                Response.Write(ex.Message);
            }*/

        }

       

        protected void Button2_Click1(object sender, EventArgs e)
        {
            
            string newFirstName = TextBox3.Text;
            string newLastName=TextBox4.Text;
            string newEmail=TextBox5.Text;
            string newPassword = TextBox6.Text;
            
                if (SqlGetData.DataMan("INSERT INTO user_info VALUES('" + newLastName + "','" + newFirstName + "','" + newEmail + "','"+newPassword+"')"))
                {
                    string message = "SignUp process is done. Please login from above to continue.";
                    Label1.Text = message;
                }
                else
                {
                }
            
          
        }
    }
}