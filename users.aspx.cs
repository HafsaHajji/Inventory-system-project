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
    public partial class users : System.Web.UI.Page
    {
        string cs = "server=localhost; user=root; password=; database='zust_inventory_db'";
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
            btnupdate.Visible= false;
            btndelete.Visible= false;
        }
        public void getData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "select * from users";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GDVUsers.DataSource = dt;
            GDVUsers.DataBind();
            conn.Close();
            lblinfo.Visible = false;
        }
        public void insertData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "INSERT INTO users VALUES(null, '" + txtfullname.Text + "', '" + txtusername.Text + "', sha1('" + txtpassword.Text + "'), '" + txtdate.Text + "')";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "WAA LA XAREEYAY XOGTAAN";
            conn.Close();
           lblinfo.Visible=true;
        }
        protected void btnregister_Click(object sender, EventArgs e)
        {
        insertData();
        }

        public void searchData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "SELECT * FROM users where userid='" + txtid.Text + "'";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtfullname.Text = dr[1].ToString();
                txtusername.Text = dr[2].ToString();
                txtpassword.Text = dr[3].ToString();
                txtdate.Text = dr[4].ToString();

            }
            else
            {
                lblinfo.Text = "Data Not Found";
            }
            conn.Close();
            btnregister.Visible = false;
            btnupdate.Visible = true;
            btndelete.Visible = true;
            txtpassword.Text = "SingleLine";
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            searchData();
        }
    }
    }
