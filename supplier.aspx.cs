using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zust_cs5_project
{
    public partial class supplier : System.Web.UI.Page
    {
        string cs = "server=localhost; user=root; password=; database='zust_inventory_db'";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void insertData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "INSERT INTO supplier VALUES(null, '" + txtsname.Text + "', '" + txtlocation.Text + "', '" + txtdate.Text + "')";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "WAA LA XAREEYAY XOGTAAN";
            conn.Close();
            lblinfo.Visible = true;
        }
        protected void btnregister_Click(object sender, EventArgs e)
        {
            insertData();
        }
    }
}