using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zust_cs5_project
{
    public partial class login : System.Web.UI.Page
    {
        string cs = "server=localhost; user=root; password=; database='inventory'";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblinfo.Visible=false;
        }
        public void loginCode()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();

            string sql = "select username,password from users where username='" + txtusername.Text + "'and password='" + txtpassword.Text + "'";
            MySqlCommand cmd = new MySqlCommand(sql, conn);

            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["userid"] = txtusername.Text;
                Response.Redirect("Students.aspx");
            }
            else
            {
                lblinfo.Text = "Invalid username or password";
            }
            conn.Close();
            txtusername.Text = "";
            txtpassword.Text = "";


        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            loginCode();
            lblinfo.Visible = true;
        }
    }
}