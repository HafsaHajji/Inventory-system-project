using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace zust_cs5_project
{
    public partial class users1 : System.Web.UI.Page
    {
        string cs = "server=localhost; user=root; password=; database='zust_inventory_db'";
        protected void Page_Load(object sender, EventArgs e)
        {
           getData();
            btndelete.Visible = false;
            btnupdate.Visible = false;
        }
        public void getData(){
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
        }

        public void insertData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "INSERT INTO users VALUES(null, '"+txtfname.Text+"', '"+txtuname.Text+"', sha1('"+txtpasword.Text+"'), '"+txtdate.Text+"')";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "WAA LA XAREEYAY XOGTAAN";
            conn.Close();
            clearData();
            getData();
        }
        public void clearData()
        {
            txtdate.Text = "";
            txtfname.Text = "";
            txtpasword.Text = "";
            txtuname.Text = "";
        }
        protected void btnregister_Click(object sender, EventArgs e)
        {
            insertData();
        }
        public void updateData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "UPDATE users SET fullname='" + txtfname.Text + "', username='" + txtuname.Text + "', password='" + txtpasword.Text + "', regdate='" + txtdate.Text + "' where userid='"+txtid.Text+"'";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "WAA LA UPDATE GAREEYAY";
            conn.Close();
            clearData();

        }
        protected void btnupdate_Click(object sender, EventArgs e)
        {
            updateData();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "DELETE FROM users where userid='"+txtid.Text+"'";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "WAA LA TIRAY";
            conn.Close();
            clearData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "SELECT * FROM users where userid='" + txtid.Text + "'";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtfname.Text = dr[1].ToString();
                txtuname.Text = dr[2].ToString();
                txtpasword.Text = dr[3].ToString();
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
            txtpasword.Text = "SingleLine";
        }
    }
}