using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zust_cs5_project
{
    public partial class test : System.Web.UI.Page
    {
        string cs = "server = localhost; user=root; password=; database=cs5_hospital";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnregister_Click(object sender, EventArgs e)
        {
            InsertData();
        }
        public void InsertData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();

            string query = "INSERT INTO users VALUES(null, '" + txtempid.Text + "', '" + txtuname.Text + "', '" + txtpassword.Text + "', '" + txtdate.Text + "')";

            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "Inserted Success";
            conn.Close();
        }
    }
}