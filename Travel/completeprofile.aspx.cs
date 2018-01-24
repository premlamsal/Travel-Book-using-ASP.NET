using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel
{
    public partial class completeprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String idget=Request.Cookies["userid"].Value;

            if(SqlGetData.DataMan("INSERT into profile_details VALUES('" + idget + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','10','Basic','dp_dummy.jpg','cover_dummy.jpg')"))
            {
                Response.Redirect("home.aspx");
            }
        }
    }
}